//
//  CircleView.m
//  Test
//
//  Created by 杨波 on 2017/11/30.
//  Copyright © 2017年 杨波. All rights reserved.
//

#import "CircleView.h"


@interface CircleView()


/**
 是是是
 */
@property (assign, nonatomic) NSInteger index;
@property (assign, nonatomic) BOOL  isTouching;

@end

@implementation CircleView
#define DEGREES_TO_RADIANS(degrees) ((M_PI * degrees)/180)
#define RADIANS_TO_DEGRESS(radians) ((radians * 180) / M_PI)
//@dynamic foo;
//@synthesize foo = _foo;
@dynamic foo;

/**
 <#Description#>
 */
- (void)awakeFromNib {
    [super awakeFromNib];
    _arr = @[@0.2, @0.2, @0.3, @0.3];
//    foo = @"ad";
    NSDictionary *DICT = @{@"1" : @12, @"2" : @13};
    DICT[@"1"];
    
    
}



/**
 是多少

 @param frame 十点多
 @return 谁说的
 */
- (instancetype)initWithFrame:(CGRect)frame {
    if (self= [super initWithFrame:frame]) {
        _foo = @"as";
        self.foo = @"gg";
//        NSLog(@"%@, %@", _foo, foo);
    }
    return self;
}


/**
 获取 a

 @param a zhi
 */
- (void)test:(NSInteger)a {
    
}

