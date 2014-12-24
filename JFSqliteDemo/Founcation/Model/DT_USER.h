//
//  DT_USER.h
//  CFLife
//
//  Created by 1 1 on 13-9-7.
//  Copyright (c) 2013年 1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DT_USER : NSObject
{
    NSString *i_id;
    NSString *user_name;           //用户姓名
    NSString *user_age;            //用户年龄
    NSString *user_sex;            //用户性别
    NSString *user_birthday;       //用户生日
    NSString *user_photo;          //用户头像
    NSString *user_account;        //用户帐号
    NSString *user_password;       //用户密码
    NSString *user_phone_number;   //用户电话
    
}

@property(nonatomic,retain) NSString *i_id;
@property(nonatomic,retain) NSString *user_name;
@property(nonatomic,retain) NSString *user_age;
@property(nonatomic,retain) NSString *user_sex;
@property(nonatomic,retain) NSString *user_birthday;
@property(nonatomic,retain) NSString *user_photo;
@property(nonatomic,retain) NSString *user_account;
@property(nonatomic,retain) NSString *user_password;
@property(nonatomic,retain) NSString *user_phone_number;
@end
