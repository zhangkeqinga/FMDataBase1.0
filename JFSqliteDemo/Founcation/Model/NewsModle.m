//
//  NewsModle.m
//  MDBClient
//
//  Created by jhony on 14-4-25.
//  Copyright (c) 2014年 YTO—jhony. All rights reserved.
//

#import "NewsModle.h"

@implementation NewsModle


@synthesize i_id;
@synthesize createTime;
@synthesize fileUrl;
@synthesize imageUrl;
@synthesize msgTitle;
@synthesize recEmpCode;
@synthesize reserve;
@synthesize sendMsgType;
@synthesize imageData;


//-(void)encodeWithCoder:(NSCoder *)aCoder//编码
//{
//    [aCoder encodeObject:i_id forKey:@"i_id"];
//    [aCoder encodeObject:createTime forKey:@"createTime"];
//    [aCoder encodeObject:fileUrl forKey:@"fileUrl"];
//    [aCoder encodeObject:imageUrl forKey:@"imageUrl"];
//    [aCoder encodeObject:msgTitle forKey:@"msgTitle"];
//    [aCoder encodeObject:recEmpCode forKey:@"recEmpCode"];
//    [aCoder encodeObject:reserve forKey:@"reserve"];
//    [aCoder encodeObject:sendMsgType forKey:@"sendMsgType"];
//    [aCoder encodeObject:imageData forKey:@"imageData"];
//
////    NSNumber *ssex=[NSNumber numberWithChar:sex];//需转化成对象因为encodechar系统中没有
////    [aCoder encodeObject:ssex forKey:@"Infosex"];
//}
//
//
//-(id)initWithCoder:(NSCoder *)aDecoder{//解码对应上面的key
//    
//    i_id = [aDecoder decodeObjectForKey:@"i_id"];
//    createTime = [aDecoder decodeObjectForKey:@"createTime"];
//    fileUrl = [aDecoder decodeObjectForKey:@"fileUrl"];
//    imageUrl = [aDecoder decodeObjectForKey:@"imageUrl"];
//    msgTitle = [aDecoder decodeObjectForKey:@"msgTitle"];
//    recEmpCode = [aDecoder decodeObjectForKey:@"recEmpCode"];
//    reserve = [aDecoder decodeObjectForKey:@"reserve"];
//    sendMsgType = [aDecoder decodeObjectForKey:@"sendMsgType"];
//    imageData = [aDecoder decodeObjectForKey:@"imageData"];
//    
////    name=[[aDecoder decodeObjectForKey:@"Infoname"]retain];//解码
////    //    通过控制台找出下面的问题并改正
////    phone=[aDecoder decodeIntForKey:@"Infophone"];     //错误代码1
////    
////    age=[aDecoder decodeIntForKey:@"Infoage"];
////    sex=[[aDecoder decodeObjectForKey:@"Infosex"]charValue];//把对象 的sex转化char
//    
//    return self;
//    
//}



@end
