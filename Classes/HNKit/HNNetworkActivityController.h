//
//  HNNetworkActivityController.h
//  HNKit
//
//  Created by Grant Paul on 3/3/13.
//  Copyright (c) 2013 Xuzz Productions, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HNNetworkActivityController : NSObject

+ (void (^)())newtorkActivityBeganBlock;
+ (void)setNetworkActivityBeganBlock:(void (^)())block;

+ (void (^)())newtorkActivityEndedBlock;
+ (void)setNetworkActivityEndedBlock:(void (^)())block;

+ (void)networkActivityBegan;
+ (void)networkActivityEnded;

@end