- (void)drawRect:(CGRect)rect {
    CGPoint center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    //Background circle
//    UIBezierPath *backgroundCircle = [UIBezierPath bezierPathWithArcCenter:center
//                                                           radius:50
//                                                       startAngle:DEGREES_TO_RADIANS(0.0f)
//                                                         endAngle:DEGREES_TO_RADIANS(360.0f)
//                                                        clockwise:YES];
//    [[UIColor blackColor] setFill];
//    [backgroundCircle fill];
    
    float startAngle = -90.0f;
    float degrees = 0;
    int width = 10;
    NSInteger index = 0;
    for (NSNumber *circleNum in _arr) {
        NSLog(@"%@", circleNum);
        if (circleNum.floatValue > 0) {
            degrees = circleNum.floatValue * 360.0f + startAngle;
            width += 5;
        }
        if (index == _index && _isTouching) {
            CGPoint center1 = CGPointMake(center.x + sin(DEGREES_TO_RADIANS(36)) * 5, center.y - cos(DEGREES_TO_RADIANS(36))* 5);
            
                UIBezierPath *circle2 = [UIBezierPath bezierPathWithArcCenter:center1
                                                                       radius:80                                                 startAngle:DEGREES_TO_RADIANS(startAngle)
                                                                     endAngle:DEGREES_TO_RADIANS(degrees)                                                    clockwise:YES];
                [[UIColor colorWithRed:arc4random_uniform(255.0)/ 255.0 green:arc4random_uniform(255.0)/ 255.0 blue:arc4random_uniform(255.0)/ 255.0 alpha:1] setStroke];
                circle2.lineWidth = 80;
                [circle2 stroke];
                startAngle = degrees;
            _isTouching = NO;
        }else{
        
                UIBezierPath *circle2 = [UIBezierPath bezierPathWithArcCenter:center
                                                                       radius:80                                                  startAngle:DEGREES_TO_RADIANS(startAngle)
                                                                     endAngle:DEGREES_TO_RADIANS(degrees)                                                    clockwise:YES];
                [[UIColor colorWithRed:arc4random_uniform(255.0)/ 255.0 green:arc4random_uniform(255.0)/ 255.0 blue:arc4random_uniform(255.0)/ 255.0 alpha:1] setStroke];
                circle2.lineWidth = 80;
                [circle2 stroke];
                startAngle = degrees;
         
        }
        
        index++;
    }
    startAngle = -90.0f;
    degrees = 0;
    width = 10;
    for (NSNumber *lineNum in _arr) {
        if (lineNum.floatValue > 0) {
            width += 5;
            degrees = lineNum.floatValue * 360.0f + startAngle;
            float angle = (degrees - startAngle) / 2 + startAngle;
            NSLog(@"%f", angle);
            CGFloat x1 = 0;
            CGFloat y1 = 0;
            CGFloat x2 = 0;
            CGFloat y2 = 0;
            CGFloat x3 = 0;
            CGFloat y3 = 0;
            if (angle > -90 && angle <= 0) {
                NSLog(@"1----%f", angle);
                x1 = center.x + cos(DEGREES_TO_RADIANS(fabs(angle))) * 125;
                y1 = center.y - sin(DEGREES_TO_RADIANS(fabs(angle))) * 125;
                x2 = center.x + cos(DEGREES_TO_RADIANS(fabs(angle))) * 145;
                y2 = center.y - sin(DEGREES_TO_RADIANS(fabs(angle))) * 145;
                x3 = self.frame.size.width - 10;
                y3 = y2;
                NSLog(@"%@", NSStringFromCGPoint(center));
                NSLog(@"1---- %f, %f, %f, %f ,%f, %f", x1, y1, x2,y2, x3, y3);
            }else if (angle > 0 && angle <= 90){
                NSLog(@"2----%f", angle);
                x1 = center.x + cos(DEGREES_TO_RADIANS(fabs(angle))) * 125;
                y1 = center.y + sin(DEGREES_TO_RADIANS(fabs(angle))) * 125;
                x2 = center.x + cos(DEGREES_TO_RADIANS(fabs(angle))) * 145;
                y2 = center.y + sin(DEGREES_TO_RADIANS(fabs(angle))) * 145;
                x3 = self.frame.size.width - 10;
                y3 = y2;
                NSLog(@"2---- %f, %f, %f, %f ,%f, %f", x1, y1, x2,y2, x3, y3);
            }else if (angle > 90 && angle <= 180){
                NSLog(@"3----%f", angle);
                x1 = center.x - cos(DEGREES_TO_RADIANS(fabs(180 - angle))) * 125;
                y1 = center.y + sin(DEGREES_TO_RADIANS(fabs(180 - angle))) * 125;
                x2 = center.x - cos(DEGREES_TO_RADIANS(fabs(180 - angle))) * 145;
                y2 = center.y + sin(DEGREES_TO_RADIANS(fabs(180 - angle))) * 145;
                x3 = 10;
                y3 = y2;
                NSLog(@"3---- %f, %f, %f, %f ,%f, %f", x1, y1, x2,y2, x3, y3);
            }else{
                NSLog(@"4----%f", angle);
                x1 = center.x - cos(DEGREES_TO_RADIANS(fabs(angle - 180))) * 125;
                y1 = center.y - sin(DEGREES_TO_RADIANS(fabs(angle - 180))) * 125;
                x2 = center.x - cos(DEGREES_TO_RADIANS(fabs(angle - 180))) * 145;
                y2 = center.y - sin(DEGREES_TO_RADIANS(fabs(angle - 180))) * 145;
                x3 = 10;
                y3 = y2;
                NSLog(@"4---- %f, %f, %f, %f ,%f, %f", x1, y1, x2,y2, x3, y3);
            }
            CGPoint  point1 = CGPointMake(x1, y1);
            CGPoint  point2 = CGPointMake(x2, y2);
            CGPoint  point3 = CGPointMake(x3, y3);
            UIBezierPath *path23 = [UIBezierPath bezierPath];
            [path23 moveToPoint:point1];
            [path23 addLineToPoint:point2];
            [path23 addLineToPoint:point3];
            path23.lineWidth = 2;
            [[UIColor redColor] setStroke];
            [path23 stroke];
            
            UIBezierPath *circlePath = [UIBezierPath bezierPathWithArcCenter:point1 radius:3 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
            [[UIColor redColor] setFill];
            [circlePath fill];

            startAngle = degrees;
        }
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
 
    CGPoint touchPoint = [touches.anyObject locationInView:self];
    if (sqrt(fabs(self.frame.size.width / 2 - touchPoint.x) * fabs(self.frame.size.width / 2 - touchPoint.x) + fabs(self.frame.size.height / 2 - touchPoint.y) * fabs(self.frame.size.height / 2 - touchPoint.y)) > 80 / 2.0 && sqrt(fabs(self.frame.size.width / 2 - touchPoint.x) * fabs(self.frame.size.width / 2 - touchPoint.x) + fabs(self.frame.size.height / 2 - touchPoint.y) * fabs(self.frame.size.height / 2 - touchPoint.y)) < 120.0) {
        NSLog(@"点击在圈上");
    }
    CGFloat radians = 0;
    if (touchPoint.x > self.frame.size.width / 2.0 && touchPoint.y <= self.frame.size.height /2.0) { // 第一象限
        if (touchPoint.y - self.frame.size.height /2.0 == 0) {
            radians = 90.0 / 360;
        }else{
            radians = RADIANS_TO_DEGRESS( atan((touchPoint.x - self.frame.size.width / 2.0) / fabs(touchPoint.y - self.frame.size.height / 2.0))) / 360.0;
        }
 
    }else if(touchPoint.x >= self.frame.size.width / 2.0 && touchPoint.y > self.frame.size.height/ 2.0){ // 第二象限
        if (touchPoint.x - self.frame.size.width /2.0 == 0) {
            radians = 0.5;
        }else{
            radians = 0.25 + RADIANS_TO_DEGRESS (atan(fabs(touchPoint.y - self.frame.size.height/2.0) / fabs(touchPoint.x - self.frame.size.width / 2.0) )) / 360.0;
        }
        
    }else if (touchPoint.x < self.frame.size.width / 2.0 && touchPoint.y >= self.frame.size.height/2.0){ // 第三象限
        if (touchPoint.y - self.frame.size.height /2.0 == 0) {
            radians = 0.75;
        }else{
            radians = 0.5 + RADIANS_TO_DEGRESS (atan(fabs(touchPoint.x - self.frame.size.width / 2.0) / fabs(touchPoint.y - self.frame.size.height/2.0))) / 360.0;
        }
        
    }else{ // 第四象限
        if (touchPoint.x - self.frame.size.width /2.0 == 0) {
            radians = 1;
        }else{
            radians = 0.75 + RADIANS_TO_DEGRESS(atan(fabs(touchPoint.y - self.frame.size.height/2.0) / fabs(touchPoint.x - self.frame.size.width / 2.0)))/ 360.0;
        }
    }
    NSArray *arr = @[@0.2, @0.4, @0.7, @1];
    if (radians < 0.2 ) {
        _index = 0;
        
        NSLog(@"一");
    }else if(radians < 0.4){
        _index = 1;
        NSLog(@"二");
    }else if (radians < 0.7){
        _index = 2;
        NSLog(@"三");
    }else{
        _index = 3;
        NSLog(@"四");
    }
    _isTouching = YES;
    [self setNeedsDisplay];
   
}

@end
