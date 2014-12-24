//
//  DT_FRIENDLY.h
//  CFLife
//
//  Created by 1 1 on 13-9-7.
//  Copyright (c) 2013年 1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DT_FRIENDLY : NSObject
{
    NSString *i_id;    
    NSString *user_id;          //用户id
    NSString *friendly_type;    //好友的分组类型
    NSString *friendly_addtime; //好友的添加时间
}

@property(nonatomic ,retain) NSString *i_id;
@property(nonatomic ,retain) NSString *user_id;
@property(nonatomic ,retain) NSString *friendly_type; 
@property(nonatomic ,retain) NSString *friendly_addtime;

@end
