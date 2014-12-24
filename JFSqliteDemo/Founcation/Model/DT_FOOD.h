//
//  DT_FOOD.h
//  CFLife
//
//  Created by 1 1 on 13-9-7.
//  Copyright (c) 2013年 1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DT_FOOD : NSObject
{
    NSString *i_id;
    NSString *food_name;        //食物的名称
    NSString *food_type;        //食物的类型
    NSString *food_imagename;   //食物的图片名称
    NSString *food_description; //食物的描述
    NSString *food_all_weight;  //食物的总重量

}

@property(nonatomic ,retain)NSString * i_id;
@property(nonatomic ,retain)NSString * food_name;        //食物的名称
@property(nonatomic ,retain)NSString * food_type;        //食物的类型
@property(nonatomic ,retain)NSString * food_imagename;   //食物的图片名称
@property(nonatomic ,retain)NSString * food_description; //食物的描述
@property(nonatomic ,retain)NSString * food_all_weight;  //食物的总重量

@end
