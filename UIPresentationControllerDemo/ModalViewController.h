//
//  ModalViewController.h
//  UIPresentationControllerDemo
//
//  Created by heyuan on 14/12/5.
//  Copyright (c) 2014年 interfocusllc.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate;

@interface ModalViewController : UIViewController
@property (nonatomic, weak) id<ModalViewControllerDelegate> delegate;
@end

@protocol ModalViewControllerDelegate <NSObject>

-(void) modalViewControllerDidClickedDismissButton:(ModalViewController *)viewController;

@end