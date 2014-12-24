//
//  SSJDBManager.h
//  SSJ_Shoping
//
//  Created by GFeng on 13-4-18.
//  Copyright (c) 2013年 SSJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBAccess.h"

#import "DT_USER.h"
#import "DT_FOOD.h"
#import "DT_LIFE_NOTE.h"

#import "NewsModle.h"


@interface SSJDBManager : NSObject

+ (SSJDBManager *)sharedInstance;
//获取用户信息


-(void)insertNews:(NewsModle *)user;
-(NSMutableArray *)queryNewsAll;

-(NSMutableArray *)queryUserAll;

-(DT_USER *)queryUserByUserId:(int )USER_ID;

//根据食物的 类别 进行搜索
-(NSMutableArray *)queryAllKindsFood:(NSString* )foodKey;
//根据食物的名称进行模糊搜索
-(NSMutableArray *)queryAllKindsFoodWithName:(NSString* )foodName;
//根据日期搜索当天的食物
-(DT_LIFE_NOTE *)queryAllKindsMealsWithDay:(NSString* )mealsDay;
//查询食物
-(DT_FOOD *)queryFoodByFoodId:(NSString *)foodId;


//删除
-(void)deleteCustomer:(NSString * )customer_;
-(void)deleteDTLifeNote:(NSString * )lifenoteId;

//插入
-(void)insertCustomer:(DT_USER *)user;
-(void)insertDTLifeNote:(DT_LIFE_NOTE*)lifenote;

//更新
-(void)updateCustomer:(DT_USER *)user;
-(void)updateDTLifeNote:(DT_LIFE_NOTE*)lifenote;


@end
