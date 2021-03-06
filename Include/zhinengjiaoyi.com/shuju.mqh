//智能交易网www.zhinengjiaoyi.com出品，关注微信公众号：智能交易"
class shuju
{
  public:
   shuju()
    {
    }
   ~shuju()
    {
    }
   double getask(string symbol);
   double getask();
   double getbid(string symbol);
   double getbid();
   int getrates(MqlRates  &rates[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int getrates(MqlRates  &rates[],int count);
   
   int getticks(MqlTick  &ticks[],int count,string symbol);
   int getticks(MqlTick  &ticks[],int count);
   
   int getopen(double &open[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int getopen(double &open[],int count);
   int getclose(double &close[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int getclose(double &close[],int count);
   int getlow(double &low[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int getlow(double &low[],int count);
   int gethigh(double &high[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int gethigh(double &high[],int count);
   int gettime(datetime &time[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int gettime(datetime &time[],int count);
   int gettickvolume(long &tickvolume[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int gettickvolume(long &tickvolume[],int count);
   int getrealvolume(long &realvolume[],int count,string symbol,ENUM_TIMEFRAMES tf);
   int getrealvolume(long &realvolume[],int count);
   int getmarketbook(MqlBookInfo &book[]);
   int getmarketbook(MqlBookInfo &book[],string symbol);
   int iBarsMQL4(string symbol,ENUM_TIMEFRAMES tf);
   int iBarShiftMQL4(string symbol,ENUM_TIMEFRAMES tf,datetime time,bool exact=false);
   double iCloseMQL4(string symbol,ENUM_TIMEFRAMES tf,int index);
   double iHighMQL4(string symbol,ENUM_TIMEFRAMES tf,int index);
   int iHighestMQL4(string symbol,ENUM_TIMEFRAMES tf,int count=WHOLE_ARRAY,int start=0);
   double iLowMQL4(string symbol,ENUM_TIMEFRAMES tf,int index);
   int iLowestMQL4(string symbol,ENUM_TIMEFRAMES tf,int count=WHOLE_ARRAY,int start=0);
   double iOpenMQL4(string symbol,ENUM_TIMEFRAMES tf,int index);
   datetime iTimeMQL4(string symbol,ENUM_TIMEFRAMES tf,int index);
   long iVolumeMQL4(string symbol,ENUM_TIMEFRAMES tf,int index);
   double LLV(string symbol,ENUM_TIMEFRAMES tf,int count,int shift);
   double HHV(string symbol,ENUM_TIMEFRAMES tf,int count,int shift);
   void  MA(
            double &ma[],
            int count,
            string               symbol,            // 交易品种名称 
            ENUM_TIMEFRAMES      period,            // 周期 
            int                  ma_period,         // 平均周期 
            int                  ma_shift,          // 平移 
            ENUM_MA_METHOD       ma_method,         // 平滑类型 
            ENUM_APPLIED_PRICE   applied_price      // 价格或者处理程序类型 
           );
   double iMAOnArrayMql4(
            double &Array[],
            int total,
            int iMAPeriod,
            int ma_shift,
            ENUM_MA_METHOD ma_method,
            int Shift);
  
   int  AC( 
    double &data0[],
    int count,
   string           symbol,     // 交易品种名称 
   ENUM_TIMEFRAMES  period      // 周期
   );
   int  AD( 
    double &data0[],
    int count,
   string               symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES      period,             // 周期 
   ENUM_APPLIED_VOLUME  applied_volume      // 用于计算的交易量类型 
   );
   int  ADX( 
    double &data0[],
    double &data1[],
    double &data2[],
    int count,
   string           symbol,         // 交易品种名称 
   ENUM_TIMEFRAMES  period,         // 周期 
   int              adx_period      // 平均周期 
   );
   int  ADXWilder( 
    double &data0[],
    double &data1[],
    double &data2[],
    int count,
   string           symbol,         // 交易品种名称 
   ENUM_TIMEFRAMES  period,         // 周期 
   int              adx_period      // 平均周期 
   );
   int  Alligator( 
    double &data0[],
    double &data1[],
    double &data2[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 jaw_period,        // 咽喉计算周期 
   int                 jaw_shift,         // 咽喉平移 
   int                 teeth_period,      // 牙齿计算周期 
   int                 teeth_shift,       // 牙齿平移 
   int                 lips_period,       // 唇部计算周期 
   int                 lips_shift,        // 唇部平移 
   ENUM_MA_METHOD      ma_method,         // 平滑类型 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  AMA( 
    double &data0[],
    int count,
   string              symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES     period,             // 周期 
   int                 ama_period,         //  AMA平均周期 
   int                 fast_ma_period,     // 快速 MA 周期 
   int                 slow_ma_period,     // 慢速 MA 周期 
   int                 ama_shift,          // 指标平移 
   ENUM_APPLIED_PRICE  applied_price       // 价格或者处理器类型 
   );
   int  AO( 
    double &data0[],
    int count,
   string           symbol,     // 交易品种名称 
   ENUM_TIMEFRAMES  period      // 周期 
   );
   int  ATR( 
    double &data0[],
    int count,
   string           symbol,        // 交易品种名称 
   ENUM_TIMEFRAMES  period,        // 周期 
   int              ma_period      // 平均周期  
   );
   int  BearsPower( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period         // 平均周期 
   );
   int  Bands( 
    double &data0[],
    double &data1[],
    double &data2[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 bands_period,      // 平均线计算周期 
   int                 bands_shift,       // 指标平移 
   double              deviation,         // 标准差数 
   ENUM_APPLIED_PRICE  applied_price      // 价格或处理器类型 
   );
   int  BullsPower( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period         // 平均周期 
   );
   int  CCI( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   ENUM_APPLIED_PRICE  applied_price      // 价格或处理器类型 
   );
   int  Chaikin( 
    double &data0[],
    int count,
   string               symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES      period,             // 周期 
   int                  fast_ma_period,     // 快速周期 
   int                  slow_ma_period,     // 慢速周期 
   ENUM_MA_METHOD       ma_method,          // 平滑类型 
   ENUM_APPLIED_VOLUME  applied_volume      // 交易量类型 
   );
   int  DEMA( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   int                 ma_shift,          // 平移 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  DeMarker( 
    double &data0[],
    int count,
   string           symbol,        // 交易品种名称 
   ENUM_TIMEFRAMES  period,        // 周期 
   int              ma_period      // 平均周期 
   );
   int  Envelopes( 
    double &data0[],
    double &data1[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均线计算周期 
   int                 ma_shift,          // 指标平移 
   ENUM_MA_METHOD      ma_method,         // 平滑类型 
   ENUM_APPLIED_PRICE  applied_price,     // 价格或者处理器类型 
   double              deviation          // 中线边界差(百分率) 
   );
   int  Force( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   ENUM_MA_METHOD      ma_method,         // 平滑类型 
   ENUM_APPLIED_VOLUME applied_volume     // 计算的交易量类型 
   );
   int  Fractals( 
    double &data0[],
    double &data1[],
    int count,
   string           symbol,     // 交易品种名称 
   ENUM_TIMEFRAMES  period      // 周期 
   );
   int  FrAMA( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   int                 ma_shift,          // 图表平移 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  Gator( 
    double &data0[],
    double &data1[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 jaw_period,        // 咽喉计算周期 
   int                 jaw_shift,         // 咽喉平移 
   int                 teeth_period,      // 牙齿计算周期 
   int                 teeth_shift,       // 牙齿平移 
   int                 lips_period,       // 唇部计算周期 
   int                 lips_shift,        // 唇部平移 
   ENUM_MA_METHOD      ma_method,         // 平滑类型 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  Ichimoku( 
    double &data0[],
    double &data1[],
    double &data2[],
    double &data3[],
    double &data4[],
    int count,
   string           symbol,            // 交易品种类型 
   ENUM_TIMEFRAMES  period,            // 周期 
   int              tenkan_sen,        // Tenkan-sen转换线周期 
   int              kijun_sen,         // Kijun-sen基准线周期 
   int              senkou_span_b      // Senkou Span B周期 
   );
   int  BWMFI( 
    double &data0[],
    int count,
   string               symbol,             // 交易品种类型 
   ENUM_TIMEFRAMES      period,             // 周期 
   ENUM_APPLIED_VOLUME  applied_volume      // 计算的交易量类型 
   );
   int  Momentum( 
    double &data0[],
    int count,
   string               symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES      period,            // 周期 
   int                  mom_period,        // 平均周期 
   ENUM_APPLIED_PRICE   applied_price      // 价格或者处理器类型 
   );
   int  MFI( 
    double &data0[],
    int count,
   string               symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES      period,             // 周期 
   int                  ma_period,          // 平均周期 
   ENUM_APPLIED_VOLUME  applied_volume      // 计算的交易量类型 
   );
   int  OsMA( 
    double &data0[],
    int count,
   string              symbol,              // 交易品种名称 
   ENUM_TIMEFRAMES     period,              // 周期 
   int                 fast_ema_period,     // 快速移动平均数周期 
   int                 slow_ema_period,     // 慢速移动平均数周期 
   int                 signal_period,       // 不同点的平均周期 
   ENUM_APPLIED_PRICE  applied_price        // 价格或者处理器的类型 
   );
   int  MACD( 
    double &data0[],
    double &data1[],
    int count,
   string              symbol,              // 交易品种名称 
   ENUM_TIMEFRAMES     period,              // 周期 
   int                 fast_ema_period,     // 快速移动平均数周期 
   int                 slow_ema_period,     // 慢速移动平均数周期 
   int                 signal_period,       // 不同点的平均周期 
   ENUM_APPLIED_PRICE  applied_price        // 价格或者处理器的类型 
   );
   int  OBV( 
    double &data0[],
    int count,
   string                symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES       period,             // 周期 
   ENUM_APPLIED_VOLUME   applied_volume      // 计算的交易量类型 
   );
   int  SAR( 
    double &data0[],
    int count,
   string           symbol,      // 交易品种名称 
   ENUM_TIMEFRAMES  period,      // 周期 
   double           step,        // 逐步增加 
   double           maximum      // 最大止损水平 
   );
   int  RSI( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种类型 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  RVI( 
    double &data0[],
    double &data1[],
    int count,
   string           symbol,        // 交易品种名称 
   ENUM_TIMEFRAMES  period,        // 周期 
   int              ma_period      // 平均周期 
   );
   int  StdDev( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   int                 ma_shift,          // 平移 
   ENUM_MA_METHOD      ma_method,         // 平滑类型 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  Stochastic( 
    double &data0[],
    double &data1[],
    int count,
   string           symbol,          // 交易品种名称 
   ENUM_TIMEFRAMES  period,          // 周期 
   int              Kperiod,         // K线周期 (用于计算的柱数) 
   int              Dperiod,         // D线周期 (开始平滑周期) 
   int              slowing,         // 最终平滑 
   ENUM_MA_METHOD   ma_method,       // 平滑类型 
   ENUM_STO_PRICE   price_field      // 随机计算法 
   );
   int  TEMA( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   int                 ma_shift,          // 指标平移 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  TriX( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 ma_period,         // 平均周期 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  WPR( 
    double &data0[],
    int count,
   string           symbol,          // 交易品种名称 
   ENUM_TIMEFRAMES  period,          // 周期 
   int              calc_period      // 平均周期 
   );
   int  VIDyA( 
    double &data0[],
    int count,
   string              symbol,            // 交易品种名称 
   ENUM_TIMEFRAMES     period,            // 周期 
   int                 cmo_period,        // Chande 动量指标周期 
   int                 ema_period,        // EMA 平滑周期 
   int                 ma_shift,          // 价格图表平移 
   ENUM_APPLIED_PRICE  applied_price      // 价格或者处理器类型 
   );
   int  Volumes( 
    double &data0[],
    int count,
   string               symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES      period,             // 周期 
   ENUM_APPLIED_VOLUME  applied_volume      // 计算的交易量类型 
   );
   int  ZigZag(
    double &data0[],
    int count,
   string               symbol,             // 交易品种名称 
   ENUM_TIMEFRAMES      period,             // 周期 
   int   ExtDepth,
   int   ExtDeviation,
   int   ExtBackstep
   );
   void getzigzag(double &zigzag[][4],int geshu,int ExtDepth,int ExtDeviation,int ExtBackstep);
};
double shuju::getask(string symbol)
{
   return(SymbolInfoDouble(symbol,SYMBOL_ASK));
}
double shuju::getask()
{
   return(SymbolInfoDouble(Symbol(),SYMBOL_ASK));
}
double shuju::getbid(string symbol)
{
   return(SymbolInfoDouble(symbol,SYMBOL_BID));
}
double shuju::getbid()
{
   return(SymbolInfoDouble(Symbol(),SYMBOL_BID));
}
int shuju::getrates(MqlRates  &rates[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
   ArraySetAsSeries(rates,true);
   return(CopyRates(symbol,tf,0,count,rates));
}
int shuju::getrates(MqlRates  &rates[],int count)
{
   ArraySetAsSeries(rates,true);
   return(CopyRates(Symbol(),0,0,count,rates));
}
int shuju::getticks(MqlTick  &ticks[],int count,string symbol)
{
   ArraySetAsSeries(ticks,true);
   return(CopyTicks(symbol,ticks,COPY_TICKS_ALL,0,count));
}
int shuju::getticks(MqlTick  &ticks[],int count)
{
   ArraySetAsSeries(ticks,true);
   return(CopyTicks(Symbol(),ticks,COPY_TICKS_ALL,0,count));
}
int shuju::getopen(double &open[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
    ArraySetAsSeries(open,true);
    int a=CopyOpen(symbol,tf,0,count,open);
    return(a);
}
int shuju::getopen(double &open[],int count)
{
    ArraySetAsSeries(open,true);
    int a=CopyOpen(Symbol(),0,0,count,open);
    return(a);
}
int shuju::getclose(double &close[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
   ArraySetAsSeries(close,true);
   return(CopyClose(symbol,tf,0,count,close));
}
int shuju::getclose(double &close[],int count)
{
   ArraySetAsSeries(close,true);
   return(CopyClose(Symbol(),0,0,count,close));
}
int shuju::getlow(double &low[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
   ArraySetAsSeries(low,true);
   return(CopyLow(symbol,tf,0,count,low));
}
int shuju::getlow(double &low[],int count)
{
   ArraySetAsSeries(low,true);
   return(CopyLow(Symbol(),0,0,count,low));
}
int shuju::gethigh(double &high[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
   ArraySetAsSeries(high,true);
   return(CopyHigh(symbol,tf,0,count,high));
}
int shuju::gethigh(double &high[],int count)
{
   ArraySetAsSeries(high,true);
   return(CopyHigh(Symbol(),0,0,count,high));
}
int shuju::gettime(datetime &time[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
    ArraySetAsSeries(time,true);
    int a=CopyTime(symbol,tf,0,count,time);
    return(a);
}
int shuju::gettime(datetime &time[],int count)
{
    ArraySetAsSeries(time,true);
    int a=CopyTime(Symbol(),0,0,count,time);
    return(a);
}
int shuju::gettickvolume(long &tickvolume[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
   ArraySetAsSeries(tickvolume,true);
   return(CopyTickVolume(symbol,tf,0,count,tickvolume));
}
int shuju::gettickvolume(long &tickvolume[],int count)
{
   ArraySetAsSeries(tickvolume,true);
   return(CopyTickVolume(Symbol(),0,0,count,tickvolume));
}
int shuju::getrealvolume(long &realvolume[],int count,string symbol,ENUM_TIMEFRAMES tf)
{
   ArraySetAsSeries(realvolume,true);
   return(CopyRealVolume(symbol,tf,0,count,realvolume));
}
int shuju::getrealvolume(long &realvolume[],int count)
{
   ArraySetAsSeries(realvolume,true);
   return(CopyRealVolume(Symbol(),0,0,count,realvolume));
}
int shuju::getmarketbook(MqlBookInfo &book[])
{
    MarketBookGet(Symbol(),book);
    return(ArraySize(book));
}
int shuju::getmarketbook(MqlBookInfo &book[],string symbol)
{
    MarketBookGet(symbol,book);
    return(ArraySize(book));
}
int shuju::iBarsMQL4(string symbol,ENUM_TIMEFRAMES tf)
  {
   ENUM_TIMEFRAMES timeframe=tf;
   return(Bars(symbol,timeframe));
  }
int shuju::iBarShiftMQL4(string symbol,ENUM_TIMEFRAMES tf,datetime time,bool exact=false)
  {
   if(time<0) return(-1);
   ENUM_TIMEFRAMES timeframe=tf;
   datetime Arr[],time1;
   CopyTime(symbol,timeframe,0,1,Arr);
   time1=Arr[0];
   if(CopyTime(symbol,timeframe,time,time1,Arr)>0)
     {
      if(ArraySize(Arr)>2) return(ArraySize(Arr)-1);
      if(time<time1) return(1);
      else return(0);
     }
   else return(-1);
  }
double shuju::iCloseMQL4(string symbol,ENUM_TIMEFRAMES tf,int index)
{
   if(index < 0) return(-1);
   double Arr[];
   ENUM_TIMEFRAMES timeframe=tf;
   if(CopyClose(symbol,timeframe, index, 1, Arr)>0) 
        return(Arr[0]);
   else return(-1);
}
double shuju::iHighMQL4(string symbol,ENUM_TIMEFRAMES tf,int index)
{
   if(index < 0) return(-1);
   double Arr[];
   ENUM_TIMEFRAMES timeframe=tf;
   if(CopyHigh(symbol,timeframe, index, 1, Arr)>0) 
        return(Arr[0]);
   else return(-1);
}
int shuju::iHighestMQL4(string symbol,ENUM_TIMEFRAMES tf,int count=WHOLE_ARRAY,int start=0)
  {
   if(start<0) return(-1);
   ENUM_TIMEFRAMES timeframe=tf;
   if(count<=0) count=Bars(symbol,timeframe);
   double High[];
   ArraySetAsSeries(High,true);
   CopyHigh(symbol,timeframe,start,count,High);
   return(ArrayMaximum(High,0,count)+start);
  }
double shuju::iLowMQL4(string symbol,ENUM_TIMEFRAMES tf,int index)
{
   if(index < 0) return(-1);
   double Arr[];
   ENUM_TIMEFRAMES timeframe=tf;
   if(CopyLow(symbol,timeframe, index, 1, Arr)>0)
        return(Arr[0]);
   else return(-1);
}
int shuju::iLowestMQL4(string symbol,ENUM_TIMEFRAMES tf,int count=WHOLE_ARRAY,int start=0)
  {
   if(start<0) return(-1);
   ENUM_TIMEFRAMES timeframe=tf;
   if(count<=0) count=Bars(symbol,timeframe);
   double Low[];
   ArraySetAsSeries(Low,true);
   CopyLow(symbol,timeframe,start,count,Low);
   return(ArrayMinimum(Low,0,count)+start);
  }
double shuju::iOpenMQL4(string symbol,ENUM_TIMEFRAMES tf,int index)
{   
   if(index < 0) return(-1);
   double Arr[];
   ENUM_TIMEFRAMES timeframe=tf;
   if(CopyOpen(symbol,timeframe, index, 1, Arr)>0) 
        return(Arr[0]);
   else return(-1);
}
datetime shuju::iTimeMQL4(string symbol,ENUM_TIMEFRAMES tf,int index)
{
   if(index < 0) return(-1);
   ENUM_TIMEFRAMES timeframe=tf;
   datetime Arr[];
   if(CopyTime(symbol, timeframe, index, 1, Arr)>0)
        return(Arr[0]);
   else return(-1);
}
long shuju::iVolumeMQL4(string symbol,ENUM_TIMEFRAMES tf,int index)
{
   if(index < 0) return(-1);
   long Arr[];
   ENUM_TIMEFRAMES timeframe=tf;
   if(CopyTickVolume(symbol, timeframe, index, 1, Arr)>0)
        return(Arr[0]);
   else return(-1);
}
double shuju::LLV(string symbol,ENUM_TIMEFRAMES tf,int count,int shift)
  {
    double low[];
    ArraySetAsSeries(low,true);
    CopyLow(symbol,tf,shift,count,low);
    double min=9999999;
    for(int i=0;i<ArraySize(low);i++)
     {
       if(low[i]<min)
        {
          min=low[i];
        }
     }
    return(min);
  }
double shuju::HHV(string symbol,ENUM_TIMEFRAMES tf,int count,int shift)
  {
    double high[];
    ArraySetAsSeries(high,true);
    CopyHigh(symbol,tf,shift,count,high);
    double max=-9999999;
    for(int i=0;i<ArraySize(high);i++)
     {
       if(high[i]>max)
        {
          max=high[i];
        }
     }
    return(max);
  }
void  shuju::MA(
      double &ma[],
      int count,
      string               symbol,            // 交易品种名称 
      ENUM_TIMEFRAMES      period,            // 周期 
      int                  ma_period,         // 平均周期 
      int                  ma_shift,          // 平移 
      ENUM_MA_METHOD       ma_method,         // 平滑类型 
      ENUM_APPLIED_PRICE   applied_price      // 价格或者处理程序类型 
     )
{
  int ma_h=iMA(symbol,period,ma_period,ma_shift,ma_method,applied_price);
  ArraySetAsSeries(ma,true);
  CopyBuffer(ma_h,0,0,count,ma);
  //IndicatorRelease(ma_h);
}
double shuju::iMAOnArrayMql4(double &Array[],int total,int iMAPeriod,int ma_shift,ENUM_MA_METHOD ma_method,int Shift)
  {
   double buf[];
   if(total>0 && total<=iMAPeriod) return(0);
   if(total==0) total=ArraySize(Array);
   if(ArrayResize(buf,total)<0) return(0);
   switch(ma_method)
     {
      case MODE_SMA :
        {
         double sum=0;
         int    i,pos=total-1;
         for(i=1;i<iMAPeriod;i++,pos--)
            sum+=Array[pos];
         while(pos>=0)
           {
            sum+=Array[pos];
            buf[pos]=sum/iMAPeriod;
            sum-=Array[pos+iMAPeriod-1];
            pos--;

           }
         return(buf[Shift+ma_shift]);
        }
      case MODE_EMA :
        {
         double pr=2.0/(iMAPeriod+1);
         int    pos=total-2;
         while(pos>=0)
           {
            if(pos==total-2) buf[pos+1]=Array[pos+1];
            buf[pos]=Array[pos]*pr+buf[pos+1]*(1-pr);
            pos--;

           }
         return(buf[Shift+ma_shift]);
        }
      case MODE_SMMA :
        {
         double sum=0;
         int    i,k,pos;
         pos=total-iMAPeriod;
         while(pos>=0)
           {
            if(pos==total-iMAPeriod)
              {
               for(i=0,k=pos;i<iMAPeriod;i++,k++)
                 {
                  sum+=Array[k];
                  buf[k]=0;

                 }
              }
            else sum=buf[pos+1]*(iMAPeriod-1)+Array[pos];
            buf[pos]=sum/iMAPeriod;
            pos--;
           }
         return(buf[Shift+ma_shift]);
        }
      case MODE_LWMA :
        {
         double sum=0.0,lsum=0.0;
         double price;
         int    i,weight=0,pos=total-1;
         for(i=1;i<=iMAPeriod;i++,pos--)
           {
            price=Array[pos];
            sum+=price*i;
            lsum+=price;
            weight+=i;
           }
         pos++;
         i=pos+iMAPeriod;
         while(pos>=0)
           {
            buf[pos]=sum/weight;
            if(pos==0) break;
            pos--;
            i--;
            price=Array[pos];
            sum=sum-lsum+price*iMAPeriod;
            lsum-=Array[i];
            lsum+=price;
           }
         return(buf[Shift+ma_shift]);
        }
      default: return(0);
     }
   return(0);
  }
int  shuju::ADX( 
         double &data0[],
         double &data1[],
         double &data2[],
         int count,
         string           symbol,         // 交易品种名称 
         ENUM_TIMEFRAMES  period,         // 周期 
         int              adx_period      // 平均周期 
      )
{
   int h=iADX(symbol,period,adx_period);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   ArraySetAsSeries(data2,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   a=CopyBuffer(h,2,0,count,data2);
   //IndicatorRelease(h);
   return(a);
}
int shuju::AC(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period)
{
   int h=iAC(symbol,period);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::AD(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iAD(symbol,period,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::ADXWilder(double &data0[],double &data1[],double &data2[],int count,string symbol,ENUM_TIMEFRAMES period,int adx_period)
{
   int h=iADXWilder(symbol,period,adx_period);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   ArraySetAsSeries(data2,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   a=CopyBuffer(h,2,0,count,data2);
   //IndicatorRelease(h);
   return(a);
}
int shuju::AMA(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ama_period,int fast_ma_period,int slow_ma_period,int ama_shift,ENUM_APPLIED_PRICE applied_price)
{
   int h=iAMA(symbol,period,ama_period,fast_ma_period,slow_ma_period,ama_shift,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::AO(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period)
{
   int h=iAO(symbol,period);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::ATR(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period)
{
   int h=iATR(symbol,period,ma_period);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Alligator(double &data0[],double &data1[],double &data2[],int count,string symbol,ENUM_TIMEFRAMES period,int jaw_period,int jaw_shift,int teeth_period,int teeth_shift,int lips_period,int lips_shift,ENUM_MA_METHOD ma_method,ENUM_APPLIED_PRICE applied_price)
{
   int h=iAlligator(symbol,period,jaw_period,jaw_shift,teeth_period,teeth_shift,lips_period,lips_shift,ma_method,applied_price);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   ArraySetAsSeries(data2,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   a=CopyBuffer(h,2,0,count,data2);
   //IndicatorRelease(h);
   return(a);
}
int shuju::BWMFI(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iBWMFI(symbol,period,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Bands(double &data0[],double &data1[],double &data2[],int count,string symbol,ENUM_TIMEFRAMES period,int bands_period,int bands_shift,double deviation,ENUM_APPLIED_PRICE applied_price)
{
   //int h=iCustom(symbol,period,"Examples\\BB",bands_period,bands_shift,deviation);
   int h=iBands(symbol,period,bands_period,bands_shift,deviation,applied_price);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   ArraySetAsSeries(data2,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   a=CopyBuffer(h,2,0,count,data2);
   //IndicatorRelease(h);
   return(a);
}
int shuju::BearsPower(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period)
{
   int h=iBearsPower(symbol,period,ma_period);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::BullsPower(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period)
{
   int h=iBullsPower(symbol,period,ma_period);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::CCI(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,ENUM_APPLIED_PRICE applied_price)
{
   int h=iCCI(symbol,period,ma_period,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Chaikin(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int fast_ma_period,int slow_ma_period,ENUM_MA_METHOD ma_method,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iChaikin(symbol,period,fast_ma_period,slow_ma_period,ma_method,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::DEMA(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,int ma_shift,ENUM_APPLIED_PRICE applied_price)
{
   int h=iDEMA(symbol,period,ma_period,ma_shift,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::DeMarker(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period)
{
   int h=iDeMarker(symbol,period,ma_period);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Envelopes(double &data0[],double &data1[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,int ma_shift,ENUM_MA_METHOD ma_method,ENUM_APPLIED_PRICE applied_price,double deviation)
{
   int h=iEnvelopes(symbol,period,ma_period,ma_shift,ma_method,applied_price,deviation);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Force(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,ENUM_MA_METHOD ma_method,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iForce(symbol,period,ma_period,ma_method,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::FrAMA(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,int ma_shift,ENUM_APPLIED_PRICE applied_price)
{
   int h=iFrAMA(symbol,period,ma_period,ma_shift,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Fractals(double &data0[],double &data1[],int count,string symbol,ENUM_TIMEFRAMES period)
{
   int h=iFractals(symbol,period);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Gator(double &data0[],double &data1[],int count,string symbol,ENUM_TIMEFRAMES period,int jaw_period,int jaw_shift,int teeth_period,int teeth_shift,int lips_period,int lips_shift,ENUM_MA_METHOD ma_method,ENUM_APPLIED_PRICE applied_price)
{
   int h=iGator(symbol,period,jaw_period,jaw_shift,teeth_period,teeth_shift,lips_period,lips_shift,ma_method,applied_price);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Ichimoku(double &data0[],double &data1[],double &data2[],double &data3[],double &data4[],int count,string symbol,ENUM_TIMEFRAMES period,int tenkan_sen,int kijun_sen,int senkou_span_b)
{
   int h=iIchimoku(symbol,period,tenkan_sen,kijun_sen,senkou_span_b);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   ArraySetAsSeries(data2,true);
   ArraySetAsSeries(data3,true);
   ArraySetAsSeries(data4,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   a=CopyBuffer(h,2,0,count,data2);
   a=CopyBuffer(h,3,0,count,data3);
   a=CopyBuffer(h,4,0,count,data4);
   //IndicatorRelease(h);
   return(a);
}
int shuju::MACD(double &data0[],double &data1[],int count,string symbol,ENUM_TIMEFRAMES period,int fast_ema_period,int slow_ema_period,int signal_period,ENUM_APPLIED_PRICE applied_price)
{
   int h=iMACD(symbol,period,fast_ema_period,slow_ema_period,signal_period,applied_price);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   //IndicatorRelease(h);
   return(a);
}
int shuju::MFI(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iMFI(symbol,period,ma_period,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Momentum(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int mom_period,ENUM_APPLIED_PRICE applied_price)
{
   int h=iMomentum(symbol,period,mom_period,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::OBV(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iOBV(symbol,period,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::OsMA(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int fast_ema_period,int slow_ema_period,int signal_period,ENUM_APPLIED_PRICE applied_price)
{
   int h=iOsMA(symbol,period,fast_ema_period,slow_ema_period,signal_period,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::RSI(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,ENUM_APPLIED_PRICE applied_price)
{
   int h=iRSI(symbol,period,ma_period,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::RVI(double &data0[],double &data1[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period)
{
   int h=iRVI(symbol,period,ma_period);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   //IndicatorRelease(h);
   return(a);
}
int shuju::SAR(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,double step,double maximum)
{
   int h=iSAR(symbol,period,step,maximum);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::StdDev(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,int ma_shift,ENUM_MA_METHOD ma_method,ENUM_APPLIED_PRICE applied_price)
{
   int h=iStdDev(symbol,period,ma_period,ma_shift,ma_method,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Stochastic(double &data0[],double &data1[],int count,string symbol,ENUM_TIMEFRAMES period,int Kperiod,int Dperiod,int slowing,ENUM_MA_METHOD ma_method,ENUM_STO_PRICE price_field)
{
   int h=iStochastic(symbol,period,Kperiod,Dperiod,slowing,ma_method,price_field);
   ArraySetAsSeries(data0,true);
   ArraySetAsSeries(data1,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   a=CopyBuffer(h,1,0,count,data1);
   //IndicatorRelease(h);
   return(a);
}
int shuju::TEMA(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,int ma_shift,ENUM_APPLIED_PRICE applied_price)
{
   int h=iTEMA(symbol,period,ma_period,ma_shift,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::TriX(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ma_period,ENUM_APPLIED_PRICE applied_price)
{
   int h=iTriX(symbol,period,ma_period,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::VIDyA(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int cmo_period,int ema_period,int ma_shift,ENUM_APPLIED_PRICE applied_price)
{
   int h=iVIDyA(symbol,period,cmo_period,ema_period,ma_shift,applied_price);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::Volumes(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,ENUM_APPLIED_VOLUME applied_volume)
{
   int h=iVolumes(symbol,period,applied_volume);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
int shuju::ZigZag(double &data0[],int count,string symbol,ENUM_TIMEFRAMES period,int ExtDepth,int ExtDeviation,int ExtBackstep)
{
   int h=iCustom(symbol,period,"Examples\\ZigZag",ExtDepth,ExtDeviation,ExtBackstep);
   ArraySetAsSeries(data0,true);
   int a;
   a=CopyBuffer(h,0,0,count,data0);
   //IndicatorRelease(h);
   return(a);
}
void shuju::getzigzag(double &zigzag[][4],int geshu,int ExtDepth,int ExtDeviation,int ExtBackstep)
{
    ArrayResize(zigzag,geshu);
    ArrayInitialize(zigzag,0);
    double zigzagzhi[];
    int bars=Bars(Symbol(),0);
    ZigZag(zigzagzhi,bars,Symbol(),0,ExtDepth,ExtDeviation,ExtBackstep);
    datetime time[];
    gettime(time,bars);
    double low[];
    getlow(low,bars); 
    int jishu=0;
    for(int i=0;i<bars;i++)
     {
        if(jishu>(geshu-1))
         {
           break;
         }
        if(zigzagzhi[i]>0)
         {
           zigzag[jishu][0]=zigzagzhi[i];//记录高低点的值
           zigzag[jishu][1]=i;//记录高低点所在的K线序号
           zigzag[jishu][2]=(int)time[i];//记录高低点所在K线的时间
           //string ts=TimeToString(zigzag[jishu][2]);
           if(zigzagzhi[i]<=low[i])//低点
            {
              zigzag[jishu][3]=1;//如果值等于1，说明是低点
            }
           else//高点
            {
              zigzag[jishu][3]=2;//如果值等于2，说明是高点
            }
           jishu++;
         }
     }
}