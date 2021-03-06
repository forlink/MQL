//+------------------------------------------------------------------+
//|                                                03 画自定义macd05.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property indicator_separate_window
#property indicator_buffers 2
#property indicator_plots   1
//--- plot Label1
#property indicator_label1  "Label1"
#property indicator_type1   DRAW_COLOR_HISTOGRAM
#property indicator_color1  clrRed,clrBlue,C'0,0,0',clrBlue,C'0,0,0',C'0,0,0',C'0,0,0',C'0,0,0'
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1
//--- indicator buffers
double         Label1Buffer[];
double         Label1Colors[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int handle;
int fast_ema = 12;
int slow_ema = 26;
int macd_sma = 9;
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(0,Label1Buffer,INDICATOR_DATA);
   SetIndexBuffer(1,Label1Colors,INDICATOR_COLOR_INDEX);
//获取句柄
   handle=iMACD(_Symbol,PERIOD_CURRENT,fast_ema,slow_ema,macd_sma,PRICE_CLOSE);
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
   double macd[];
   double signal[];

   CopyBuffer(handle,0,0,rates_total,macd);
   CopyBuffer(handle,1,0,rates_total,signal);

   int limit;
   if(prev_calculated==0)
     {
      limit=0;
     }
   else
     {
      limit=prev_calculated-1;
     }
   for(int i=limit;i<rates_total;i++)
     {

      Label1Buffer[i]=macd[i]-signal[i];
      if(i>1)
        {
         if(Label1Buffer[i]>Label1Buffer[i-1])
           {
            Label1Colors[i]=0;
           }
         else
           {
            Label1Colors[i]=1;
           }
        }
      //Label3Colors[i] = 1;
     }
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
