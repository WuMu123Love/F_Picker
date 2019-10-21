//
//  ViewController.m
//  Picker
//
//  Created by fls on 2019/8/27.
//  Copyright © 2019年 fls. All rights reserved.
//

#import "ViewController.h"
#import "LZCityPickerController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
   
    
}
- (void)click{
    [LZCityPickerController showPickerInViewController:self selectBlock:^(NSString *address, NSString *province, NSString *city, NSString *area) {
        NSLog(@"%@",address);
    }];
}

@end
