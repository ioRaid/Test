//
//  ViewController.m
//  ConfigDemo
//
//  Created by yuxiang on 2017/7/23.
//  Copyright © 2017年 com.vipraid. All rights reserved.
//

#if defined (CONFIGURATION_UAT)||defined (CONFIGURATION_Debug)
#define BaseURL @"http://tst-api2.nmtx.me"
#endif


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(BaseURL);


    
}
    


    
- (NSString*) readValueFromConfigurationFile {
    NSBundle*bundle = [NSBundle mainBundle];
    NSString *path =[bundle pathForResource:@"Configuration"ofType:@"plist"];
    NSDictionary*config = [NSDictionary dictionaryWithContentsOfFile:path];
    return config[@"configParameter"];
}
   

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
