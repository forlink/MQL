//+------------------------------------------------------------------+
//|                                                    MA交易v0.01.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link "https://www.mql5.com"
#property version "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <Trade\Trade.mqh>

// ima方法返回的句柄
int handle1;
int handle2;
int handle3;

input int 短均线周期 = 30;
input int 中均线周期 = 50;
input int 长均线周期 = 100;
input double 成交手数 = 0.01;
input int 止盈点 = 600;
input int 止损点 = 300;

int ma_shift = 0;

int 魔术号 = 123456;

bool 是否零售帐号 = false;

CTrade Trade;

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
{
   //---
   //ENUM_ACCOUNT_MARGIN_MODE::ACCOUNT_MARGIN_MODE_RETAIL_HEDGING
   是否零售帐号 = ((ENUM_ACCOUNT_MARGIN_MODE)AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_HEDGING);

   Trade.SetExpertMagicNumber(魔术号);
   Trade.SetMarginMode();
   Trade.SetTypeFillingBySymbol(Symbol());

   handle1 = iMA(Symbol(), _Period, 短均线周期, ma_shift, MODE_SMA, PRICE_CLOSE);
   handle2 = iMA(Symbol(), _Period, 中均线周期, ma_shift, MODE_SMA, PRICE_CLOSE);
   handle3 = iMA(Symbol(), _Period, 长均线周期, ma_shift, MODE_SMA, PRICE_CLOSE);

   //判断是否开启智能交易
   if (!TerminalInfoInteger(TERMINAL_TRADE_ALLOWED) && !(Bars(_Symbol, _Period) > 100))
   {
      printf("未开启智能交易,或者柱图个数不足");
      return (INIT_FAILED);
   }

   if (handle1 == INVALID_HANDLE || handle2 == INVALID_HANDLE || handle3 == INVALID_HANDLE)
   {
      printf("创建MA指标失败");
      return (INIT_FAILED);
   }
   //---
   // TODO 转移到到onTick
   //if(是否零售帐号)
   //{
   //判断开仓条件
   //CheckForOpen();
   //}
   return (INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{
   //---
}
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
{
   //---
   if (是否零售帐号)
   {
      //判断开仓条件
      CheckForOpen();
   }
}
//+------------------------------------------------------------------+

void CheckForOpen()
{
   // 短周期数值>中等周期>长周期开多单
   double 短均线数据[2];
   double 中均线数据[2];
   double 长均线数据[2];

   ENUM_ORDER_TYPE 订单类型 = WRONG_VALUE;

   if (CopyBuffer(handle1, 0, 0, 2, 短均线数据) != -1 && CopyBuffer(handle2, 0, 0, 2, 中均线数据) != -1 && CopyBuffer(handle3, 0, 0, 2, 长均线数据) != -1)
   {
      if (短均线数据[0] > 中均线数据[0] && 中均线数据[0] > 长均线数据[0])
      {
         订单类型 = ORDER_TYPE_BUY;
      }
      else
      {

         if (短均线数据[0] < 中均线数据[0] && 中均线数据[0] < 长均线数据[0])
         {
            订单类型 = ORDER_TYPE_SELL;
         }
      }
   }
   // TODO 调试用
   //订单类型 = ORDER_TYPE_SELL;
   if (订单类型 != WRONG_VALUE)
   {
      if (订单类型 == ORDER_TYPE_BUY)
      {
         //获取所有订单
         PositionSelect(_Symbol);
         //查询之前有没有开过多单
         bool opend = false;
         for (int i = 0; i < PositionsTotal(); i++)
         {
            ulong ticket = PositionGetTicket(i);
            if (ticket != 0 && PositionGetString(POSITION_COMMENT) == "开多单啦" && PositionGetInteger(POSITION_MAGIC) == 魔术号)
            {
               opend = true;
               break;
            }
         }
         if (!opend)
         {
            double 开盘价 = NormalizeDouble(SymbolInfoDouble(_Symbol, SYMBOL_BID), (int)SymbolInfoInteger(_Symbol, SYMBOL_DIGITS));

            // double 止盈价 = NormalizeDouble(开盘价 + _Point*止盈点,(int)SymbolInfoInteger(_Symbol,SYMBOL_DIGITS));
            // double 止损价 = NormalizeDouble(开盘价 - _Point*止损点,(int)SymbolInfoInteger(_Symbol,SYMBOL_DIGITS));

            // double 止盈价 = NormalizeDouble(开盘价 + _Point*止盈点,_Digits);
            // double 止损价 = NormalizeDouble(开盘价 - _Point*止损点,_Digits);

            double 止盈价 = 开盘价 + SymbolInfoDouble(_Symbol, SYMBOL_POINT) * 止盈点;
            double 止损价 = 开盘价 - SymbolInfoDouble(_Symbol, SYMBOL_POINT) * 止损点;
            Trade.PositionOpen(_Symbol, 订单类型, 成交手数, 开盘价, 止损价, 止盈价, "开多单啦");
         }
      }
      if (订单类型 == ORDER_TYPE_SELL)
      {
         //如果之前有开空单
         PositionSelect(_Symbol);
         bool opend = false;
         for (int i = 0; i < PositionsTotal(); i++)
         {
            ulong ticket = PositionGetTicket(i);
            if (ticket != 0 && PositionGetString(POSITION_COMMENT) == "开空单啦" && PositionGetInteger(POSITION_MAGIC) == 魔术号)
            {
               opend = true;
               break;
            }
         }
         if (!opend)
         {
            double 开盘价 = NormalizeDouble(SymbolInfoDouble(_Symbol, SYMBOL_ASK), (int)SymbolInfoInteger(_Symbol, SYMBOL_DIGITS));

            // double 止盈价 = NormalizeDouble(开盘价 - SymbolInfoDouble(_Symbol,SYMBOL_POINT)*止盈点,(int)SymbolInfoInteger(_Symbol,SYMBOL_DIGITS));
            // double 止损价 = NormalizeDouble(开盘价 + SymbolInfoDouble(_Symbol,SYMBOL_POINT)*止损点,(int)SymbolInfoInteger(_Symbol,SYMBOL_DIGITS));

            // double 止盈价 = NormalizeDouble(开盘价 - SymbolInfoDouble(_Symbol,SYMBOL_POINT)*止盈点,_Digits);
            // double 止损价 = NormalizeDouble(开盘价 + SymbolInfoDouble(_Symbol,SYMBOL_POINT)*止损点,_Digits);

            double 止盈价 = 开盘价 - SymbolInfoDouble(_Symbol, SYMBOL_POINT) * 止盈点;
            double 止损价 = 开盘价 + SymbolInfoDouble(_Symbol, SYMBOL_POINT) * 止损点;

            Trade.PositionOpen(_Symbol, 订单类型, 成交手数, 开盘价, 止损价, 止盈价, "开空单啦");
         }
      }
   }
}
