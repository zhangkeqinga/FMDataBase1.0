//
//  ViewController.m
//  JFSqliteDemo
//
//  Created by Dong on 14-12-5.
//  Copyright (c) 2014年 jhony. All rights reserved.
//

#import "ViewController.h"
#import "NewsModle.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize tableArray=_tableArray;


- (void)viewDidLoad
{
    [super viewDidLoad];

    NewsModle *model=[[NewsModle alloc]init];
    model.recEmpCode=@"ddd";
    model.reserve=@"ffff";
    model.createTime=@"eeee";
    model.imageUrl=@"gggg";
    model.msgTitle=@"ffff";
    model.sendMsgType=@"sssss";
    model.fileUrl=@"ddddf";
//    model.imageData=@"ddddf";
//
    NSData *data=[NSData data];
    model.imageData=data;
//
    [[SSJDBManager sharedInstance] insertNews:model];

    
//    [self actionRequestHttp];

}



//请求图片资源
-(NSData *)imageResourceRequest:(NSString *)url
{
    //根据网络数据，获得到image资源
    NSData  *data = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:url]];
    UIImage *image = [[UIImage alloc] initWithData:data];
    
    if(image == nil){
    }else {
        NSMutableDictionary *mutable = [[NSMutableDictionary alloc]init];
        [mutable setObject:url forKey:@"url"];
        [mutable setObject:image forKey:@"data"];
        //回到主线程，显示图片信息
        [self performSelectorOnMainThread:@selector(displayImage) withObject:mutable waitUntilDone:NO];
    }
    
    
    return data;
    
}


- (void)displayImage{
    
    
}


#pragma mark---
- (void)actionRequestHttp{
    
    
    //http://58.32.246.78:8380/android/getNewRecords?&msgDataType=30&msgType=101&pageSize=10&pageIndex=1

    NSString *stringss= [NSString stringWithFormat:@"http://58.32.246.78:8380/android/getNewRecords?&msgDataType=30&msgType=101&pageSize=10&pageIndex=1"];

    //        NSString *stringss= [NSString stringWithFormat:@"%@&msgDataType=%@&msgType=%@&pageSize=%d&pageIndex=%d",newUrl,@"10",@"10",10,1];
    
        NSURL *_url = [NSURL URLWithString:stringss];
        ASIHTTPRequest * requests = [[ASIHTTPRequest alloc]initWithURL:_url];
        [requests setTimeOutSeconds:3];
        requests.delegate = self;
        [requests setRequestMethod:@"post"];
        [requests startAsynchronous];
    
    
}




#pragma mark ASIHTTPRequestDelegate -------
- (void)requestFinished:(ASIHTTPRequest *)request{
    
    //*
    NSData *_data = [request responseData];
    NSString *dataStr = [[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding];
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    NSDictionary *_dictData = [parser objectWithString:dataStr];

    NSDictionary * DataRecordArr=[_dictData objectForKey:@"newRecord"];
    if (!DataRecordArr) {
        return;
    }
    
    for (NSDictionary *dic in DataRecordArr)
    {
        NewsModle *model=[[NewsModle alloc]init];
        
//        model.createTime= [dic objectForKey:@"createTime"];
//        model.imageUrl= [dic objectForKey:@"imageUrl"];
//        model.msgTitle= [dic objectForKey:@"msgTitle"];
//        model.sendMsgType= [dic objectForKey:@"sendMsgType"];
//        model.fileUrl= [dic objectForKey:@"fileUrl"];
//        model.i_id= @"111";
//        model.imageData =[ self imageResourceRequest:[test_url stringByAppendingString:model.imageUrl]];
        
        model.i_id=@"000";
        model.recEmpCode=@"ddd";
        model.reserve=@"ffff";
        model.createTime=@"eeee";
        model.imageUrl=@"gggg";
        model.msgTitle=@"ffff";
        model.sendMsgType=@"sssss";
        model.fileUrl=@"ddddf";
//        model.imageData=;
        
        [[SSJDBManager sharedInstance] insertNews:model];
        
        [_tableArray addObject:model];
        
    }
    
}


- (void)requestFailed:(ASIHTTPRequest *)request{
    
    DLog(@"<><GG  1 GGG><>");
    
    
    return;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
