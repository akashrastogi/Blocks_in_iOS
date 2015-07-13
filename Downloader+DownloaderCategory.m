//
//  Downloader+DownloaderCategory.m
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "Downloader+DownloaderCategory.h"

@implementation Downloader (DownloaderCategory)
-(void)multiplyNumber :(int)number1 withNumber:(int)number2 :(void(^)(int result))completionHandler{
    completionHandler(number1 * number2);
}

@end
