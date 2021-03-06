//+------------------------------------------------------------------+
//|                                                        Learn.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

// ima方法返回的句柄
int handle1;
int handle2;
int handle3;
// ma10
int ma_period_1 = 30;
int ma_period_2 = 50;
int ma_period_3 = 100;
int ma_shift = 0;
ENUM_MA_METHOD ma_mathod = MODE_SMA;
ENUM_APPLIED_PRICE ma_applied_price = PRICE_CLOSE;
//存ma数据的数组
double ma1[];
double ma2[];
double ma3[];

void OnStart()
  {
//---
   handle1=iMA(Symbol(),PERIOD_CURRENT,ma_period_1,ma_shift,ma_mathod,ma_applied_price); 
   handle2=iMA(Symbol(),PERIOD_CURRENT,ma_period_2,ma_shift,ma_mathod,ma_applied_price);
   handle3=iMA(Symbol(),PERIOD_CURRENT,ma_period_3,ma_shift,ma_mathod,ma_applied_price);

   if(handle1 == 10) printf("句柄获取成功");

   if(handle1 == INVALID_HANDLE)
   {
        printf("句柄获取失败");
   }
   else{
        printf("handle1的句柄为%d",handle1);
        printf("handle2的句柄为%d",handle2);
        printf("handle3的句柄为%d",handle3);

        ArraySetAsSeries(ma1,true);
        ArraySetAsSeries(ma2,true);
        ArraySetAsSeries(ma3,true);

        CopyBuffer(handle1,0,0,10,ma1);
        CopyBuffer(handle2,0,0,10,ma2);
        CopyBuffer(handle3,0,0,10,ma3);

        printf(DoubleToString(ma1[0]));
        printf(DoubleToString(ma2[0]));
        printf(DoubleToString(ma3[0]));
   }

  }
//+------------------------------------------------------------------+
