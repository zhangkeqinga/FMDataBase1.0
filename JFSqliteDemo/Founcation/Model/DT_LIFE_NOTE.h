//
//  DT_LIFE_NOTE.h
//  CFLife
//
//  Created by 1 1 on 13-9-7.
//  Copyright (c) 2013年 1. All rights reserved.
//

#import <Foundation/Foundation.h>
//每天的早 中 晚 餐的记录
@interface DT_LIFE_NOTE : NSObject
{
    NSString *i_id;
    NSString *user_id;        //用户id
    NSString *user_time;      //时间
    NSString *user_breakfast; //早餐
    NSString *user_lunch;     //中餐
    NSString *user_extrameal; //晚餐
    NSString *user_dinner;    //加餐

}

@property(nonatomic ,retain) NSString *i_id;
@property(nonatomic ,retain) NSString *user_id;
@property(nonatomic ,retain) NSString *user_time;
@property(nonatomic ,retain) NSString *user_breakfast;
@property(nonatomic ,retain) NSString *user_lunch;
@property(nonatomic ,retain) NSString *user_extrameal;
@property(nonatomic ,retain) NSString *user_dinner;    

@end
