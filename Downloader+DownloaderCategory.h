//
//  Downloader+DownloaderCategory.h
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "Downloader.h"

@interface Downloader (DownloaderCategory)
-(void)multiplyNumber :(int)number1 withNumber:(int)number2 :(void(^)(int result))completionHandler;

@end
