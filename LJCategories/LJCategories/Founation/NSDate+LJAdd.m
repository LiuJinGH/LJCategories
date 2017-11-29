//
//  NSDate+LJAdd.m
//  LJCategories
//
//  Created by 刘瑾 on 2017/11/29.
//  Copyright © 2017年 刘瑾. All rights reserved.
//

#import "NSDate+LJAdd.h"

@implementation NSDate (LJAdd)

#pragma mark - ---------------------- String  ----------------------

-(NSDate *)localDate{
    
    NSTimeZone *zone = [NSTimeZone systemTimeZone]; // 获得系统的时区
    NSTimeInterval time = [zone secondsFromGMTForDate:self]; // 以秒为单位返回当前时间与系统格林尼治时间的差
    NSDate *localDate = [self dateByAddingTimeInterval:time];// 然后把差的时间加上,就是当前系统准确的时间
    return localDate;
}

-(NSString *) getDateFormatterString:(NSString *)dateformatter{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateformatter;
    return [dateFormatter stringFromDate:self];
}

-(NSString *)EE{
    return [self getDateFormatterString:@"EE"];
}

-(NSString *)MMdd{
    return [self getDateFormatterString:@"MM-dd"];
}

-(NSString *)HHmm{
    return [self getDateFormatterString:@"HH:mm"];
}

-(NSString *)yyyyMMdd_HHmmss{
    return [self getDateFormatterString:@"yyyy-MM-dd HH:mm:ss"];
}

-(NSString *)yyyyMMdd{
    return [self getDateFormatterString:@"yyyy-MM-dd"];
}

@end
