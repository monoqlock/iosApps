//
//  ViewController.h
//  ColorMaker
//
//  Created by 森川 かおり on 2015/01/24.
//  Copyright (c) 2015年 森川 かおり. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UILabel *colorCodeLabel;


@end

