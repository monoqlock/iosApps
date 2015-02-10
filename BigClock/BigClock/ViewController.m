//
//  ViewController.m
//  BigClock
//
//  Created by 森川 かおり on 2015/01/31.
//  Copyright (c) 2015年 森川 かおり. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *baseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *hourImageView;
@property (weak, nonatomic) IBOutlet UIImageView *minImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secImageView;


@end

@implementation ViewController {
    NSTimer *timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(timerProc:)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)timerProc: (NSTimer *)timer {
    NSDate *date = [NSDate date];
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:(NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit) fromDate:date];

    
    int hour = components.hour % 12;
    int min = components.minute;
    int sec = components.second;
    
    float secAngle = (M_PI*2)/60*sec;
    float minAngle = (M_PI*2)/60*min + secAngle/60;
    float hourAngle = (M_PI*2)/12* hour + minAngle/12;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    self.hourImageView.transform = CGAffineTransformMakeRotation(hourAngle);
    self.minImageView.transform = CGAffineTransformMakeRotation(minAngle);
    self.secImageView.transform = CGAffineTransformMakeRotation(secAngle);
    
    [UIView commitAnimations];
}
@end
