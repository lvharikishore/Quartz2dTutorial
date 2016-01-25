//
//  draw2D.m
//  Quartz2dTutorial
//
//  Created by Hari Kishore on 25/01/16.
//  Copyright © 2016 Hari Kishore. All rights reserved.
//

#import "draw2D.h"

@implementation draw2D

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    
//    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
//    CGFloat components[] = {0.0, 0.0, 1.0, 1.0};
//    CGColorRef color = CGColorCreate(colorspace, components);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, CGRectGetMaxX(self.frame), CGRectGetMaxY(self.frame));
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, 0, 0);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, CGRectGetMaxX(self.frame)/2, 0);

    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, 0, CGRectGetMaxY(self.frame)/2);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame));
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, CGRectGetMaxX(self.frame), CGRectGetMaxY(self.frame)/2);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, 0, CGRectGetMaxY(self.frame));
    
    CGContextMoveToPoint(context, CGRectGetMaxX(self.frame)/2, CGRectGetMaxY(self.frame)/2);
    CGContextAddLineToPoint(context, CGRectGetMaxX(self.frame), 0);
    
    CGContextStrokePath(context);
    //CGColorSpaceRelease(colorspace);
    //CGColorRelease(color);
}


@end
