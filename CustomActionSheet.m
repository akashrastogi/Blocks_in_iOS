//
//  CustomActionSheet.m
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "CustomActionSheet.h"

@interface CustomActionSheet()
@property (nonatomic, strong) UIActionSheet *actionSheet;
@property (nonatomic, strong) void(^handler)(NSString *, NSInteger);
@end


@implementation CustomActionSheet

-(id)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray *)arrOtherButtonTitles{
    self = [super init];
    if (self) {
        _actionSheet = [[UIActionSheet alloc]initWithTitle:title
                                                  delegate:self
                                         cancelButtonTitle:nil
                                    destructiveButtonTitle:destructiveButtonTitle
                                         otherButtonTitles: nil];
        
        for (NSString *title in arrOtherButtonTitles) {
            [_actionSheet addButtonWithTitle:title];
        }
        
        [_actionSheet addButtonWithTitle:cancelButtonTitle];
        [_actionSheet setCancelButtonIndex:_actionSheet.numberOfButtons - 1];
    }
    return self;
}

-(void) showInView:(UIView *)view withCompletionHandler:(void (^)(NSString *, NSInteger))completionHandler{
    _handler = completionHandler;
    [_actionSheet showInView:view];
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [_actionSheet buttonTitleAtIndex:buttonIndex];
    _handler(buttonTitle, buttonIndex);
}

@end
