//
//  ViewController.m
//  GetSystemInfo_Demo
//
//  Created by admin on 2016/12/1.
//  Copyright © 2016年 AlezJi. All rights reserved.
// http://www.cocoachina.com/ios/20161130/18229.html
//获取iOS设备信息(内存/电量/容量/型号/IP地址/当前WIFI名称)
//http://www.jianshu.com/p/5e37fd7b7a00
//iOS获取当前连接Wi-Fi信息



#import "ViewController.h"
#import "GetSystemInfoHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    NSLog(@"获取电池电量(一般用百分数表示,大家自行处理就好)====%f",[GetSystemInfoHelper getBatteryQuantity]);
    NSLog(@"获取电池状态(UIDeviceBatteryState为枚举类型)====%ld",[GetSystemInfoHelper getBatteryStauts]);
    NSLog(@"获取总内存大小====%lld",[GetSystemInfoHelper getTotalMemorySize]);
    NSLog(@"容量转换====%@",[GetSystemInfoHelper fileSizeToString: [GetSystemInfoHelper getTotalMemorySize]]);
    NSLog(@"IP地址====%@",[GetSystemInfoHelper deviceIPAdress]);
    NSLog(@"当前手机连接的WIFI名称(SSID)====%@",[GetSystemInfoHelper getWifiName]);
    NSLog(@"获取当前连接Wi-Fi名称与MAC地址====%@",[GetSystemInfoHelper fetchSSIDInfo]);
    NSLog(@"获取当前连接Wi-Fi的IP地址====%@",[GetSystemInfoHelper getIPAddress:YES]);
    

    
    
}


@end
