//
//  SafeObjectAlert.m
//  NetSchool
//
//  Created by 董佳旺 on 2020/6/22.
//  Copyright © 2020 CDEL. All rights reserved.
//

#import "SafeObjectJumpCrash.h"
#import "DLCCPlayViewController.h"

@implementation SafeObjectJumpCrash

+ (instancetype)shareInstance {
    static SafeObjectJumpCrash *shareInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[super alloc] init];
    });
    return shareInstance;
}

- (BOOL)jumpCrash {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    if ([delegate.topViewController isKindOfClass:[DLCCPlayViewController class]]) {
        return YES;
    }
    return NO;
}

@end
