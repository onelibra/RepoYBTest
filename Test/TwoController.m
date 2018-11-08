//
//  TwoController.m
//  Test
//
//  Created by 杨波 on 2018/2/26.
//  Copyright © 2018年 杨波. All rights reserved.
//

#import "TwoController.h"

@protocol TwoControllerDelegate <NSObject>

@property (nonatomic, strong) NSArray  *arr;

@end
@interface TwoController ()

@property (nonatomic, copy) NSMutableArray  *var;
@property (nonatomic, strong) CircleView  *cirleVc;
@end

@implementation TwoController

- (void)viewDidLoad {
    [super viewDidLoad];
//    _cirleVc = [[CircleView alloc] init];
//    _var = [NSMutableArray arrayWithArray:@[@"1", @"2"]];
//    NSMutableArray *newVar = _var;
//    _cirleVc.testBlock = ^{
//        [newVar removeAllObjects];
//    };
//
//    _cirleVc.testBlock();
//    NSLog(@"%@, %@", _var, newVar);
//
////    _var = newVar;
    NSMutableArray *arr = [NSMutableArray array];
    NSMutableArray *tmpArr = [arr copy];
    [tmpArr addObject:@1];
    
    
}


- (void)dealloc {
    NSLog(@"xiaohui");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
