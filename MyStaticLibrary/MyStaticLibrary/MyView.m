//
//  MyView.m
//  MyStaticLibrary
//
//  Created by 李明 on 13-4-26.
//  Copyright (c) 2013年 李明. All rights reserved.
//

#import "MyView.h"

@interface MyView()
{
    NSData *_imagedata;
}
@end
@implementation MyView

- (id)initWithFrame:(CGRect)frame withimagedata:(NSData *)imagedata
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _imagedata = [imagedata retain];
    }
    return self;
}
-(void)dealloc
{
    [_imagedata release];
    _imagedata = nil;
    [super dealloc];
    
}


- (void)drawRect:(CGRect)rect
{
    
    UIImage *image = [[UIImage alloc] initWithData:_imagedata];
    [image drawInRect:CGRectMake(100, 100, 100, 100)];
    [image release];
    NSString *string = @"点击跳转到百度首页";
    [string drawInRect:CGRectMake(100, 250, 100, 80) withFont:[UIFont fontWithName:@"Arial" size:10]];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"]];
}


@end
