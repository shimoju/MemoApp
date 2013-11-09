//
//  MAMemoList.h
//  MemoApp
//
//  Created by Hiroshi Shimoju on 2013/11/09.
//  Copyright (c) 2013年 shimoju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAMemoList : NSObject

@property (nonatomic, strong) NSMutableArray *memos;

+ (id)sharedMemoList;

@end
