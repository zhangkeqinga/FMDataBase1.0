//
//  DT_REVIEW.h
//  CFLife
//
//  Created by 1 1 on 13-9-7.
//  Copyright (c) 2013年 1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DT_REVIEW : NSObject
{
    NSString *i_id;
    NSString *review_title;          //评论的标题
    NSString *review_info;           //评论的内容
    NSString *review_picture;        //评论的图片
    NSString *review_time;           //评论的的时间
    NSString *review_collectionnum;  //评论的收藏数目
    NSString *review_transmitnum;    //评论的转发数目
    NSString *review_address;        //评论的地点
}

@property(nonatomic ,retain) NSString *i_id;
@property(nonatomic ,retain) NSString *review_title;          //评论的标题
@property(nonatomic ,retain) NSString *review_info;           //评论的内容
@property(nonatomic ,retain) NSString *review_picture;        //评论的图片
@property(nonatomic ,retain) NSString *review_time;           //评论的的时间
@property(nonatomic ,retain) NSString *review_collectionnum;  //评论的收藏数目
@property(nonatomic ,retain) NSString *review_transmitnum;    //评论的转发数目
@property(nonatomic ,retain) NSString *review_address;        //评论的地点

@end
