//
//  NSDate+LJAdd.h
//  LJCategories
//
//  Created by 刘瑾 on 2017/11/29.
//  Copyright © 2017年 刘瑾. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (LJAdd)

#pragma mark - ---------------------- String  ----------------------

/**
 将日期转化成指定格式的字符串形式显示。
 */
@property (nonatomic, readonly) NSDate *localDate;
// 周五 Fri
@property (nonatomic, readonly) NSString *EE;
// 11-29
@property (nonatomic, readonly) NSString *MMdd;
// 11:25
@property (nonatomic, readonly) NSString *HHmm;
// 2017-11-29 11:25:00
@property (nonatomic, readonly) NSString *yyyyMMdd_HHmmss;
// 2017-11-29
@property (nonatomic, readonly) NSString *yyyyMMdd;

@end
