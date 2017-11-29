//
//  NSString+LJAdd.h
//  LJCategories
//
//  Created by 刘瑾 on 2017/11/9.
//  Copyright © 2017年 刘瑾. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LJAdd)


/**
 判断该实例是否为手机号码
1. 是否是11位
 2. 是否都是数字
 
 @return YES 是 NO 否
 */
-(BOOL) isMobilePhone;

#pragma mark - ---------------------- DATA 日期 ----------------------

/**
 将默认时间格式的字符串转化成指定格式的时间格式字符串
 目前 支持 默认格式有 yyyy-MM-dd & yyyy-MM-dd HH:mm:ss & yyyy-MM-dd HH:mm
 
 $ 表示汉字 _ 表示空格 HHmm 连在一起表示默认格式 如：HHmm -> HH:mm 或者 MMdd -> MM-dd
 */

// 转化为日期对象
@property (nonatomic, readonly) NSDate *date;

// 时间间隔
@property (nonatomic, readonly) double intervalSinceNow;
@property (nonatomic, readonly) double intervalSinceNowToDay;

// -> YYYY-MM-dd
@property (nonatomic, readonly) NSString * YYYYMMdd;
// -> MM月dd日
@property (nonatomic, readonly) NSString * MM$dd$;
// -> MM月dd号
@property (nonatomic, readonly) NSString * MMYddH;
// -> MM-dd
@property (nonatomic, readonly) NSString * MMdd;
// -> MM-dd HH:mm
@property(nonatomic,readonly) NSString * MMdd_HHmm;
// -> MM月dd日 HH:mm
@property (nonatomic, readonly) NSString * MM$dd$_HHmm;
// -> HH:mm
@property (nonatomic, readonly) NSString * HHmm;
// -> EE
@property (nonatomic, readonly) NSString * EE;


@end
