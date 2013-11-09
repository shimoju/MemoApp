//
//  MAViewController.m
//  MemoApp
//
//  Created by Hiroshi Shimoju on 2013/11/09.
//  Copyright (c) 2013年 shimoju. All rights reserved.
//

#import "MAViewController.h"
#import "MAMemoList.h"
#import "MAMemo.h"

@interface MAViewController ()

@property (weak, nonatomic) IBOutlet UITextField *memoText;

@end

@implementation MAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createMemo:(id)sender {
    MAMemo *memo = [[MAMemo alloc] init];
    memo.title = self.memoText.text;

    [[[MAMemoList sharedMemoList] memos] addObject:memo];
}

@end
