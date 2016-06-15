//
//  ViewController.m
//  colorChange
//
//  Created by  huiyuan on 16/3/11.
//  Copyright © 2016年  huiyuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //view的渐变色
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:self.gradientLayer];
    //设置渐变色的方向
    self.gradientLayer.startPoint = CGPointMake(0, 0);
    self.gradientLayer.endPoint = CGPointMake(1, 0);
    //设定颜色组
    self.gradientLayer.colors = @[(__bridge id)[UIColor colorWithRed:0.f green:193/255.f blue:238/255.f alpha:1].CGColor,
                                  (__bridge id)[UIColor colorWithRed:160/255.f green:191/255.f blue:252/255.f alpha:0.98].CGColor];
    //设定颜色分割点
    self.gradientLayer.locations = @[@(0.0f) ,@(1.0f)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
