//+------------------------------------------------------------------+
//|                                                         到时平仓.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link "https://www.mql5.com"
#property version "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
// 脚本展示输入弹框
#property script_show_inputs

#include <Trade\PositionInfo.mqh>
#include <Trade\Trade.mqh>

CPositionInfo m_position;
CTrade m_trade;

input int 平仓时;
input int 平仓分;
int 滑点 = 10;

void OnStart()
{
  //---
  m_trade.SetDeviationInPoints(滑点);

  MqlDateTime dt_struct;
  TimeCurrent(dt_struct);

  printf("当前时间: d% ;当前分钟数: %d",dt_struct.hour,dt_struct.min);
  if (dt_struct.hour == 平仓时 && dt_struct.min == 平仓分)
  {
    for (int i = PositionsTotal() - 1; i >= 0; i--)
    {
      if (m_position.SelectByIndex(i))
      {
        m_trade.PositionClose(m_position.Ticket());
      }
    }
  }
}
//+------------------------------------------------------------------+
