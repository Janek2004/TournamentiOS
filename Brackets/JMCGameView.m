//
//  JMCGameView.m
//  Test
//
//  Created by sadmin on 8/3/14.
//  Copyright (c) 2014 Janusz Chudzynski. All rights reserved.
//

#import "JMCGameView.h"

@implementation JMCGameView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [self addView];
    // Drawing code
}
-(void)addView{
    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 0.833 green: 0.833 blue: 0.833 alpha: 1];
    
    //// Abstracted Attributes
    NSString* text3Content = @"1";
    NSString* textContent = @"Team 1";
    NSString* text2Content = @"Team 1";
    
    
    //// Group
    {
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(26.5, 27.5, 86, 0)];
        [[UIColor whiteColor] setFill];
        [rectangle2Path fill];
        [[UIColor blackColor] setStroke];
        rectangle2Path.lineWidth = 1;
        [rectangle2Path stroke];
        
        
        //// Rounded Rectangle Drawing
        UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(42.5, 21.5, 54, 12) cornerRadius: 4];
        [color2 setFill];
        [roundedRectanglePath fill];
        [[UIColor blackColor] setStroke];
        roundedRectanglePath.lineWidth = 1;
        [roundedRectanglePath stroke];
        
        
        //// Text Drawing
        CGRect textRect = CGRectMake(41, 24, 55, 10);
        NSMutableParagraphStyle* textStyle = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
        [textStyle setAlignment: NSTextAlignmentCenter];
        
        NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 7], NSForegroundColorAttributeName: [UIColor blackColor], NSParagraphStyleAttributeName: textStyle};
        
        [textContent drawInRect: textRect withAttributes: textFontAttributes];
    }
    
    
    //// Group 2
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(26.5, 77.5, 86, 0)];
        [[UIColor whiteColor] setFill];
        [rectanglePath fill];
        [[UIColor blackColor] setStroke];
        rectanglePath.lineWidth = 1;
        [rectanglePath stroke];
        
        
        //// Rounded Rectangle 2 Drawing
        UIBezierPath* roundedRectangle2Path = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(42.5, 71.5, 54, 12) cornerRadius: 4];
        [color2 setFill];
        [roundedRectangle2Path fill];
        [[UIColor blackColor] setStroke];
        roundedRectangle2Path.lineWidth = 1;
        [roundedRectangle2Path stroke];
        
        
        //// Text 2 Drawing
        CGRect text2Rect = CGRectMake(41, 73, 55, 11);
        NSMutableParagraphStyle* text2Style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
        [text2Style setAlignment: NSTextAlignmentCenter];
        
        NSDictionary* text2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 7], NSForegroundColorAttributeName: [UIColor blackColor], NSParagraphStyleAttributeName: text2Style};
        
        [text2Content drawInRect: text2Rect withAttributes: text2FontAttributes];
    }
    
    
    //// Rectangle 3 Drawing
    UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(112.5, 27.5, 0, 50)];
    [[UIColor whiteColor] setFill];
    [rectangle3Path fill];
    [[UIColor blackColor] setStroke];
    rectangle3Path.lineWidth = 1;
    [rectangle3Path stroke];
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(103.5, 43.5, 18, 18)];
    [color2 setFill];
    [ovalPath fill];
    [[UIColor blackColor] setStroke];
    ovalPath.lineWidth = 1;
    [ovalPath stroke];
    
    
    //// Text 3 Drawing
    CGRect text3Rect = CGRectMake(103, 46, 18, 11);
    NSMutableParagraphStyle* text3Style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    [text3Style setAlignment: NSTextAlignmentCenter];
    
    NSDictionary* text3FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 9], NSForegroundColorAttributeName: [UIColor blackColor], NSParagraphStyleAttributeName: text3Style};
    
    [text3Content drawInRect: text3Rect withAttributes: text3FontAttributes];
    
    
    //    self.view addSubview:
}

@end
