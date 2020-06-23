//
//  SafeObjectAlert.h
//  NetSchool
//
//  Created by 董佳旺 on 2020/6/22.
//  Copyright © 2020 CDEL. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SafeObjectJumpCrash : NSObject

+ (instancetype)shareInstance;

- (BOOL)jumpCrash;

@end

NS_ASSUME_NONNULL_END
