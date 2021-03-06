//+------------------------------------------------------------------+
//|                                                       02base.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
// 枚举语法 枚举其实是个int类型
enum KAI_DAN_FANG_XIANG
  {
   多,
   空,
   多空
  };
KAI_DAN_FANG_XIANG 开单方向=空;
// 默认显示第一个枚举 也可以指定
input ENUM_TIMEFRAMES 时间周期;
input ENUM_CHART_EVENT 图表事件类型 = CHARTEVENT_CLICK; //点击
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   printf(1);
   
   开单方向 = 多空;
   
   printf(开单方向);
   
   //定义后立即使用
   enum 颜色 {red=10,yellow=20,white,green,black} c1,c2;
   // red already defined
   //enum 亮度 {red = 1, light = 10} ld;
   c1 = red;
   c2 = yellow;
   //ld = red;
   
   printf(c1);
   printf(c2);
   //printf(ld);
   
   // 系统定义的枚举
   ENUM_TIMEFRAMES 时间周期 = PERIOD_CURRENT;
   printf(时间周期);
//---
   return(INIT_SUCCEEDED);
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

  }
//+------------------------------------------------------------------+
