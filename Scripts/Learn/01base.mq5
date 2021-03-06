// 引入自动提示工具
#ifdef __MQLBUILD__
   #property copyright "Copyright 2018, MetaQuotes Software Corp."
   #property link      "https://www.mql5.com"
   #property version   "1.00"
#else
   #include <MQLsyntax.mqh>
#endif

void OnStart() 
  { 
   datetime from=0; 
   datetime to=TimeCurrent(); 
//--- 要求全部历史记录 
   HistorySelect(from,to); 
//--- 返回订单属性值变量 
   ulong    ticket; 
   double   open_price; 
   double   initial_volume; 
   datetime time_setup; 
   datetime time_done; 
   string   symbol; 
   string   type; 
   long     order_magic; 
   long     positionID; 
   int a;
   double b[20];
   a = OBJ_PERIOD_M2;
//--- 当前挂单数量 

   //uint     total=HistoryOrdersTotal(); 
//--- 循环检测通过订单 
   for(uint i=0;i<2;i++) 
     { 
      //--- 通过其列表中的位置返回订单报价 
      if((ticket=HistoryOrde rGetTicket(i))>0) 
        { 
         //--- 返回订单属性 
         open_price=       HistoryOrderGetDouble(ticket,ORDER_PRICE_OPEN); 
         time_setup=       (datetime)HistoryOrderGetInteger(ticket,ORDER_TIME_SETUP); 
         time_done=        (datetime)HistoryOrderGetInteger(ticket,ORDER_TIME_DONE); 
         symbol=           HistoryOrderGetString(ticket,ORDER_SYMBOL); 
         order_magic=      HistoryOrderGetInteger(ticket,ORDER_MAGIC); 
         positionID =      HistoryOrderGetInteger(ticket,ORDER_POSITION_ID); 
         initial_volume=   HistoryOrderGetDouble(ticket,ORDER_VOLUME_INITIAL); 
         type=GetOrderType(HistoryOrderGetInteger(ticket,ORDER_TYPE)); 
         //--- 准备并显示订单信息 
         printf("#ticket %d %s %f %s at %f was set up at %s => done at %s, pos ID=%d", 
                ticket,                  // 订单报价 
                type,                    // 类型 
                initial_volume,          // 已下的交易量 
                symbol,                  // 交易品种 
                open_price,              // 规定的开盘价 
                TimeToString(time_setup),// 下订单时间 
                TimeToString(time_done), // 订单执行或者删除时间 
                positionID               // 一个包括订单交易的仓位ID 
                ); 
        } 
     } 
//--- 
  } 
//+------------------------------------------------------------------+ 
//| 返回订单类型字符串名称                                              | 
//+------------------------------------------------------------------+ 
string GetOrderType(long type) 
  { 
   string str_type="unknown operation"; 
   switch(type) 
     { 
      case (ORDER_TYPE_BUY):            return("buy"); 
      case (ORDER_TYPE_SELL):           return("sell"); 
      case (ORDER_TYPE_BUY_LIMIT):      return("buy limit"); 
      case (ORDER_TYPE_SELL_LIMIT):     return("sell limit"); 
      case (ORDER_TYPE_BUY_STOP):       return("buy stop"); 
      case (ORDER_TYPE_SELL_STOP):      return("sell stop"); 
      case (ORDER_TYPE_BUY_STOP_LIMIT): return("buy stop limit"); 
      case (ORDER_TYPE_SELL_STOP_LIMIT):return("sell stop limit"); 
     } 
   return(str_type); 
  }
