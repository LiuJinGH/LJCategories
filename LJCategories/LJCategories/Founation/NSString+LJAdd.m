//
//  NSString+LJAdd.m
//  LJCategories
//
//  Created by 刘瑾 on 2017/11/9.
//  Copyright © 2017年 刘瑾. All rights reserved.
//

#import "NSString+LJAdd.h"
#import "NSScanner+LJAdd.h"

@implementation NSString (LJAdd)

/**
 判断该实例是否为手机号码
 1. 是否是11位
 2. 是否都是数字
 
 @return YES 是 NO 否
 */
-(BOOL) isMobilePhone{
    if (self.length != 11) return NO;
    NSScanner* scan = [NSScanner scannerWithString:self];
    int counter = 0;
    return [scan scanIntOnly:&counter];
    
}

#pragma mark - ---------------------- DATA 日期 ----------------------

-(NSDate *)date{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    if (self.length == 19) {
        // yyyy-MM-dd HH:mm:ss length == 19
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    }else if (self.length == 16){
        // yyyy-MM-dd HH:mm length == 16
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    }else if (self.length == 10){
        // yyyy-MM-dd length == 10
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    }
    return [dateFormatter dateFromString:self];
}


-(NSString *)date:(NSString *) dateStr getFormatterStr:(NSString *)formatterStr{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:formatterStr];
    return [dateFormatter stringFromDate:self.date];
}

-(NSString *)YYYYMMdd{
    return [self date:self getFormatterStr:@"YYYY-MM-dd"];
}

-(NSString *)MM$dd${
    return [self date:self getFormatterStr:@"MM月dd日"];
}

-(NSString *)MMYddH{
    return [self date:self getFormatterStr:@"MM月dd号"];
}

-(NSString *)MMdd{
    return [self date:self getFormatterStr:@"MM-dd"];
}

-(NSString *) EE{
    return [self date:self getFormatterStr:@"EE"];
}

-(NSString *)HHmm{
    return [self date:self getFormatterStr:@"HH:mm"];
}

-(NSString *)MMdd_HHmm{
    return [self date:self getFormatterStr:@"MM-dd HH:mm"];
}

-(NSString *)MM$dd$_HHmm{
    return [self date:self getFormatterStr:@"MM月dd日 HH:mm"];
}

-(double)intervalSinceNow{
    return [self.date timeIntervalSinceNow];
}

-(double)intervalSinceNowToDay{
    double days = self.intervalSinceNow / (60*60*24);
    return days;
}

@end
