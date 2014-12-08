//
//  CustomAnimation1.m
//  UIPresentationControllerDemo
//
//  Created by heyuan on 14/12/6.
//  Copyright (c) 2014年 interfocusllc.com. All rights reserved.
//

#import "CustomAnimation1.h"

@implementation CustomAnimation1

//动画时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    //1. will to controller
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];

    //2. set init frame for toVC
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGRect initFrame = [transitionContext initialFrameForViewController:fromVC];
    CGRect finalFrame = CGRectOffset(initFrame, 0, screenBounds.size.height);

    
    //3. add toVC view to containerView
    UIView *containerView = [transitionContext containerView]; //存放tovc的view
    [containerView addSubview:toVC.view];
    [containerView sendSubviewToBack:toVC.view];
    
    //4. do animate
    NSTimeInterval duration = [self transitionDuration:transitionContext]; //动画时间
    [UIView animateWithDuration:duration animations:^{
        fromVC.view.frame = finalFrame;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];    
}

@end
