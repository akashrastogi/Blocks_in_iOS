//
//  Downloader.h
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Downloader : NSObject

-(void)addNumber :(int)number1 withNumber:(int)number2 :(void(^)(int result))completionHandler;
@end


