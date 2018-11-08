//
//  CircleView.h
//  Test
//
//  Created by 杨波 on 2017/11/30.
//  Copyright © 2017年 杨波. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView
{
    NSString *_foo;
}
@property (strong, nonatomic) NSArray  *arr;
@property (nonatomic, strong) NSString *foo;

@property (nonatomic, copy) void(^testBlock)();

- (void)setFoot:(NSString *)foot;
- (NSString *)getFoot;

@end
