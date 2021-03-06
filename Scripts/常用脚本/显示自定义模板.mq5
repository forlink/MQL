//+------------------------------------------------------------------+
//|                                                      显示自定义模板.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link "https://www.mql5.com"
#property version "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
  //--- 应用模板
  if (ChartApplyTemplate(0, "\\Profiles\\Templates\\my_template.tpl"))
  {
    Print("The template 'my_template.tpl' applied successfully");
    //--- 重绘图表
    ChartRedraw();
  }
  else
  {
    Print("Failed to apply 'my_template.tpl', error code ", GetLastError());
  }
}
