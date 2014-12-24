//
//  DT_REVIEW_PLAY.h
//  CFLife
//
//  Created by 1 1 on 13-9-7.
//  Copyright (c) 2013年 1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DT_REVIEW_PLAY : NSObject
{
    NSString *i_id;
    NSString *review_id;                    //评论的id
    NSString *review_replay_title;          //评论回复的标题
    NSString *review_replay_info;           //评论回复的内容
    NSString *review_replay_picture;        //评论回复的图片
    NSString *review_replay_time;           //评论回复的的时间
    NSString *review_replay_collectionnum;  //评论回复的收藏数目
    NSString *review_replay_transmitnum;    //评论回复的转发数目
    NSString *review_replay_address;        //评论回复的地点
}


@property(nonatomic ,retain) NSString *i_id;
@property(nonatomic ,retain) NSString *review_replay_title;          //评论回复的标题
@property(nonatomic ,retain) NSString *review_replay_info;           //评论回复的内容
@property(nonatomic ,retain) NSString *review_replay_picture;        //评论回复的图片
@property(nonatomic ,retain) NSString *review_replay_time;           //评论回复的的时间
@property(nonatomic ,retain) NSString *review_replay_collectionnum;  //评论回复的收藏数目
@property(nonatomic ,retain) NSString *review_replay_transmitnum;    //评论回复的转发数目
@property(nonatomic ,retain) NSString *review_replay_address;        //评论回复的地点



@end
