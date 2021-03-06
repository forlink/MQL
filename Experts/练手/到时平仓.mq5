//+------------------------------------------------------------------+
//|                                                         到时平仓.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link "https://www.mql5.com"
#property version "1.00"
//--- input parameters
input int 小时 = 0;
input int 分钟 = 0;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <Trade\PositionInfo.mqh>
#include <Trade\Trade.mqh>

CPositionInfo m_position;
CTrade m_trade;

int 滑点 = 10;

int OnInit()
{

  //---
  m_trade.SetDeviationInPoints(滑点);
  //---
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
  MqlDateTime dt_struct;
  TimeCurrent(dt_struct);
  Print("当前时: d%:", dt_struct.hour, " 当前分:", dt_struct.min);
  if (dt_struct.hour == 小时 && dt_struct.min == 分钟)
  {
    for (int i = PositionsTotal() - 1; i >= 0; i--)
    {
      if (m_position.SelectByIndex(i))
      {
        m_trade.PositionClose(m_position.Ticket());
      }
    }
  }
}
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
{
  //---
}
//+------------------------------------------------------------------+
