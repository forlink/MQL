//+------------------------------------------------------------------+
//|                                           ƽ��ȫ���������е���.mq4 |
//|                       Copyright ?2012, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
#include <stdlib.mqh>
#include <WinUser32.mqh>
#property show_inputs
//+------------------------------------------------------------------+
extern string ˵��="��ȷ��ƽ�ֵ�ǰͼ����ֵ����е���";
//+------------------------------------------------------------------+
int start()
  {
//----
while (cal()>0)
  {
  RefreshRates();
   for(int i=0;i<OrdersTotal();i++)
   {
   
   if(OrderSelect(i,SELECT_BY_POS,MODE_TRADES)==false) break;
   
   string symd=OrderSymbol();
   //if(symd!=Symbol()) continue;
   double pr;
   if(OrderType()==0)
     {
     pr=MarketInfo(symd,MODE_BID);
     if(!OrderClose(OrderTicket(),OrderLots(),pr,3,White)) Print("#"+OrderTicket()+",  ƽ�ֳ���:"+GetLastError());
     }
   if(OrderType()==1)
     {
     pr=MarketInfo(symd,MODE_ASK);
     if(!OrderClose(OrderTicket(),OrderLots(),pr,3,White)) Print("#"+OrderTicket()+",  ƽ�ֳ���:"+GetLastError());
     }
   if(OrderType()>1) OrderDelete(OrderTicket());
   }
   
   }
   Alert("�������");
   return(0);
  }
//+------------------------------------------------------------------+
int cal()
{
int os;
for(int i=0;i<OrdersTotal();i++)
   {
   if(OrderSelect(i,SELECT_BY_POS,MODE_TRADES)==false) break;
   if(OrderLots( ) >0) os++;
   }
   return(os);

}