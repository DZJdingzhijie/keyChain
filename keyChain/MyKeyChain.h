//
//  MyKeyChain.h
//  keyChain
//
//  Created by 丁志杰 on 2018/4/3.
//  Copyright © 2018年 贞诺网络. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface MyKeyChain : NSObject


/**
 添加数据
 
 @param data data
 @param service service
 @return BOOL
 */
+ (BOOL)addData:(id)data forService:(NSString *)service;


/**
 搜索获取数据
 
 @param service service
 @return id
 */
+ (id)queryDataWithService:(NSString *)service;


/**
 更新数据
 
 @param data data
 @param service service
 @return BOOL
 */
+ (BOOL)updateData:(id)data forService:(NSString *)service;


/**
 删除数据
 
 @param service service
 @return BOOL
 */
+ (BOOL)deleteDataWithService:(NSString *)service;
@end
