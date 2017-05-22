//
//  CaiModel.m
//  DicToModel
//
//  Created by mac on 17/5/11.
//  Copyright © 2017年 cai. All rights reserved.
//

#import "CaiModel.h"

@implementation CaiModel

//instancetype表示 [当前类型自己] 只能作为方法的返回值 不能像id那样声明一个变量
- (instancetype)initWithDic:(NSDictionary *)dict
{
    if (self = [super init]) {
        self.name = dict[@"name"];
        self.sex = dict[@"sex"];
        self.nation = dict[@"nation"];
    }
    return self;
}

+ (instancetype)appModelWithDic:(NSDictionary *)dict
{
    return [[self alloc] initWithDic:dict];
}

@end
