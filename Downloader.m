//
//  Downloader.m
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "Downloader.h"

// Class Extension. You can't access the method "squareOfNumber" outside of the class
@interface Downloader ()
-(int)squareOfNumber:(int)number;
@end

@implementation Downloader
-(void)addNumber :(int)number1 withNumber:(int)number2 :(void(^)(int result))completionHandler{
    int result = number1 + number2;
    completionHandler(result);
}

-(int)squareOfNumber:(int)number{
    return number * number;
}
@end
