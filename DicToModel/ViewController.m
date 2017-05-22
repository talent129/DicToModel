//
//  ViewController.m
//  DicToModel
//
//  Created by mac on 17/5/11.
//  Copyright © 2017年 cai. All rights reserved.
//

#import "ViewController.h"
#import "CaiModel.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dic1 = @{@"name" : @"Jack", @"sex" : @"male", @"nation" : @"汉族"};
    NSDictionary *dic2 = @{@"name" : @"HH", @"sex" : @"male", @"nation" : @"壮族"};
    NSDictionary *dic3 = @{@"name" : @"JJ", @"sex" : @"male", @"nation" : @"傣族"};
    
    NSArray *array = @[dic1, dic2,dic3];
    
    NSMutableArray *mArr = [NSMutableArray array];
    
    for (NSDictionary *dic in array) {
        CaiModel *model = [CaiModel appModelWithDic:dic];
        [mArr addObject:model];
    }
    
    NSLog(@"%@", mArr);
    
    
    CaiModel *model = mArr[1];
    NSLog(@"%@", model.nation);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
