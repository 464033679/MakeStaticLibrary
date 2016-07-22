//
//  ViewController.m
//  MyStaticLibraryDemo
//
//  Created by 李明 on 13-4-26.
//  Copyright (c) 2013年 李明. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"dibing_11" ofType:@"png"];
    
	MyView *view = [[MyView alloc] initWithFrame:self.view.bounds withimagedata:[NSData dataWithContentsOfFile:filepath]];
    [self.view addSubview:view];
    [view release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
