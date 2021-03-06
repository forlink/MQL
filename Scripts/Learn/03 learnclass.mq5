//+------------------------------------------------------------------+
//|                                                03 learnclass.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
// 引入自动提示工具
#ifdef __MQLBUILD__
   #property copyright "Copyright 2018, MetaQuotes Software Corp."
   #property link      "https://www.mql5.com"
   #property version   "1.00"
#else
   #include <MQLsyntax.mqh>
#endif
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

class Peple
  {  
private:

protected:

public:
   string            name;
   int               age;
   double            height;
                     Peple()
     {
      printf(__FUNCTION__);
     }
                     Peple(int age)
     {
      this.age=age;
     }
                    ~Peple()
     {
      printf(__FUNCTION__);
     }
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   Peple p1();

   Peple p2(10);
   
   //5个元素
   Peple p5[5];
   printf(ArraySize(p5));
   printf("p5[0].age=%d",p5[1].age);

   Peple *p3=new Peple(10);

   printf(IntegerToString(p2.age));

   delete p3;

   printf("结束");

  }
//+------------------------------------------------------------------+
