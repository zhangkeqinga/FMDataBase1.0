//
//  NewsModle.h
//  MDBClient
//
//  Created by jhony on 14-4-25.
//  Copyright (c) 2014年 YTO—jhony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsModle : NSObject
{
    
    NSString     *i_id;
    NSString     *recEmpCode;
    NSString     *reserve;
    NSString     *createTime;
    NSString     *imageUrl;
    NSString     *msgTitle;
    NSString     *sendMsgType;
    NSString     *fileUrl;
    NSData      *imageData;

}


@property(nonatomic,strong)NSString     *i_id;
@property(nonatomic,strong)NSString     *recEmpCode;
@property(nonatomic,strong)NSString     *reserve;

@property(nonatomic,strong)NSString     *createTime;
@property(nonatomic,strong)NSString     *imageUrl;
@property(nonatomic,strong)NSString     *msgTitle;
@property(nonatomic,strong)NSString     *sendMsgType;
@property(nonatomic,strong)NSString     *fileUrl;
@property(nonatomic,strong)NSData       *imageData;


//-(void)encodeWithCoder:(NSCoder *)aCoder;
//
//-(id)initWithCoder:(NSCoder *)aDecoder;//解码对应上面的key

@end
