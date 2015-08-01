//
//  ViewController.m
//  JTFadingInfoViewController
//
//  Created by DCL_JT on 2015/07/29.
//  Copyright (c) 2015年 Junichi Tsurukawa. All rights reserved.
//

#import "ViewController.h"
#import "JTFadingInfoViewController.h"
#import "JTFadingInformationButton.h"

@interface ViewController (){
  JTFadingInformationButton *infoLabel;
  UILabel *subLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UITableView *tableview = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [self.view addSubview:tableview];
  
  UIButton *buttonAppear = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
  buttonAppear.backgroundColor = [UIColor greenColor];
  buttonAppear.titleLabel.text = @"RM";
  [buttonAppear addTarget:self action:@selector(disappear) forControlEvents:UIControlEventTouchDown];
  [self.view addSubview:buttonAppear];
  
  UIButton *buttonDisappear = [[UIButton alloc] initWithFrame:CGRectMake(200, 100, 50, 50)];
  buttonDisappear.backgroundColor = [UIColor blackColor];
  buttonDisappear.titleLabel.text = @"RM";
  [buttonDisappear addTarget:self action:@selector(appear) forControlEvents:UIControlEventTouchDown];
  [self.view addSubview:buttonDisappear];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)appear
{
  CGRect screenFrame = [[UIScreen mainScreen] bounds];
  CGRect frame = CGRectZero;
  frame.origin.x = screenFrame.size.width / 4;
  frame.origin.y = screenFrame.size.height * 4/5;
  frame.size.width = screenFrame.size.width / 2;
  frame.size.height = 50;
  
  infoLabel = [[JTFadingInformationButton alloc] initWithFrame:frame];
  
//  infoLabel.titleLabel.text = @"test";
  [infoLabel setTitle:@"test" forState:UIControlStateNormal];
  infoLabel.isAnimationEnabled = YES;
  infoLabel.appearingDuration = 0.5f;
  infoLabel.disappearingDuration = 0.5f;
  
  [self.view addSubview:infoLabel];
  //[self appear];
}

- (void)disappear
{
  NSLog(@"in function disappear!");
  [infoLabel disappearFromSuperview];
  
}



@end
