//
//  CustomActionSheet.h
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CustomActionSheet : NSObject<UIActionSheetDelegate>

-(id)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray *)arrOtherButtonTitles;

-(void)showInView: (UIView *)view withCompletionHandler: (void(^)(NSString *buttontitle, NSInteger buttonIndex))completionHandler;
@end
