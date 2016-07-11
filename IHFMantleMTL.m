//
//  IHFMantleMTL.m
//  IHFMedicImage2.0
//
//  Created by ihefe－hulinhua on 16/6/12.
//  Copyright © 2016年 Hanrovey. All rights reserved.
//

#import "IHFMantleMTL.h"
#import <objc/runtime.h>

@implementation IHFMantleMTL

- (NSDictionary *)PropertyKey
{
    NSDictionary *key;
    return key;
}

- (void)dictionaryToModel:(NSDictionary*)JsonDic
{
    
    unsigned int outCount, i;
    NSMutableSet *keys = [NSMutableSet set];
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    
    for (i=0; i<outCount; i++) {
        objc_property_t property = properties[i];
        NSString * key = [[NSString alloc]initWithCString:property_getName(property)  encoding:NSUTF8StringEncoding];
        [keys addObject:key];
        
    }
    
    NSDictionary *keyDic =  [self PropertyKey];
    if (keyDic) {
        
    }else
    {
        
    }
}

@end
