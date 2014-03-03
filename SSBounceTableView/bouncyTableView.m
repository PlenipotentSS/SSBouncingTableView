//
//  bouncyTableView.m
//  SSBounceTableView
//
//  Created by Stevenson on 3/1/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "bouncyTableView.h"
#import "BouncyHeaderView.h"

@interface bouncyTableView()

@property (nonatomic) BOOL touchesMoved;

@end

@implementation bouncyTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    self.isVisible = YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.touchesMoved = NO;
    [super touchesBegan:touches withEvent:event];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.touchesMoved = YES;
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (![[[[[touches valueForKey:@"view"] anyObject] superview] superview] isKindOfClass:[UITableViewCell class]] && !self.touchesMoved && ![[[touches valueForKey:@"view"] anyObject] isKindOfClass:[BouncyHeaderView class]])
    {
        self.recognizerBlock(touches);
    }
    [super touchesEnded:touches withEvent:event];
}

@end
