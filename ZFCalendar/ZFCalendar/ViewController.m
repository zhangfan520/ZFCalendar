//
//  ViewController.m
//  ZFCalendar
//
//  Created by 张凡 on 15/12/3.
//  Copyright © 2015年 张凡. All rights reserved.
//

#import "ViewController.h"

#import "CalendarHomeViewController.h"
#import "CalendarViewController.h"
#import "Color.h"

@interface ViewController (){
    
    CalendarHomeViewController *chvc;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *but1 = [[UIButton alloc]initWithFrame:CGRectMake(10, 100, 300, 50)];
    but1.backgroundColor = COLOR_THEME;
    but1.tintColor = [UIColor whiteColor];
    but1.tag = 1;
    [but1 setTitle:@"飞机票" forState:UIControlStateNormal];
    [but1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1];
    
    
    UIButton *but2 = [[UIButton alloc]initWithFrame:CGRectMake(10, 200, 300, 50)];
    but2.backgroundColor = COLOR_THEME;
    but2.titleLabel.textColor = [UIColor whiteColor];
    but2.tag = 2;
    [but2 setTitle:@"火车票" forState:UIControlStateNormal];
    [but2 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view  addSubview:but2];
    
    
    UIButton *but3 = [[UIButton alloc]initWithFrame:CGRectMake(10, 300, 300, 50)];
    but3.backgroundColor = COLOR_THEME;
    but3.titleLabel.textColor = [UIColor whiteColor];
    but3.tag = 3;
    [but3 setTitle:@"酒店" forState:UIControlStateNormal];
    [but3 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but3];
}


-(void)click:(UIButton *)but
{
    
    if (!chvc) {
        
        chvc = [[CalendarHomeViewController alloc]init];
        
        chvc.calendartitle = @"飞机";
        
        [chvc setAirPlaneToDay:365 ToDateforString:nil];//飞机初始化方法
        
    }
    
    
    
    
    
    chvc.calendarblock = ^(CalendarDayModel *model){
        
        NSLog(@"\n---------------------------");
        NSLog(@"1星期 %@",[model getWeek]);
        NSLog(@"2字符串 %@",[model toString]);
        NSLog(@"3节日  %@",model.holiday);
        
        if (model.holiday) {
            
            [but setTitle:[NSString stringWithFormat:@"%@ %@ %@",[model toString],[model getWeek],model.holiday] forState:UIControlStateNormal];
            
        }else{
            
            [but setTitle:[NSString stringWithFormat:@"%@ %@",[model toString],[model getWeek]] forState:UIControlStateNormal];
            
        }
    };
    
    [self.navigationController pushViewController:chvc animated:YES];
    
    
    
}


@end
