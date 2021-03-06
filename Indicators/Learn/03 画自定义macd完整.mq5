//+------------------------------------------------------------------+
//|                                                03 画自定义macd完整.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property indicator_separate_window
#property indicator_buffers 8
#property indicator_plots   6
//--- plot macd
#property indicator_label1  "macd"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrRed
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1
//--- plot signal
#property indicator_label2  "signal"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrBlue
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1
//--- plot cha
#property indicator_label3  "cha"
#property indicator_type3   DRAW_COLOR_HISTOGRAM
#property indicator_color3  clrOrangeRed,clrMediumBlue,clrTeal,C'0,0,0',C'0,0,0',C'0,0,0',C'0,0,0',C'0,0,0'
#property indicator_style3  STYLE_SOLID
#property indicator_width3  1
//--- plot up
#property indicator_label4  "up"
#property indicator_type4   DRAW_ARROW
#property indicator_color4  clrRed
#property indicator_style4  STYLE_SOLID
#property indicator_width4  1
//--- plot down
#property indicator_label5  "down"
#property indicator_type5   DRAW_ARROW
#property indicator_color5  clrBlue
#property indicator_style5  STYLE_SOLID
#property indicator_width5  1
//--- plot tianchong
#property indicator_label6  "tianchong"
#property indicator_type6   DRAW_FILLING
#property indicator_color6  clrRed,clrYellow
#property indicator_style6  STYLE_SOLID
#property indicator_width6  1
//--- indicator buffers
double         macdBuffer[];
double         signalBuffer[];
double         chaBuffer[];
double         chaColors[];
double         upBuffer[];
double         downBuffer[];
double         tianchongBuffer1[];
double         tianchongBuffer2[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
input int                fast_ema=12;               // Fast EMA period
input int                slow_ema=26;               // Slow EMA period
input int                macd_sma=9;              // Signal SMA period

int handle;
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   SetIndexBuffer(0,macdBuffer,INDICATOR_DATA);
   SetIndexBuffer(1,signalBuffer,INDICATOR_DATA);
   SetIndexBuffer(2,chaBuffer,INDICATOR_DATA);
   SetIndexBuffer(3,chaColors,INDICATOR_COLOR_INDEX);
   SetIndexBuffer(4,upBuffer,INDICATOR_DATA);
   SetIndexBuffer(5,downBuffer,INDICATOR_DATA);
   SetIndexBuffer(6,tianchongBuffer1,INDICATOR_DATA);
   SetIndexBuffer(7,tianchongBuffer2,INDICATOR_DATA);
//--- setting a code from the Wingdings charset as the property of PLOT_ARROW
//--- 涉及到图形的输入wingdings查询对应int数字
   PlotIndexSetInteger(3,PLOT_ARROW,225);
   PlotIndexSetInteger(4,PLOT_ARROW,226);
//不重置为0,没赋值的话也会出现箭头
   PlotIndexSetDouble(3,PLOT_EMPTY_VALUE,0);
   PlotIndexSetDouble(4,PLOT_EMPTY_VALUE,0);
//获取句柄
   handle=iMACD(_Symbol,PERIOD_CURRENT,fast_ema,slow_ema,macd_sma,PRICE_CLOSE);
//---
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
   CopyBuffer(handle,0,0,rates_total,macdBuffer);
   CopyBuffer(handle,1,0,rates_total,signalBuffer);

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
      chaBuffer[i]=macdBuffer[i]-signalBuffer[i];
      if(i>0)
        {
         //柱状图颜色
         if(chaBuffer[i]>chaBuffer[i-1])
           {
            chaColors[i]=0;
           }
         else
           {
            chaColors[i]=1;
           }
         //画出箭头  
         if(macdBuffer[i]>signalBuffer[i] && macdBuffer[i-1]<signalBuffer[i-1])
           {
            upBuffer[i]=signalBuffer[i]-10*Point();
           }
         if(macdBuffer[i]<signalBuffer[i] && macdBuffer[i-1]>signalBuffer[i-1])
           {
            downBuffer[i]=signalBuffer[i]+10*Point();
           }
        }
      tianchongBuffer1[i]=macdBuffer[i];
      tianchongBuffer2[i]=signalBuffer[i];
     }

//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
