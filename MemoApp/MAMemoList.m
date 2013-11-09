//
//  MAMemoList.m
//  MemoApp
//
//  Created by Hiroshi Shimoju on 2013/11/09.
//  Copyright (c) 2013年 shimoju. All rights reserved.
//

#import "MAMemoList.h"

@implementation MAMemoList

+ (id)sharedMemoList {
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.memos = [[NSMutableArray alloc] init];
    return self;
}

@end
