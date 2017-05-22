//
//  CaiModel.h
//  DicToModel
//
//  Created by mac on 17/5/11.
//  Copyright © 2017年 cai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaiModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *nation;

- (instancetype)initWithDic:(NSDictionary *)dict;
+ (instancetype)appModelWithDic:(NSDictionary *)dict;

@end
