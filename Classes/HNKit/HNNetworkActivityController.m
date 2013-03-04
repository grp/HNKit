//
//  HNNetworkActivityController.m
//  HNKit
//
//  Created by Grant Paul on 3/3/13.
//  Copyright (c) 2013 Xuzz Productions, LLC. All rights reserved.
//

#import "HNNetworkActivityController.h"

@implementation HNNetworkActivityController

static void (^networkActivityBeganBlock)();
static void (^networkActivityEndedBlock)();

+ (void (^)())newtorkActivityBeganBlock {
    return networkActivityBeganBlock;
}

+ (void)setNetworkActivityBeganBlock:(void (^)())block {
    if (networkActivityBeganBlock != block) {
        [networkActivityBeganBlock release];
        networkActivityBeganBlock = [block copy];
    }
}

+ (void (^)())newtorkActivityEndedBlock {
    return networkActivityEndedBlock;
}

+ (void)setNetworkActivityEndedBlock:(void (^)())block {
    if (networkActivityEndedBlock != block) {
        [networkActivityEndedBlock release];
        networkActivityEndedBlock = [block copy];
    }
}

+ (void)networkActivityBegan {
    if (networkActivityBeganBlock != NULL) {
        networkActivityBeganBlock();
    }
}

+ (void)networkActivityEnded {
    if (networkActivityEndedBlock != NULL) {
        networkActivityEndedBlock();
    }
}

@end
