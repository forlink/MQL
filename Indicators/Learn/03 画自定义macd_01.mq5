//+------------------------------------------------------------------+
//|                                                        03 排错.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property indicator_separate_window
#property indicator_buffers 3
#property indicator_plots   3
//--- plot Label1
#property indicator_label1  "Label1"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrDarkGray
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1
//--- plot Label2
#property indicator_label2  "Label2"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrMediumBlue
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1
//--- plot Label3
#property indicator_label3  "Label3"
#property indicator_type3   DRAW_HISTOGRAM
#property indicator_color3  clrSlateBlue,clrHotPink,C'0,0,0',C'0,0,0',C'0,0,0',C'0,0,0',C'0,0,0',C'0,0,0'
#property indicator_style3  STYLE_SOLID
#property indicator_width3  1
//--- indicator buffers
double         Label1Buffer[];
double         Label2Buffer[];
double         Label3Buffer[];
double         Label3Colors[];
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
   SetIndexBuffer(1,Label2Buffer,INDICATOR_DATA);
   SetIndexBuffer(2,Label3Buffer,INDICATOR_DATA);
   SetIndexBuffer(3,Label3Colors,INDICATOR_COLOR_INDEX);
//获取句柄
   handle=iMACD(_Symbol,PERIOD_CURRENT,fast_ema,slow_ema,macd_sma,PRICE_CLOSE);
//---
   return(INIT_SUCCEEDED);
  }
//+----------------------------------------------------------6--------+
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
      Label1Buffer[i] = macd[i];
      Label2Buffer[i] = signal[i];
      Label3Buffer[i] = macd[i] - signal[i];
      //Label3Colors[i] = 1;
     }
   return(rates_total);
  }
//+------------------------------------------------------------------+
