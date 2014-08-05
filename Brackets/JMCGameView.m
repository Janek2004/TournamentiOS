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
    [self drawCanvas1WithTeam1Name:@"Erick/Taylor" team2Name:@"Charlie/Chealsea" gameNumber:@"11" height:60 horizontal_topy:25 team2LabelHeight:16 team2BackgroundHeight:28 team2ButtonHeight:20 team_font_size:9 left_boundary:0];
    
    [self drawCanvas1WithTeam1Name:@"Janek/Taylor" team2Name:@"Keith/Chealsea" gameNumber:@"12" height:60 horizontal_topy:130 team2LabelHeight:16 team2BackgroundHeight:28 team2ButtonHeight:20 team_font_size:9 left_boundary:0];
    
    [self drawCanvas1WithTeam1Name:@"Janek/Taylor" team2Name:@"Keith/Chealsea" gameNumber:@"13" height:105 horizontal_topy:55 team2LabelHeight:16 team2BackgroundHeight:28 team2ButtonHeight:20 team_font_size:9 left_boundary:162];
    
    // Drawing code
}

- (void)drawCanvas1WithTeam1Name: (NSString*)team1Name team2Name: (NSString*)team2Name gameNumber: (NSString*)gameNumber height: (CGFloat)height horizontal_topy: (CGFloat)horizontal_topy team2LabelHeight: (CGFloat)team2LabelHeight team2BackgroundHeight: (CGFloat)team2BackgroundHeight team2ButtonHeight: (CGFloat)team2ButtonHeight team_font_size: (CGFloat)team_font_size left_boundary: (CGFloat)left_boundary;
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 0.825 green: 0.922 blue: 1 alpha: 1];
    UIColor* color2 = [UIColor colorWithRed: 0.038 green: 0.286 blue: 0.357 alpha: 1];
    
    //// Variable Declarations
    CGFloat horizontal_expression = horizontal_topy + height;
    CGFloat gameNumberExpression = horizontal_topy + height / 2.0 - 12;
    CGFloat horizontalCenterExpression = horizontal_topy + height / 2.0 ;
    CGFloat team1BackgroundExpression = horizontal_topy + 1 - 28.0 / 2.0;
    CGFloat team1TextExpression = horizontal_topy + 1 - 20.0 / 2.0;
    CGFloat team2LabelExpression = horizontal_topy + height - team2LabelHeight / 2.0;
    CGFloat team2BackgroundExpression = horizontal_topy + height - team2BackgroundHeight / 2.0;
    CGFloat team2ButtonExpression = horizontal_topy + height - team2ButtonHeight / 2.0;
    CGFloat team1ButtonExpression = horizontal_topy - team2ButtonHeight / 2.0 + 1;
    CGFloat left_team_background_expression = left_boundary + 19.5;
    CGFloat left_label_expression = left_boundary + 22.5;
    CGFloat left_button = left_boundary + 97;
    CGFloat left_game_number_expression = left_boundary + 122;
    CGFloat left_vertical_line_expression = left_boundary + 133;
    
    //// vertical_center Drawing
    UIBezierPath* vertical_centerPath = [UIBezierPath bezierPathWithRect: CGRectMake(left_vertical_line_expression, horizontalCenterExpression, 30, 2)];
    [color2 setFill];
    [vertical_centerPath fill];
    
    
    //// horizontal_top Drawing
    UIBezierPath* horizontal_topPath = [UIBezierPath bezierPathWithRect: CGRectMake(left_boundary, horizontal_topy, 135, 2)];
    [color2 setFill];
    [horizontal_topPath fill];
    
    
    //// horizontal_bottom Drawing
    UIBezierPath* horizontal_bottomPath = [UIBezierPath bezierPathWithRect: CGRectMake(left_boundary, horizontal_expression, 135, 2)];
    [color2 setFill];
    [horizontal_bottomPath fill];
    
    
    //// vertical Drawing
    UIBezierPath* verticalPath = [UIBezierPath bezierPathWithRect: CGRectMake(left_vertical_line_expression, horizontal_topy, 2, height)];
    [color2 setFill];
    [verticalPath fill];
    
    
    //// gameNumberBackground Drawing
    UIBezierPath* gameNumberBackgroundPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(left_game_number_expression, gameNumberExpression, 24, 24)];
    [color setFill];
    [gameNumberBackgroundPath fill];
    [color2 setStroke];
    gameNumberBackgroundPath.lineWidth = 1;
    [gameNumberBackgroundPath stroke];
    
    
    //// team1Background Drawing
    UIBezierPath* team1BackgroundPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(left_team_background_expression, team1BackgroundExpression, 100, 28) cornerRadius: 2];
    [color setFill];
    [team1BackgroundPath fill];
    [color2 setStroke];
    team1BackgroundPath.lineWidth = 1;
    [team1BackgroundPath stroke];
    
    
    //// team1Label Drawing
    CGRect team1LabelRect = CGRectMake(left_label_expression, team1TextExpression, 73.5, 20.5);
    NSMutableParagraphStyle* team1LabelStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    team1LabelStyle.alignment = NSTextAlignmentLeft;
    
    NSDictionary* team1LabelFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: team_font_size], NSForegroundColorAttributeName: color2, NSParagraphStyleAttributeName: team1LabelStyle};
    
    [team1Name drawInRect: CGRectOffset(team1LabelRect, 0, (CGRectGetHeight(team1LabelRect) - [team1Name boundingRectWithSize: team1LabelRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: team1LabelFontAttributes context: nil].size.height) / 2) withAttributes: team1LabelFontAttributes];
    
    
    //// gameNumberText Drawing
    CGRect gameNumberTextRect = CGRectMake(left_game_number_expression, gameNumberExpression, 24, 24);
    NSMutableParagraphStyle* gameNumberTextStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    gameNumberTextStyle.alignment = NSTextAlignmentCenter;
    
    NSDictionary* gameNumberTextFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 9], NSForegroundColorAttributeName: color2, NSParagraphStyleAttributeName: gameNumberTextStyle};
    
    [gameNumber drawInRect: CGRectOffset(gameNumberTextRect, 0, (CGRectGetHeight(gameNumberTextRect) - [gameNumber boundingRectWithSize: gameNumberTextRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: gameNumberTextFontAttributes context: nil].size.height) / 2) withAttributes: gameNumberTextFontAttributes];
    
    
    //// team1Button Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, left_button, team1ButtonExpression);
    
    UIBezierPath* team1ButtonPath = UIBezierPath.bezierPath;
    [team1ButtonPath moveToPoint: CGPointMake(10, 20)];
    [team1ButtonPath addCurveToPoint: CGPointMake(20, 10) controlPoint1: CGPointMake(15.52, 20) controlPoint2: CGPointMake(20, 15.52)];
    [team1ButtonPath addCurveToPoint: CGPointMake(10, 0) controlPoint1: CGPointMake(20, 4.48) controlPoint2: CGPointMake(15.52, 0)];
    [team1ButtonPath addCurveToPoint: CGPointMake(0, 10) controlPoint1: CGPointMake(4.48, 0) controlPoint2: CGPointMake(0, 4.48)];
    [team1ButtonPath addCurveToPoint: CGPointMake(10, 20) controlPoint1: CGPointMake(0, 15.52) controlPoint2: CGPointMake(4.48, 20)];
    [team1ButtonPath closePath];
    [team1ButtonPath moveToPoint: CGPointMake(6.9, 4.74)];
    [team1ButtonPath addLineToPoint: CGPointMake(7.37, 4.27)];
    [team1ButtonPath addLineToPoint: CGPointMake(13.1, 10)];
    [team1ButtonPath addLineToPoint: CGPointMake(7.37, 15.73)];
    [team1ButtonPath addLineToPoint: CGPointMake(6.9, 15.26)];
    [team1ButtonPath addLineToPoint: CGPointMake(12.16, 10)];
    [team1ButtonPath addLineToPoint: CGPointMake(6.9, 4.74)];
    [team1ButtonPath closePath];
    [color2 setFill];
    [team1ButtonPath fill];
    
    CGContextRestoreGState(context);
    
    
    //// team2Background Drawing
    UIBezierPath* team2BackgroundPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(left_team_background_expression, team2BackgroundExpression, 100, 28) cornerRadius: 2];
    [color setFill];
    [team2BackgroundPath fill];
    [color2 setStroke];
    team2BackgroundPath.lineWidth = 1;
    [team2BackgroundPath stroke];
    
    
    //// team2Label Drawing
    CGRect team2LabelRect = CGRectMake(left_label_expression, team2LabelExpression, 73.5, 16);
    NSMutableParagraphStyle* team2LabelStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    team2LabelStyle.alignment = NSTextAlignmentLeft;
    
    NSDictionary* team2LabelFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: team_font_size], NSForegroundColorAttributeName: color2, NSParagraphStyleAttributeName: team2LabelStyle};
    
    [team2Name drawInRect: CGRectOffset(team2LabelRect, 0, (CGRectGetHeight(team2LabelRect) - [team2Name boundingRectWithSize: team2LabelRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: team2LabelFontAttributes context: nil].size.height) / 2) withAttributes: team2LabelFontAttributes];
    
    
    //// team2Button Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, left_button, team2ButtonExpression);
    
    UIBezierPath* team2ButtonPath = UIBezierPath.bezierPath;
    [team2ButtonPath moveToPoint: CGPointMake(10, 20)];
    [team2ButtonPath addCurveToPoint: CGPointMake(20, 10) controlPoint1: CGPointMake(15.52, 20) controlPoint2: CGPointMake(20, 15.52)];
    [team2ButtonPath addCurveToPoint: CGPointMake(10, 0) controlPoint1: CGPointMake(20, 4.48) controlPoint2: CGPointMake(15.52, 0)];
    [team2ButtonPath addCurveToPoint: CGPointMake(0, 10) controlPoint1: CGPointMake(4.48, 0) controlPoint2: CGPointMake(0, 4.48)];
    [team2ButtonPath addCurveToPoint: CGPointMake(10, 20) controlPoint1: CGPointMake(0, 15.52) controlPoint2: CGPointMake(4.48, 20)];
    [team2ButtonPath closePath];
    [team2ButtonPath moveToPoint: CGPointMake(6.9, 4.74)];
    [team2ButtonPath addLineToPoint: CGPointMake(7.37, 4.27)];
    [team2ButtonPath addLineToPoint: CGPointMake(13.1, 10)];
    [team2ButtonPath addLineToPoint: CGPointMake(7.37, 15.73)];
    [team2ButtonPath addLineToPoint: CGPointMake(6.9, 15.26)];
    [team2ButtonPath addLineToPoint: CGPointMake(12.16, 10)];
    [team2ButtonPath addLineToPoint: CGPointMake(6.9, 4.74)];
    [team2ButtonPath closePath];
    [color2 setFill];
    [team2ButtonPath fill];
    
    CGContextRestoreGState(context);
}






@end
