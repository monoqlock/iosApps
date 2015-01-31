//
//  ViewController.m
//  ColorMaker
//
//  Created by 森川 かおり on 2015/01/24.
//  Copyright (c) 2015年 森川 かおり. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorChanged:(id)sender {
    float r = self.redSlider.value;
    float g = self.greenSlider.value;
    float b = self.blueSlider.value;
    UIColor *color = [UIColor colorWithRed:r green:g blue:b alpha:1.0f];
    self.colorView.backgroundColor = color;
    
    NSString *codeStr = [NSString stringWithFormat:@"#%02x%02x%02x", (int)(r*255), (int)(g*255), (int)(b*255)];
    self.colorCodeLabel.text = codeStr;
}

@end
