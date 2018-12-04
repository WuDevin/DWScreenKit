//
//  DWViewController.m
//  DWScreenKit
//
//  Created by lg on 12/04/2018.
//  Copyright (c) 2018 lg. All rights reserved.
//

#import "DWViewController.h"
#import "DWScreenKitInline.h"

@interface DWViewController ()

@end

@implementation DWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"设备名称--%@",kDeviceModelName());
    NSLog(@"设备尺寸宽高 %f.%f",kScreenWidth(),kScreenHeight());
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
