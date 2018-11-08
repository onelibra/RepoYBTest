//
//  ViewController.m
//  Test
//
//  Created by 杨波 on 2017/11/30.
//  Copyright © 2017年 杨波. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "TwoController.h"
@interface ViewController ()

@property (copy, nonatomic) NSMutableArray *mutableArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *arr = [NSMutableArray array];
    _mutableArr = [arr mutableCopy];
    
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:@{@"q": @1}];
    dict[@"a"] = @2;
    dict[@"b"] = @3;
    dict[@"d"] = nil;
    dict[@"e"] = @4;
    [arr addObject:@1];
    NSLog(@"%@", _mutableArr);
//    NSMutableArray *tmpArr = [arr copy];
//    [tmpArr addObject:@1];
    NSString *testpath = [[NSBundle mainBundle] pathForResource:@"area" ofType:@"json"];
    NSString *content = [[NSString alloc] initWithContentsOfFile:testpath encoding:NSUTF8StringEncoding error:nil];
    
    
    NSData *JSONData = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableContainers error:nil];
    
    NSData *data2 = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:testpath]];
    NSDictionary *arr2 = [NSJSONSerialization JSONObjectWithData:data2 options:NSJSONReadingAllowFragments error:nil];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"address_js" ofType:@"js"];
    NSError *error;
     NSString *string = [[NSString alloc] initWithContentsOfFile:plistPath encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"%@, %@", string, error);
    
    
    NSData *data1 = [NSData dataWithContentsOfFile:plistPath options:NSDataReadingMappedIfSafe error:&error];
    NSLog(@"%@", error.localizedDescription);
    NSData *data = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:plistPath]]; //[NSData dataWithContentsOfFile:plistPath];
    NSArray *arr1 = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    TwoController *twoVc = [[TwoController alloc] init];
//    twoVc.view.backgroundColor = [UIColor blueColor];
//    [self.navigationController pushViewController:twoVc animated:YES];
    [self performSegueWithIdentifier:@"Test" sender:nil];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 00, 00, 0) style:UITableViewStylePlain];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"%@, %@", segue.sourceViewController, segue.destinationViewController);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
