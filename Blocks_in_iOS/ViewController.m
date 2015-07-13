//
//  ViewController.m
//  Blocks_in_iOS
//
//  Created by Akash Rastogi on 25/06/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "ViewController.h"
#import "Downloader.h"
#import "Downloader+DownloaderCategory.h"
#import "CustomActionSheet.h"


@interface ViewController ()
@property (nonatomic, strong) CustomActionSheet *customActionSheet;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myblock();
    int param = 5;
    voidIntBlock(5);
    int result = getDoubleBlock(param);
    NSLog(@"double of %d is %d", param, result);
    int a=10, b=20;
    int sum = getSumBlock(a, b);
    NSLog(@"sum of %d and %d is %d", a,b,sum);
    
    Downloader *downloader = [[Downloader alloc]init];
    [downloader addNumber:5 withNumber:10 :^(int result) {
        NSLog(@"Sum in blocks- %d", result);
    }];
    
    [downloader multiplyNumber:5 withNumber:10 :^(int result) {
        NSLog(@"Multiply in blocks- %d", result);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Block without parameter
void(^myblock)(void) = ^{
    NSLog(@"inside a block");
};

// Block with a parameter
void(^voidIntBlock)(int) = ^(int param){
    NSLog(@"param is %d", param);
};

// Block takes a param and return integer
int(^getDoubleBlock)(int) = ^(int param){
    int result = 2*param;
    
    return result;
};

// Block take multiple param and return integer
int(^getSumBlock)(int, int) = ^(int a, int b){
    return a+b;
};


- (IBAction)btnShowSctionsheetClicked:(UIButton *)sender {
    _customActionSheet = [[CustomActionSheet alloc]initWithTitle:@"Custom Actionsheet"
                                               cancelButtonTitle:@"Cancel"
                                          destructiveButtonTitle:nil
                                               otherButtonTitles:@[@"Option 1", @"Option 2", @"Option 3"]];
    
    [_customActionSheet showInView:self.view withCompletionHandler:^(NSString *buttonTitle, NSInteger buttonIndex) {
        [[[UIAlertView alloc]initWithTitle:nil message:[NSString stringWithFormat:@"Selected index= %ld, and selected title= %@", (long)buttonIndex, buttonTitle] delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil]show];
    }];
}
@end
