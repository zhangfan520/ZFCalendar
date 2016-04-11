类似去哪儿中的日历控件,显示农历，农历节日，公历节日,公历日期

Github：

（1）导入头文件

#import "CalendarHomeViewController.h"

#import "CalendarViewController.h"

#import "Color.h"

（2）声明CalendarHomeViewController实例变量：

CalendarHomeViewController *chvc;

（3）初始化方法：

[chvc setAirPlaneToDay:365 ToDateforString:nil];
