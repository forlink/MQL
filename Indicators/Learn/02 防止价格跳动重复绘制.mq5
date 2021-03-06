//+------------------------------------------------------------------+
//|                                                    04 防止价格跳动.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

#property indicator_separate_window
#property indicator_buffers 1
#property indicator_plots   1
//--- plot Label1
#property indicator_label1  "Label1"
#property indicator_type1   DRAW_LINE
#property indicator_style1  STYLE_SOLID

//--- plot Label2
#property indicator_label2  "Label2"
#property indicator_type2   DRAW_LINE
#property indicator_style2  STYLE_SOLID

//--- indicator buffers
double         Label1Buffer[];
double         Label2Buffer[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(0,Label1Buffer,INDICATOR_DATA);
   SetIndexBuffer(1,Label1Buffer,INDICATOR_DATA);
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   int limit;
   if(prev_calculated==0)
     {
      limit=0;
     }
   else
     {
      limit=prev_calculated-1;
     }
//--- calculate MACD
   printf("limit=%d",limit);
   printf("rights_total=%d",rates_total);
   for(int i=limit;i<rates_total;i++)
     {
      Label1Buffer[i]=i+1;
      Label1Buffer[i]=i+1000;
     }
   int a = ArraySize(Label1Buffer);
   return(rates_total);
  }
//+------------------------------------------------------------------+
