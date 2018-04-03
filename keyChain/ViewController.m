//
//  ViewController.m
//  keyChain
//
//  Created by 丁志杰 on 2018/4/3.
//  Copyright © 2018年 贞诺网络. All rights reserved.
//

#import "ViewController.h"
#import "MyKeyChain.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 增
    NSString * password = @"123456";
    NSString * token = @"555555";
    [MyKeyChain addData:password forService:@"PASSWORD"];
    [MyKeyChain addData:token forService:@"TOKEN"];

    // 更新
    [MyKeyChain updateData:@"456789" forService:@"PASSWORD"];
    
    // 删除
    //[MyKeyChain deleteDataWithService:@"PASSWORD"];
    
    // 取
    NSString * d = [MyKeyChain queryDataWithService:@"PASSWORD"];
    NSString * t = [MyKeyChain queryDataWithService:@"TOKEN"];
    NSLog(@"%@",d);
    NSLog(@"%@",t);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
