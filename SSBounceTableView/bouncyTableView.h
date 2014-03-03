//
//  bouncyTableView.h
//  SSBounceTableView
//
//  Created by Stevenson on 3/1/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface bouncyTableView : UITableView

@property (nonatomic) BOOL isVisible;
@property (nonatomic, copy) void (^recognizerBlock)(NSSet *view);

@end
