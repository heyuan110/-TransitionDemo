//
//  SwipeUpInteractiveTransition.h
//  UIPresentationControllerDemo
//
//  Created by heyuan on 14/12/8.
//  Copyright (c) 2014年 interfocusllc.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeUpInteractiveTransition : UIPercentDrivenInteractiveTransition

@property (nonatomic, assign) BOOL interacting;

- (void)wireToViewController:(UIViewController*)viewController;

@end
