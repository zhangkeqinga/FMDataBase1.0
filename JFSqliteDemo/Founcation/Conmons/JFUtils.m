//
//  JFUtils.m
//  JiaFeng
//
//  Created by n22 on 12-9-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//


#import "JFUtils.h"
//#import "SSJ_PRODUCT.h"

@implementation JFUtils

+ (void)readLocalized{
    
    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
    
//
//    NSString *lang=[PathUtilities readPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"language"];
//    
//    NSInteger language =[lang intValue];
//    
//    NSString *lang_fileName ;
//    
//    switch (language) {
//        case 1:
//            lang_fileName =Chiese_Langue;
//            break;
//        case 2:
//            lang_fileName =English_Langue;   //默认  plist  中 de 为 英文
//            break;
//        default:
//            lang_fileName =ChieseTai_Langue;  
//            
//            break;
//    }
//    
//    NSString *path = [[NSBundle mainBundle] pathForResource:lang_fileName
//                                                     ofType:@"strings"
//                                                inDirectory:nil
//                      ];
//    
//    [JSessionInfo sharedInstance].languageTag=lang_fileName;
//    
//     [JSessionInfo sharedInstance].localized_dict= [NSDictionary dictionaryWithContentsOfFile:path];
//    
}


+ (void)readLocalizedLanguageNewSelected{
    
//    if (![[JSessionInfo sharedInstance].languageTag isEqualToString:Chiese_Langue] &&  ![[JSessionInfo sharedInstance].languageTag isEqualToString:English_Langue]) {
//        [JSessionInfo sharedInstance].languageTag=English_Langue;
//    }//如果没有选择任何一种语言 的话 默认 为英文版本的
//    
//    NSString *lang_fileName =[JSessionInfo sharedInstance].languageTag;
//    NSString *path = [[NSBundle mainBundle] pathForResource:lang_fileName
//                                                     ofType:@"strings"
//                                                inDirectory:nil
//                      ];
//    [JSessionInfo sharedInstance].localized_dict= [NSDictionary dictionaryWithContentsOfFile:path];
//     
}


//读取广告
+ (void)readLocalizedWelcome_ad{
    
//    [JSessionInfo sharedInstance].welcome_ad_Dictionary=[PathUtilities readArrayPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"welcome_ad"];
// 
//    
}


//读取个人信息----- 账户信息
+ (NSArray *)readLocalizedPersoanlInformation{
    
    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
    
    NSArray *arrayPer=[PathUtilities readArrayPersonalPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"accountInfo"];

    NSLog(@"arrayPer===%@",arrayPer);
    return  arrayPer;
}

//读取 所有食物的信息
+ (NSDictionary *)readAllKindsFoodInformation{
    
    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
    
    NSDictionary *foodDic=[PathUtilities readArrayPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"kindsFood"];
    
//    NSLog(@"foodDic==%@",foodDic);
    return  foodDic;
}

//读取特定搜索的信息
+ (NSDictionary *)readLocalizedSearchProdutIdInformation{
    
    NSDictionary *searProductIdDic=[PathUtilities readArrayPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"search_product_id"];
    
    return  searProductIdDic;
}

//读取位子
+ (void)readLocalizedCurrent_location{
    
  //  [JSessionInfo sharedInstance].current_location=[PathUtilities readArrayPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"current_location"];
    
}

+(void)changeLocalized:(NSString*)state{

   [PathUtilities updatePlist:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"language" withValue:state];
    
    [JFUtils readLocalized ];
    
}


+(void)changeNetState:(NSString*)state{
    
    [PathUtilities updatePlist:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"netState" withValue:state];
    
    
}
+(NSString *)readNetState{
    
    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
    
    
    NSString *netState=[PathUtilities readPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"netState"];
    
    return  netState;
    
    
}

+(void)changeTwoCateState:(NSString*)state{
    
    
    [PathUtilities updatePlist:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"twoCateState" withValue:state];
    
    

    
    
}
//
//#define ONE_CATE_WDSJ @"0" 
//
//+(void)changeOneCateState:(NSString*)state{
//    
//    [PathUtilities updatePlist:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"oneCateState" withValue:state];
//    //代表我的世界
//    if(![state isEqualToString:ONE_CATE_WDSJ]){
//        
//        [PathUtilities updatePlist:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"twoCateState" withValue:NO_DATA];
//    
//    }
//    
//    
//}

+(NSString *)readTwoCateState{
    
    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
    
    
    NSString *releaseState=[PathUtilities readPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"twoCateState"];
    
    return  releaseState;
    
    
}



+(void)changeBackgroundState:(NSString*)state{
    
    [PathUtilities updatePlist:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"selected_back" withValue:state];
    
}

+(NSString *)readBackgroundState{
    
    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
    
    
    NSString *netState=[PathUtilities readPlistForKey:NSLibraryDirectory withFile:SYSTEM_CONF wihtKey:@"selected_back"];
    
    return  netState;
    
    
}


+(NSMutableArray *) sliderArrayWithCustomId:(NSString*)customId_{

    NSMutableArray *sliderArray=[NSMutableArray array];
    
    //标题（如：季度目标）季度目标
    NSString *slideTitle = @"年度目标";
    //实际完成数字
    NSString *finishedNum = @"80";
    
    //气泡组数据
	NSArray *groupData = [NSArray arrayWithObjects:@"36",@"72",@"108",@"120" ,nil];
    
    
    NSArray *xGroupData = [NSArray arrayWithObjects:@"季度一",@"季度二",@"季度三",@"季度四", nil];
    
    
    NSDictionary* dic = [NSDictionary  dictionaryWithObjectsAndKeys:groupData,@"groupData",xGroupData,@"xGroupData",slideTitle,@"slideTitle",finishedNum,@"finishedNum", nil];
    
    
    [sliderArray addObject:dic];
    
    
    
    NSString *slideTitle2 = @"季度目标";
    
    NSString *finishedNum2 = @"3.8";
    
    NSArray *groupData2 = [NSArray arrayWithObjects:@"1.2",@"2.4",@"4" ,nil];
    
    NSArray *xGroupData2 = [NSArray arrayWithObjects:@"七月",@"八月",@"九月", nil];
    
    NSDictionary* dic2 = [NSDictionary  dictionaryWithObjectsAndKeys:groupData2,@"groupData",xGroupData2,@"xGroupData",slideTitle2,@"slideTitle",finishedNum2,@"finishedNum", nil];
    
    
    [sliderArray addObject:dic2];
    
    return sliderArray;
    
    
    
    
}




#pragma mark--------------------------------------中英文切换----------- 图片 -------------
/**
 @abstract 根据语言 判定图片名称
 @param  所有图片都以英文命名开始  如果 语言 改变 则在英文的基础上修改 成相对应 图片名称   
 @author by 张克清
 */

+(NSString*)imageNammeChange:(NSString *)imageName_{   //当语言选择 不在范围内     就 默认 为 英文

    
//    NSString *lang=[JSessionInfo sharedInstance].languageTag;     //@"en"代表英文   @“zh”代表中文  @“tai”代表中文繁体
//    
////    NSInteger language =[lang intValue];
//    NSString *string1 = imageName_;
//    
//    NSString *string2 = @"_En.png";
//    NSRange range = [string1 rangeOfString:string2];
//    //int location = range.location;
//    int leight = range.length;
//    
//    NSString *imageName=[string1 substringToIndex:[string1 length]-leight];
//    NSString *imageName_String ;
//    
//    if ([English_Langue isEqualToString:lang])
//        imageName_String =[NSString stringWithFormat:@"%@_En.png" ,imageName];
//
//    else if ([ChieseTai_Langue isEqualToString:lang])
//        imageName_String =[NSString stringWithFormat:@"%@_Tai.png" ,imageName];
//    
//    else if ([Chiese_Langue isEqualToString:lang])
//        imageName_String =[NSString stringWithFormat:@"%@_Zh.png" ,imageName];
//    
//    else
//        imageName_String =[NSString stringWithFormat:@"%@_En.png" ,imageName];
//
//    return imageName_String;
    return nil;
}



/**
 @abstract 根据角色 判定图片名称  同时也要判定语言
 @param  所有图片角色 都以 1 开头 并且递增  在根据语言 决定图片名称
 @author by 张克清
 */

+(NSString*)imageNameChangeWithRloe:(NSString*)roleId_ withImageName:(NSString *)imageName_{
    
    
    NSString *string2 = @"1_En.png";
    NSRange range = [imageName_ rangeOfString:string2];
    int leight = range.length;
    NSString *imageName=[imageName_ substringToIndex:[imageName_ length]-leight];
    
    NSString *roleStringImagname=[NSString stringWithFormat:@"%@%@_En.png",imageName,roleId_];
 
    NSString *resultString=[JFUtils imageNammeChange:roleStringImagname];
    
    return  resultString;
}


/**
 @abstract 根据肤色类型 判定图片名称  同时也要判定语言   类型为（00-－－－99）
 @param  所有图片角色 都以 skin_01 开头 01 02 03 递增  在根据语言 决定图片名称      * skin_01_1_En.png
 @author by 张克清
 */

+(NSString*)imageNameChangeWithImageName:(NSString *)imageName_ withSkin:(NSString *)SkinType_{
    //SkinType ==skin_01  肤色
    
    NSString *string2 = @"skin_01_1_En.png";
    NSRange range = [imageName_ rangeOfString:string2];
    int leight = range.length;
    NSString *imageName=[imageName_ substringToIndex:[imageName_ length]-leight];
    
    NSString *roleStringImagname=[NSString stringWithFormat:@"%@%@_1_En.png",imageName,SkinType_];
    
    NSString *resultString=[JFUtils imageNammeChange:roleStringImagname];
    
    return  resultString;
}



+(NSInteger)stringMaskRangeName:(NSString *)beforeString withNumber:(NSInteger )number_{
 
    
    
    NSString *sstring=[beforeString substringToIndex:number_];
    NSInteger value=[sstring integerValue];
    return  value;
    
}

///**
// @abstract 根据产品数组计算产品总价值 
// @param  以float类型返回 数组中所有产品总价值
// @author by 张克清
// */
//+(float)productCalculationArray:(NSMutableArray *)productArray{
//    double allProductPrice=0.0;
//    
//    if ([productArray count]>0) {
//        for (int i=0; i<[productArray count]; i++) {
//            
//            SSJ_PRODUCT *product=(SSJ_PRODUCT*)[productArray objectAtIndex:i];
//            
//            DLog(@"===%0.2f===%0.2f====%d",allProductPrice,product.product_price,product.peoductNumber);
//
//            if (!product.peoductNumber) {
//                product.peoductNumber=1;
//            }
//            allProductPrice+=product.product_price*product.peoductNumber;
//            
//            DLog(@"===%0.2f===%0.2f====%d",allProductPrice,product.product_price,product.peoductNumber);
//        }
//        
//      } else{
//          
//          DLog(@"数组为空");
//   }
//
//     return allProductPrice;
//}
//
///**
// @abstract 根据产品数组计算产品 打折的 总价值
// @param  以float类型返回 数组中所有产品总价值
// @author by 张克清
// */
//+(float)productDiscountCalculationArray:(NSMutableArray *)productArray{
//    double allProductPrice=0.0;
//    
//    if ([productArray count]>0) {
//        for (int i=0; i<[productArray count]; i++) {
//            
//            SSJ_PRODUCT *product=(SSJ_PRODUCT*)[productArray objectAtIndex:i];
//            
//            DLog(@"%f=====%f=======%d",product.product_discount,product.product_price,product.peoductNumber);
//                 
//            if (product.product_discount>0.0  && product.product_discount<1.0) {
//                allProductPrice+=product.product_discount*product.product_price*product.peoductNumber;
//
//            }else {
//                product.product_discount=1.0;
//                
//                allProductPrice+=product.product_discount*product.product_price*product.peoductNumber;
//                
//                DLog(@"无打折信息  按照原价进行计算");
//            }
//            
//            DLog(@"%0.2f",product.product_price);
//        }
//    } else{
//        DLog(@"数组为空");
//    }
//    
//    return allProductPrice;
//}


//
+(void) copyArrayToArray:(NSMutableArray *)array_ withAray:(NSMutableArray *)soureArray_{
    
    if (!soureArray_ || !array_) return;
    
    NSEnumerator *enumer1;
    
    enumer1=[soureArray_ objectEnumerator];
    id thing1;
    while (thing1 =[enumer1 nextObject]) {
        [array_ addObject:thing1];
    }

}



+(void) copyDictionaryToArray:(NSMutableArray *)array_ withDictionary:(NSMutableDictionary *)soureDiction_{
    

    NSEnumerator *keys=[soureDiction_ keyEnumerator];
    id keyInDic=nil;
    while ((keyInDic =[keys nextObject])!=nil) {
        id valueForKey=[soureDiction_ objectForKey:keyInDic];
        [array_ addObject:valueForKey];
    }
    
    
}







//创建 一组 Button  水平  一维的   返回 字典 键值 根据 数组二维数组下表 来的  （00-99）

+(NSMutableDictionary *) makeHorizontalBtnFrameToBtnArrayWithFirstFrame:(CGRect)firstFrame_ withhorizontalClearance:(NSInteger)horizontalClearance_ withHorizontal:(NSInteger)horizontalNum_{
    
    NSMutableDictionary *frameDict=[[[NSMutableDictionary alloc]init]autorelease];
    
    CGRect rect0=firstFrame_;
    
    if ( 5>0) {
        
        for (int j=0; j<5; j++) {
            
            CGRect rect1=CGRectMake(rect0.origin.x + (horizontalClearance_+rect0.size.width)*j , rect0.origin.y , rect0.size.width, rect0.size.height);
            
            NSValue *value1=[NSValue valueWithCGRect:rect1];
            NSString *string=[NSString stringWithFormat:@"%d",j];
            [frameDict setObject:value1 forKey:string];
            
        }
        
        return frameDict;
        
    } else{
        return nil;
    }
    
    
}

//创建 一组 Button  垂直的  一维的

+(NSMutableDictionary *) makeVerticalBtnFrameToBtnArrayWithFirstFrame:(CGRect)firstFrame_ withVertivcalClearance:(NSInteger)verticalClearance_ withVertiaclNum:(NSInteger)verticalNum_{
    
    NSMutableDictionary *frameDict=[[[NSMutableDictionary alloc]init]autorelease];
    
    CGRect rect0=firstFrame_;
    
    if ( 5>0) {
        
        for (int j=0; j<5; j++) {
            
            CGRect rect1=CGRectMake(rect0.origin.x , rect0.origin.y  + (verticalClearance_+rect0.size.height)*j, rect0.size.width, rect0.size.height);
            
            NSValue *value1=[NSValue valueWithCGRect:rect1];
            NSString *string=[NSString stringWithFormat:@"%d",j];
            [frameDict setObject:value1 forKey:string];
            
        }
        
        return frameDict;
        
    } else{
        return nil;
    }
    
    
}







//创建 一组 Button  二维的 根据数量  横竖 数量 和 横竖间隙Vertivcal 垂直的  ( i(水平) , j（垂直）)

+(NSMutableDictionary *) makeBtnFrameToBtnArrayWithFirstFrame:(CGRect)firstFrame_ withVertivcalClearance:(NSInteger)verticalClearance_ withVertiaclNum:(NSInteger)verticalNum_ withhorizontalClearance:(NSInteger)horizontalClearance_ withHorizontal:(NSInteger)horizontalNum_{
    
    NSMutableDictionary *frameDict=[[[NSMutableDictionary alloc]init]autorelease];
    
    CGRect rect0=firstFrame_;
    
    if (verticalNum_>0 && horizontalNum_>0) {
        
        for (int i=0; i<verticalNum_; i++) {
            
            for (int j=0; j<horizontalNum_; j++) {
                
                CGRect rect1=CGRectMake(rect0.origin.x + (horizontalClearance_+rect0.size.width)*j , rect0.origin.y + (verticalClearance_+rect0.size.height)*i, rect0.size.width, rect0.size.height);
                
                
                NSValue *value1=[NSValue valueWithCGRect:rect1];
                NSString *string=[NSString stringWithFormat:@"%d%d",verticalNum_,horizontalNum_];
                [frameDict setObject:value1 forKey:string];
            }
            
        }
        
        return frameDict;
        
    } else{
        return nil;
    }
    
    
}



//
//
//
////添加商品到购物车  
//+ (void)addProductToListMap:(SSJ_PRODUCT * )userProduct_{
//    
//    if(!userProduct_)
//        return;
//     BOOL proctBool2=NO;
//
//    
//    for(SSJ_PRODUCT * obj in [JSessionInfo sharedInstance].addProductArray  )
//    {
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            obj.peoductNumber+=userProduct_.peoductNumber;
//            proctBool2=YES;
//            break;
//        }
//    }
//    
//    
//    if (!proctBool2) {
//        [[JSessionInfo sharedInstance].addProductArray addObject:userProduct_];
//    }
//    
//    
//    [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//
//    
//}
//
//#pragma mark====================添加或删除商品
//
//
////添加商品到购物车
//+ (void)addProductToHistoryList:(SSJ_PRODUCT * )userProduct_{
//    
//    if(!userProduct_)
//        return;
// 
//      BOOL proctBool3=NO;
//
//    
//    for(SSJ_PRODUCT * obj in [JSessionInfo sharedInstance].historyProductArray  )
//    {
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            obj.peoductNumber+=userProduct_.peoductNumber;
//            proctBool3=YES;
//            break;
//        }
//    }
//    
//    
//    if (!proctBool3) {
//        [[JSessionInfo sharedInstance].historyProductArray addObject:userProduct_];
//    }
//
//    
//       [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//}
//
//
//
//#pragma mark=====//讲产品添加到购物历史中
//+ (void )addProductToHistoryProduct:(NSString *)stringId{
//    //queryProductByProIdArray
//    NSArray *arrayId=[stringId componentsSeparatedByString:@"_"];
//    NSMutableArray *productArray=[[SSJDBManager sharedInstance]queryProductByProIdArray:arrayId];
//    
//    if ([productArray count]<=0) return;
//    
//    for (int i=0; i<[productArray count]; i++) {
//        SSJ_PRODUCT *product=[productArray objectAtIndex:i];
//        
//        product.product_addTime=[NSString stringWithFormat:@"%@ %@",[JFUtils  dayHourMinString],[JFUtils  dayEMonthZYear]];
//        
//        [JFUtils addProductToHistoryList:product];//讲产品添加到购物历史中
//    }
//}
//
////从购物车中删除数据
//
//
//+ (void)deletedProductFromCart:(SSJ_PRODUCT * )userProduct_{
//    if(!userProduct_)
//        return;
//    for(SSJ_PRODUCT * obj in [JSessionInfo sharedInstance].addProductArray)
//    {
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            [[JSessionInfo sharedInstance].addProductArray removeObject:obj];
//            break;
//        }
//    }
//    
//    
//       [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//}
//
//
//
//
////添加商品到购物车
//+ (NSMutableArray *)addProductToListMapArry:(SSJ_PRODUCT * )userProduct_  toArray:(NSMutableArray *)array_{
//    
//    
//    if(!userProduct_)
//        return array_;
//    
//    
//     BOOL proctBool4=NO;
//    
//    for(SSJ_PRODUCT * obj in array_ )
//    {
//        
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            
//            obj.peoductNumber+=userProduct_.peoductNumber;
//            
//            proctBool4=YES;
//            DLog(@"proctBool4==%c",proctBool4);
//            
//            return array_;
//            break;
//            
//        }
//    }
//    
//    
//    if (!proctBool4) {
//        
//        [array_ addObject:userProduct_];
//        
//        
//    }
//    
//    [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//
//    
//    return  array_;
//    
//}
//
//
////添加  单个产品  商品到  准备添加的  数组中
//+ (NSMutableArray *)addSingleProductToListMapArry:(SSJ_PRODUCT * )userProduct_  toArray:(NSMutableArray *)array_{
//    
//    
//    if(!userProduct_)
//        return array_;
//     BOOL  proctBool1=0;
//    for(SSJ_PRODUCT * obj in array_ ){
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            
//            proctBool1=YES;
//            DLog(@"proctBool4==%c",proctBool1);
//
//            return array_;
//            break;
//        }
//    }
//    if (!proctBool1) {
//        [array_ addObject:userProduct_];
//   
//    }
//    [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//
//    
//    return  array_;
//    
//}
//
//
//
////从购物车中删除数据
//
//
//+ (NSMutableArray *)deletedProductFromCarttoArray:(SSJ_PRODUCT * )userProduct_  withArray:(NSMutableArray *)array_{
//    
//    if(!userProduct_)
//        return array_;
//    
//    for(SSJ_PRODUCT * obj in array_  )
//    {
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            
//            if (obj.peoductNumber>=2) {
//                obj.peoductNumber--;
//            }else{
//                [array_ removeObject:obj];
//            }
//            
//            return array_;
//            break;
//        }
//    }
//    
//    [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//
//    return array_;
//
//}
//
////从购物车  中删除   一个产品的全部  数据
//
//
//+ (NSMutableArray *)deletedAllNumberSingleProductFromCarttoArray:(SSJ_PRODUCT * )userProduct_  withArray:(NSMutableArray *)array_{
//    
//    if(!userProduct_)
//        return array_;
//    
//    for(SSJ_PRODUCT * obj in array_  )
//    {
//        if ( [userProduct_.i_id isEqualToString:obj.i_id] ) {
//            
//
//                [array_ removeObject:obj];
//            
//            return array_;
//            break;
//        }
//    }
//    
//    [[NSNotificationCenter defaultCenter] postNotificationName:KGFHeaderNavigationMarkNumber object:nil];   //导航栏提醒数字
//
//    return array_;
//    
//}
//
//
//
////根据当前的 位子 和  目的货架号 查找  图片
//+(NSString *)getShelvesImage:(NSString *)destinationProduct_  withProductImage:(NSString *)productImage_  withCurrent:(NSString *)shelvesString_ {
//
//    
//    if ([destinationProduct_ caseInsensitiveCompare:productImage_]) {   //大的放前面
//        
//        NSString * mapImage=[NSString stringWithFormat:@"%@_%@_%@_En.png",destinationProduct_,shelvesString_,shelvesString_];
//        return mapImage;
//        
//
//    }else{
//        
//        NSString * mapImage=[NSString stringWithFormat:@"%@_%@_%@_En.png",shelvesString_,destinationProduct_,shelvesString_];
//        return mapImage;
//        
//    }
//    
//       
//}
//
//
////根据当前的 位子 和  目的货架号 查找  图片
//+(NSString *)getNavigationMapImage:(SSJ_PRODUCT *)product_{
//    
//    
//    if (product_) {
//        
//        NSString * mapImage=[NSString stringWithFormat:@"%@_En.png",product_.product_map];
//        return mapImage;
//        
//        
//    }else{  //如果不存在   就 设为 空   暂不显示  任何   图片   
//        
//        //NSString * mapImage=[NSString stringWithFormat:@"%@_En.png",product_.product_map];
//        NSString * mapImage=[NSString stringWithFormat:@""];
//        return mapImage;
//        
//    }
//    
//    
//}
//
////根据  根据产品名 和  尺寸 大小获取图片
//+(NSString *)imageString:(NSString *)image_ withFrameString:(NSString *)frameString_{
//    
//    
//    
//    NSString *string2 = @".jpg";
//    NSRange range = [image_ rangeOfString:string2];
//    //int location = range.location;
//    int leight = range.length;
//    
//    NSString *imageName=[image_ substringToIndex:[image_ length]-leight];
//    NSString *imageName_String ;
//    
//    imageName_String =[NSString stringWithFormat:@"%@_%@_En.png" ,imageName,frameString_];
//
//    return imageName_String;
//    
//}
//
//
//
////根据  根据产品名 和  尺寸 大小获取图片   png  jpg 
//+(NSString *)imageString:(NSString *)image_ withFrameString:(NSString *)frameString_  withPngOrJpg:(NSString *)pngOrJpg_{
//    
//    
//    
//    NSString *string2 = @".jpg";
//    NSRange range = [image_ rangeOfString:string2];
//    //int location = range.location;
//    int leight = range.length;
//    
//    NSString *imageName=[image_ substringToIndex:[image_ length]-leight];
//    NSString *imageName_String ;
//    
//    imageName_String =[NSString stringWithFormat:@"%@_%@_En.%@" ,imageName,frameString_,pngOrJpg_];
//    
//    return imageName_String;
//    
//}
//
//
//#pragma mark=======根据位子精确 查找 货架号
//+ (CGRect )productMarkWithProduct:(SSJ_PRODUCT *)product_   withCGRectArray:(NSMutableArray *)array {
//    
//    
//    NSInteger k=[JFUtils productMarkWithProduct:product_];
//    NSValue *value=[array objectAtIndex:k];
//    CGRect rect=[value CGRectValue];
//    
//    return  rect;
//
//    
//}
//
//+(NSInteger )productMarkWithProduct:(SSJ_PRODUCT *)product_ {
//    //下标的获取
//    //精确货架的 查找
//    NSString *valueForKey=product_.product_shelves_num;//货架号
//    NSString *stirngone=product_.product_shelves_num;
//    NSString *string2=[JFUtils hasSuffixWithString:stirngone];
//    
//    NSString  *stringValue=[valueForKey substringFromIndex:1];
//    int  k=[stringValue intValue];
//    
//    if ([@"C" isEqualToString:string2])
//        k=k-1;
//    else if ([@"B" isEqualToString:string2])
//        k=k+4;
//    else if ([@"A" isEqualToString:string2])
//        k=k+8;
//    
//    return k;
//    
//}
//
////根据当前的 位子 和  目的货架号 查找  图片
//+(NSString *)getMapImage:(NSMutableArray *)productArray_  withCurrentLocation:(NSString *)currentLocation_  {
//    
//     NSString *string1=[NSString stringWithFormat:@""];
//     NSString *string2=[NSString stringWithFormat:@""];
//     NSString *string3=[NSString stringWithFormat:@""];
////     NSString *string4=[NSString stringWithFormat:@""];
//
//
//    
//    if ([productArray_ count]>0) {
//        
//        SSJ_PRODUCT *product;
//        for (int  i=0; i<[productArray_ count]; i++) {
//            product=[productArray_ objectAtIndex:i];
//            if ([ product.product_shelves_num  rangeOfString:@"A" ].location !=NSNotFound) {
//                string1=@"A";
//                
//            }if ([ product.product_shelves_num rangeOfString:@"B" ].location !=NSNotFound) {
//                string2=@"B";
//
//            }if ([product.product_shelves_num  rangeOfString:@"C" ].location !=NSNotFound) {
//                string3=@"C";
//
//            }
//        }
//    }
//    
//    NSString *mapString;
////    NSString *currentString=[JFUtils perkeychangeToChar:currentLocation_];
////    
////    if (currentString) {
////        
////        //在定位区域的定位符  由 产品的货架号和区域符号组合成的
////        mapString=[NSString stringWithFormat:@"%@%@%@+%@",string1,string2,string3,currentString];  
////
////    }else{
////        //不在当前区域的  产品 定位符
//        mapString=[NSString stringWithFormat:@"%@%@%@",string1,string2,string3];   //
//
////    }
//    
//    
//    return mapString;
//    
//}
//
//
//
////  根据声波信号获取 A  B   C  E F 区 的标志   当前位子
//+ (NSString *)perkeychangeToChar:(NSString *)perkey_{
//    if (!perkey_) return nil;
//
//    NSString *perkeyChar= [NSString  stringWithFormat:@""];
//
//    NSDictionary *dictKey=[JSessionInfo sharedInstance].current_location;
//   
//    BOOL isBool=NO;
//
//    NSEnumerator *keys=[dictKey keyEnumerator];
//    id keyInDic=nil;
//    while ((keyInDic =[keys nextObject])!=nil) {
//    
//        if ([perkey_ isEqual:keyInDic])
//            isBool=YES;
//    }
//    
//    if (!isBool) return perkeyChar;
//    
//    NSString *valueForKey=[dictKey objectForKey:perkey_];
//           
//    perkeyChar=[JFUtils hasSuffixWithString:valueForKey];
//           
//    return perkeyChar;
//    
//}
//
//
////过滤字母ABC    
//+(NSString *)hasSuffixWithString:(NSString *)String_{
//    
//    NSString *string=[NSString string];
//    DLog(@"string==%@",string);
//
//    if (!String_ )  return nil;
//    
//    
//    if ([String_ hasPrefix:@"A"]) {
//        
//        string=@"A";
//        
//    }else if([String_  hasPrefix:@"B"]){
//        
//        string=@"B";
//         
//    }
//    else if([String_  hasPrefix:@"C"]){
//        
//        string=@"C";
//        
//    }
//    else if([String_  hasPrefix:@"E"]){
//        
//        string=@"E";
//        
//    }
//    else if([String_  hasPrefix:@"F"]){
//        
//        string=@"F";
//        
//    }else{
//        
//        string=@"";
//        
//        DLog(@"error  location  当前位子   默认  A ");
//    }
//
//    return string;
//    
//}
//
//
//
//
//
////  货架的位子信息
//+(NSMutableArray *)createFrameArray{
//    
//    CGRect rectB =CGRectMake( 170 ,561,  16 , 21);
//    
//    
//    CGRect rectC1 =CGRectMake(  56 ,  465 , 16 , 21);
//    CGRect rectC2 =CGRectMake(  112  ,465  , 16  ,21);
//    CGRect rectC3 =CGRectMake(  56  ,  494 , 16 , 21);
//    CGRect rectC4 =CGRectMake(  112 , 494  , 16 , 21);
//    
//    CGRect rectA1 = CGRectMake(   269  ,431,  16,  21);
//    CGRect rectA2 = CGRectMake(  214  ,449 , 16  ,21);
//    CGRect rectA3 = CGRectMake(  269 , 487 , 16 , 21);
//    CGRect rectA4 = CGRectMake( 199  ,491   ,16 , 21);
//    CGRect rectA5 = CGRectMake(  251 , 537 ,  16 , 21);
//    CGRect rectA6 = CGRectMake( 294 , 462   , 16 , 21);
//    CGRect rectA7 = CGRectMake (  358 , 507  ,16  ,21);
//    CGRect rectA8 = CGRectMake(  295 , 519  ,16,  21);
//    CGRect rectA9 = CGRectMake( 338 , 565  , 16 , 21);
//    CGRect rectA10 =CGRectMake( 189 ,431,  16 , 21);
//    
//    
//    NSValue   *rectBValue =[NSValue valueWithCGRect:rectB];
//    
//    NSValue   *rectC1Value =[NSValue valueWithCGRect:rectC1];
//    NSValue   *rectC2Value=[NSValue valueWithCGRect:rectC2];
//    NSValue   *rectC3Value=[NSValue valueWithCGRect:rectC3];
//    NSValue   *rectC4Value=[NSValue valueWithCGRect:rectC4];
//    
//    NSValue   *rectA1Value=[NSValue valueWithCGRect:rectA1];
//    NSValue   *rectA2Value=[NSValue valueWithCGRect:rectA2];
//    NSValue   *rectA3Value=[NSValue valueWithCGRect:rectA3];
//    NSValue   *rectA4Value=[NSValue valueWithCGRect:rectA4];
//    NSValue   *rectA5Value=[NSValue valueWithCGRect:rectA5];
//    NSValue   *rectA6Value=[NSValue valueWithCGRect:rectA6];
//    NSValue   *rectA7Value=[NSValue valueWithCGRect:rectA7];
//    NSValue   *rectA8Value=[NSValue valueWithCGRect:rectA8];
//    NSValue   *rectA9Value=[NSValue valueWithCGRect:rectA9];
//    NSValue   *rectA10Value=[NSValue valueWithCGRect:rectA10];
//    
//    
//    NSMutableArray  *arrayFrame=[[[NSMutableArray alloc]initWithObjects:rectBValue,rectC1Value,rectC2Value,rectC3Value,rectC4Value,rectA1Value, rectA2Value, rectA3Value, rectA4Value, rectA5Value, rectA6Value,rectA7Value,rectA8Value,rectA9Value,rectA10Value ,nil] autorelease];
//    
//    return arrayFrame;
//    
//    
//}
//
//
//
////  货架的位子信息map  新地图  货架  号  的数据
//+(NSMutableArray *)createMapNewShevelsMarkFrameArray{
//    
//#pragma mark==========================一次 修改 尺寸
//    
////    
////    CGRect rectC1 =CGRectMake(  250 ,444-60,53,53);
////    CGRect rectC2 =CGRectMake(  338 ,444-60,53,53);
////    CGRect rectC3 =CGRectMake(  250 ,504-60,53,53);
////    CGRect rectC4 =CGRectMake(  338 ,504-60,53,53);
////    
////    
////    CGRect rectB1 =CGRectMake( 410, 617-60,53,53);
////    CGRect rectB2 =CGRectMake( 465, 613-60,53,53);
////    CGRect rectB3 =CGRectMake( 507, 631-60,53,53);
////    CGRect rectB4 =CGRectMake( 543, 609-60,53,53);
////    CGRect rectB5 =CGRectMake( 585, 626-60,53,53);
////
////    CGRect rectA1 =CGRectMake(  507 ,444-60,53,53);
////    CGRect rectA2 =CGRectMake(  457 ,447-60,53,53);
////    CGRect rectA3 =CGRectMake(  500 ,518-60,53,53);
////    CGRect rectA4 =CGRectMake(  445 ,540-60,53,53);
////    CGRect rectA5 =CGRectMake(  494 ,581-60,53,53);
////    CGRect rectA6 =CGRectMake(  574 ,468-60,53,53);
////    CGRect rectA7 =CGRectMake(  622 ,518-60,53,53);
////    CGRect rectA8 =CGRectMake(  561 ,548-60,53,53);
////    CGRect rectA9 =CGRectMake(  610 ,586-60,53,53);
////    CGRect rectA10=CGRectMake(  410 ,504-60,53,53);
//    
//#pragma mark==========================二次 修改 尺寸
////    CGRect rectC1 =CGRectMake(  250 ,444-60+30,53,53);
////    CGRect rectC2 =CGRectMake(  338 ,444-60+30,53,53);
////    CGRect rectC3 =CGRectMake(  250 ,504-60+30,53,53);
////    CGRect rectC4 =CGRectMake(  338 ,504-60+30,53,53);
////    
////    
////    CGRect rectB1 =CGRectMake( 410, 617-60+30,53,53);
////    CGRect rectB2 =CGRectMake( 465, 613-60+30,53,53);
////    CGRect rectB3 =CGRectMake( 507, 631-60+30,53,53);
////    CGRect rectB4 =CGRectMake( 543, 609-60+30,53,53);
////    CGRect rectB5 =CGRectMake( 585, 626-60+30,53,53);
////    
////    CGRect rectA1 =CGRectMake(  507 ,444-60+30,53,53);
////    CGRect rectA2 =CGRectMake(  457 ,447-60+30,53,53);
////    CGRect rectA3 =CGRectMake(  500 ,518-60+30,53,53);
////    CGRect rectA4 =CGRectMake(  445 ,540-60+30,53,53);
////    CGRect rectA5 =CGRectMake(  494 ,581-60+30,53,53);
////    CGRect rectA6 =CGRectMake(  574 ,468-60+30,53,53);
////    CGRect rectA7 =CGRectMake(  622 ,518-60+30,53,53);
////    CGRect rectA8 =CGRectMake(  561 ,548-60+30,53,53);
////    CGRect rectA9 =CGRectMake(  610 ,586-60+30,53,53);
////    CGRect rectA10=CGRectMake(  410 ,504-60+30,53,53);
//    
//#pragma mark==========================三次 修改 尺寸
//    
//    CGRect rectC1 =CGRectMake(250, 440-30, 53, 53);
//    CGRect rectC2 =CGRectMake(327, 440-30, 53, 53);
//    CGRect rectC3 =CGRectMake(250, 480-30, 53, 53);
//    CGRect rectC4 =CGRectMake(327, 480-30, 53, 53);
//    
//    
//    CGRect rectB1 =CGRectMake(427, 601-30, 53, 53);
//    CGRect rectB2 =CGRectMake(478, 609-30, 53, 53);
//    CGRect rectB3 =CGRectMake(503, 609-30, 53, 53);
//    CGRect rectB4 =CGRectMake(547, 609-30, 53, 53);
//    CGRect rectB5 =CGRectMake(573, 609-30, 53, 53);
//    
//    CGRect rectA1 =CGRectMake(478, 438-30, 53, 53);
//    CGRect rectA2 =CGRectMake(475, 471-30, 53, 53);
//    CGRect rectA3 =CGRectMake(468, 502-30, 53, 53);
//    CGRect rectA4 =CGRectMake(467, 533-30, 53, 53);
//    CGRect rectA5 =CGRectMake(462, 564-30, 53, 53);
//    CGRect rectA6 =CGRectMake(596, 467-30, 53, 53);
//    CGRect rectA7 =CGRectMake(590, 500-30, 53, 53);
//    CGRect rectA8 =CGRectMake(586, 532-30, 53, 53);
//    CGRect rectA9 =CGRectMake(581, 570-30, 53, 53);
//    CGRect rectA10=CGRectMake(408, 487-30, 53, 53);
//    
//    NSValue   *rectBValue1 =[NSValue valueWithCGRect:rectB1];
//    NSValue   *rectBValue2 =[NSValue valueWithCGRect:rectB2];
//    NSValue   *rectBValue3 =[NSValue valueWithCGRect:rectB3];
//    NSValue   *rectBValue4 =[NSValue valueWithCGRect:rectB4];
//    NSValue   *rectBValue5 =[NSValue valueWithCGRect:rectB5];
//
//    NSValue   *rectC1Value =[NSValue valueWithCGRect:rectC1];
//    NSValue   *rectC2Value=[NSValue valueWithCGRect:rectC2];
//    NSValue   *rectC3Value=[NSValue valueWithCGRect:rectC3];
//    NSValue   *rectC4Value=[NSValue valueWithCGRect:rectC4];
//    
//    NSValue   *rectA1Value=[NSValue valueWithCGRect:rectA1];
//    NSValue   *rectA2Value=[NSValue valueWithCGRect:rectA2];
//    NSValue   *rectA3Value=[NSValue valueWithCGRect:rectA3];
//    NSValue   *rectA4Value=[NSValue valueWithCGRect:rectA4];
//    NSValue   *rectA5Value=[NSValue valueWithCGRect:rectA5];
//    NSValue   *rectA6Value=[NSValue valueWithCGRect:rectA6];
//    NSValue   *rectA7Value=[NSValue valueWithCGRect:rectA7];
//    NSValue   *rectA8Value=[NSValue valueWithCGRect:rectA8];
//    NSValue   *rectA9Value=[NSValue valueWithCGRect:rectA9];
//    NSValue   *rectA10Value=[NSValue valueWithCGRect:rectA10];
//    
//    
//    NSMutableArray  *arrayFrame=[[[NSMutableArray alloc]initWithObjects:rectC1Value,rectC2Value,rectC3Value,rectC4Value,rectBValue1,rectBValue2,rectBValue3,rectBValue4,rectBValue5,rectA1Value, rectA2Value, rectA3Value, rectA4Value, rectA5Value, rectA6Value,rectA7Value,rectA8Value,rectA9Value,rectA10Value ,nil] autorelease];
//    
//    return arrayFrame;
//    
//    
//}
//
//
//
//#pragma mark  ------  截取字符串－－－－－
//
//
////截取字符窜  中特定字符  之后的  字符窜-----<---<----<-------byString_
//+ (NSString *)segmentLastString:(NSString *)String_  byString:(NSString *)byString_{
//    
//    if (String_==nil || byString_==nil)  {
//        
//        //        DLog(@"数据都为空值＝＝＝＝＝截取字符串错误");
//        return nil;
//    }
//    
//    
//    NSString *string=[NSString stringWithFormat:@""];
//    
//    NSRange  range = NSMakeRange(0, String_.length);
//    
//    range = [String_ rangeOfString:@"_" options:NSCaseInsensitiveSearch range:range locale:nil];
//    
//    if (range.location != NSNotFound ) {
//        
//        string = [String_ substringToIndex:range.location];//截取下标7之后的字符串
//
//    }else if(string!=nil){
//        
//        string=String_;
//    }else{
//        
//        
//       string=@"";
//    }
//    
//    //    DLog (@"截取的值为：%@",String_);
//    return string;
//    
//    
//}
//
////截取字符窜  中特定字符  之前的  字符窜----->--->---->-------byString_
//+ (NSString *)segmentResultString:(NSString *)String_  byString:(NSString *)byString_{
//    
//    
//    if (String_==nil || byString_==nil)  {
//        
////        DLog(@"数据都为空值＝＝＝＝＝截取字符串错误");
//        return nil;
//    }
//    
//    NSString *string=[NSString stringWithFormat:@""];
//    
//    DLog(@"%@",string);
//    NSRange  range = NSMakeRange(0, String_.length);
//    
//    range = [String_ rangeOfString:@"_" options:NSCaseInsensitiveSearch range:range locale:nil];
//    
//    
//    if (range.location != NSNotFound ) {
//        
//        string=[String_ substringFromIndex:range.location+1];//截取下标2之前的字符串
//        
//    }else{
//        
//        string=nil;
//    }
//
//    
//    DLog(@"截取的值为：%@",string);
//    
//    return string;
//    
//    
//}
//
//
//
//
////截取 一串字符窜    放在数组中
//+ (NSMutableArray *)segmentString:(NSString *)String_  byString:(NSString *)byString_{
//    
//    
//    if (String_==nil || byString_==nil)  {
//        
//        DLog(@"数据都为空值＝＝＝＝＝截取字符串错误");
//        return nil;
//    }
//
//    NSMutableArray *stringArray=[[[NSMutableArray alloc]init]autorelease];
//    
//    NSString *string1;
//    NSString *string2;
//    
//    
//    string1=[JFUtils segmentLastString:String_ byString:byString_];
//    string2=[JFUtils segmentResultString:String_ byString:byString_];
//    
//    if (string1!=nil) {
//        [stringArray addObject:string1];
//    }
//    
//    while (string2!=nil) {
//        
//        string1=[JFUtils segmentLastString:string2 byString:byString_];
//        string2=[JFUtils segmentResultString:string2 byString:byString_];
//        
//        
//        if (string1!=nil   ) {
//            
//            
//            [stringArray addObject:string1];
//        }
//
//    }
//    
//    
//    if ([stringArray count]==3) {
//        
//    
//    }else if([stringArray count]==2){
//        [stringArray addObject:@"3  "];
//        
//    }
//    else if([stringArray count]==1){
//        [stringArray addObject:@"2  "];
//        [stringArray addObject:@"3  "];
//        
//    }else if([stringArray count]<=0){
//        [stringArray addObject:@"1  "];
//        [stringArray addObject:@"2  "];
//        [stringArray addObject:@"3  "];
//    }else{
//        
//    }
//
//    
//    
//        return stringArray;
//    
//    
//    
//}
//
//
////从两个数组中 得到一个新的数组
//
//+(NSMutableArray *)productAllArrayComparePartArray:(NSMutableArray *)allArray_ partArray:(NSMutableArray *)partArray_{
//    
//    
//    NSMutableArray *resultArray;//=[[[NSMutableArray alloc]init]autorelease];
//    
//    if ([allArray_ count]<=0) {
//        return nil;
//    }
//    
//    else if ([partArray_ count]<=0 ){
//        
//        //[JFUtils copyArrayToArray:resultArray withAray:allArray_];
//        
//        resultArray=[NSMutableArray arrayWithArray: allArray_];
//        return resultArray;
//    }
//    
//    else{
//       // [JFUtils copyArrayToArray:resultArray withAray:allArray_];
//
//        resultArray=[NSMutableArray arrayWithArray: allArray_];
//
//
//        for (int j=0; j<[partArray_ count]; j++) {
//            
//            SSJ_PRODUCT *product2=[partArray_ objectAtIndex:j];
//            
//            for (int i=0; i<[allArray_ count]; i++) {
//                
//                SSJ_PRODUCT *product1=[allArray_ objectAtIndex:i];
//                
//                if (product1.i_id!=product2.i_id) break;
//                else   resultArray=[JFUtils deletedProductFromCarttoArray:product2 withArray:resultArray];
//                
//                
//                
//            }
//            
//        }
//        
//        return resultArray;
//
//        
//    }
//    
//    
//    
//    
//    
//}
//
//
///*
// 
//拿到一个 产品   在五家商店中 的价格  然后  排序  
// 
// hypermarket_price;
// largebeauty_price;
// department_price;
// baby_price;
// mini_price;
// 
// */
//
//+ (NSMutableArray *)priceProductFive:(SSJ_PRODUCT *)product_{
//    
//    NSMutableDictionary *productDictionary=[[[NSMutableDictionary alloc]init]autorelease];
//
//    if (product_.hypermarket_price!=-1) {
//        
//        [productDictionary setObject:[NSString stringWithFormat:@"%.2f", product_.hypermarket_price] forKey:@"Hypermarket"];
//    }
//    if (product_.largebeauty_price!=-1) {
//        
//        [productDictionary setObject:[NSString stringWithFormat:@"%.2f", product_.largebeauty_price] forKey:@"Large Beauty"];
//    }
//    if (product_.department_price!=-1) {
//        
//        [productDictionary setObject:[NSString stringWithFormat:@"%.2f", product_.department_price] forKey:@"Department Store"];
//    }
//    if (product_.baby_price!=-1) {
//        
//        [productDictionary setObject:[NSString stringWithFormat:@"%.2f", product_.baby_price] forKey:@"Baby"];
//    }
//    if (product_.mini_price!=-1) {
//        
//        [productDictionary setObject:[NSString stringWithFormat:@"%.2f", product_.mini_price] forKey:@"Mini"];
//    }
//    
//    
////    DLog(@"productDictionary=====%@",productDictionary);
//    NSMutableArray * storeArray;//=[[[NSMutableArray alloc]init]autorelease];
//    storeArray=[JFUtils sortingFiveStorePrice:productDictionary];
////    DLog(@"storeArray=====%@",storeArray);
//
//    return storeArray;
//}
//
//
///*
// 
// 拿到一个 产品   给五家商店中 的价格  进行排序  排序
// 
// hypermarket_price;
// largebeauty_price;
// department_price;
// baby_price;
// mini_price;
// 
// */
//
//+ (NSMutableArray * )sortingFiveStorePrice:(NSMutableDictionary *)productDictionary_{
//    
//    NSMutableArray * storeArrayKey=[[[NSMutableArray alloc]init]autorelease];
//    NSMutableArray * storeArrayValue=[[[NSMutableArray alloc]init]autorelease];
//
//    NSMutableDictionary *productDictionary=productDictionary_;
//    
//    NSEnumerator *keys=[productDictionary keyEnumerator];
//    id keyInDic=nil;
//    while ((keyInDic =[keys nextObject])!=nil) {
//        id valueForKey=[productDictionary objectForKey:keyInDic];
////        NSLog(@"Key=%@,ValueForKey=%@",keyInDic,valueForKey);
//        [storeArrayValue addObject:valueForKey];
//        [storeArrayKey addObject:keyInDic];
//    }
//    
//    
////    DLog(@"storeArrayValue=====%@",storeArrayValue);
//
//    for (int i=0 ; i<[storeArrayKey count]-1; i++) {
//        for (int j=i ; j<[storeArrayKey count]; j++) {
////            DLog(@"storeArrayValue=====%@",[storeArrayValue objectAtIndex:i]);
//
//            if ([[storeArrayValue objectAtIndex:i]floatValue] >[[storeArrayValue objectAtIndex:j] floatValue]) {
//                storeArrayValue=[JFUtils sortingWithArray:storeArrayValue withMaxNumber:i withMinNum:j];
//                storeArrayKey=[JFUtils sortingWithArray:storeArrayKey withMaxNumber:i withMinNum:j];
//                
//            }
//        }
////        DLog(@"storeArrayValue=====%@",storeArrayValue);
//
//    }
//    
//
//
//    NSMutableArray * storeArray=[[[NSMutableArray alloc]init]autorelease];
//
//    [storeArray addObject:storeArrayValue];
//    [storeArray addObject:storeArrayKey];
////    DLog(@"storeArray=====%@",storeArray);
//
//    
//    return storeArray;
//}
//
//
//+ (NSMutableArray * )sortingWithArray:(NSMutableArray *)Array_ withMaxNumber:(NSInteger)maxnum_  withMinNum:(NSInteger)minnum_{
//   
//    NSMutableArray * array=[[[NSMutableArray alloc]init]autorelease];
//
//    NSString *stringMa=[Array_ objectAtIndex:maxnum_];
//    NSString *stringMi=[Array_ objectAtIndex:minnum_];
//    
//       DLog(@"Array_=====%@",Array_);
//
//    for (int i=0; i<[Array_ count];i++ ) {
//        
//        if (i==maxnum_) {
//            [array addObject:stringMi];
//        }else if(i==minnum_){
//            
//            [array addObject:stringMa];
//
//        }else{
//            [array addObject:[Array_ objectAtIndex:i]];
//            
//        }
//    }
//    
//    DLog(@"array=====%@",array);
//
//    return array;
//}
//
//
////
////// 将三家  或者  五家商店的产品价格  进行排序
////+ (NSMutableArray *)productPriceSquenc:(NSMutableArray *)productArray_{
////    NSMutableArray *productArray=[[[NSMutableArray alloc]init]autorelease];
////    
////    
////    
////    
////    return productArray;
////}
//
////
////+ (NSMutableArray *)lowProductPrice:(SSJ_PRODUCT *)product_{
////
////    if(!product_) return nil;
////    
////    NSMutableArray *productArray=[[[NSMutableArray alloc]init]autorelease];
////
////    NSMutableArray *productPriceArray=[[NSMutableArray alloc]init];
////
////    if (product_.hypermarket_price) {
////        NSDictionary *dic=[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%.2f",product_.hypermarket_price] forKey:@"hypermarket"];
////        [productArray addObject:dic];
////        [productPriceArray addObject:[NSString stringWithFormat:@"%.2f",product_.hypermarket_price]];
////    }
////    if (product_.department_price) {
////        NSDictionary *dic=[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%.2f",product_.department_price] forKey:@"department"];
////        [productArray addObject:dic];
////        [productPriceArray addObject:[NSString stringWithFormat:@"%.2f",product_.department_price]];
////
////    }
////    if (product_.largebeauty_price) {
////        NSDictionary *dic=[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%.2f",product_.largebeauty_price] forKey:@"largebeauty"];
////        [productArray addObject:dic];
////        [productPriceArray addObject:[NSString stringWithFormat:@"%.2f",product_.largebeauty_price]];
////
////    }
////    if (product_.baby_price) {
////        NSDictionary *dic=[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%.2f",product_.baby_price] forKey:@"baby"];
////        [productArray addObject:dic];
////        [productPriceArray addObject:[NSString stringWithFormat:@"%.2f",product_.baby_price]];
////
////    }
////    if (product_.mini_price) {
////        NSDictionary *dic=[NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%.2f",product_.mini_price] forKey:@"mini"];
////        [productArray addObject:dic];
////        [productPriceArray addObject:[NSString stringWithFormat:@"%.2f",product_.mini_price]];
////
////    }
////    
////    NSMutableArray *keyArray=[[NSMutableArray alloc]init];
////
////    //保存所有键值
////    for (int i=0; i<[productArray count];i++ ) {
////
////        NSEnumerator *keys=[[productArray objectAtIndex:i]keyEnumerator];
////        id keyInDic=nil;
////        while ((keyInDic =[keys nextObject])!=nil) {
////
////            [keyArray addObject:keyInDic];
////            
////            DLog(@"keyArray===%@",keyArray);
////        }
////        
////        
////    }
////
////    [JFUtils squenceArray:productPriceArray];
////    
////    
////    NSMutableArray *resultArray=[[[NSMutableArray alloc]init]autorelease];
////    for (int i=0; i<[productPriceArray count];i++ ) {
////        float  price=[[productPriceArray objectAtIndex:i] floatValue ];
////        
////        for (int i=0; i<[productArray count];i++ ) {
////            float keyPrice=[[[productArray objectAtIndex:i] objectForKey:[keyArray objectAtIndex:i]] floatValue];
////            
////            if (price ==keyPrice) {
////                [resultArray addObject:[productArray  objectAtIndex:i]];
////            }
////            
////
////        }
////    
////    }
////    
////       
////
////    return resultArray;
////    
////    
////}
//
//
////排序
//+ (void)squenceArray:(NSMutableArray*)array_{
//    if(!array_) return;
//    
//    
//    NSMutableArray *array=[NSMutableArray array];
////    [JFUtils copyArrayToArray:array withAray:array_];
//
//    for (int i=0; i<[array_ count]-1;i++ ) {
//        for (int j=i+1; j<[array_ count];j++ ) {
//            
//            if([[array objectAtIndex:i] floatValue]>[[array objectAtIndex:j] floatValue]){
//            
//                float iNumber=[[array objectAtIndex:i] floatValue];
//                float jNumber=[[array objectAtIndex:j] floatValue];
//
//                for (int k=0; k<[array_ count];k++ ) {
//                    if(k==i){
//                        [array addObject:[NSString stringWithFormat:@"%.2f", jNumber]];
//                    }if(k==j){
//                        [array addObject:[NSString stringWithFormat:@"%.2f", iNumber]];
//
//                        
//                    }else{
//                        
//                        [array addObject:[array_ objectAtIndex:k]];
//                    }
//                }
//                
//  
//                array_=array;
//                if([array count]>0)
//                    [array removeAllObjects];
//                
//        }
//    
//    }
//}
//
//}
//
//
////将字符串 小写并且 去掉 空格 符号
//
//+ (NSString *)stringLowercaseWithString:(NSString *)string_ {
//    
//    
//    if (!string_) return nil;
//    NSString *stringReturn=[NSString stringWithFormat:@""];
//        
////    NSLog(@"string1:%@",[string1 uppercaseString]);//大写
//    
//     NSString *string1 =[string_ lowercaseString];//小写
////    NSLog(@"string2:%@",[string2 capitalizedString]);//首字母大小
//
//    NSArray *arrayNow=[string1 componentsSeparatedByString:@" "];
//    
//    for (int i=0; i<[arrayNow count]; i++) {
//        stringReturn=[stringReturn stringByAppendingString:[arrayNow objectAtIndex:i]];
//    }
//    return stringReturn;
//    
//}
//
//
//
//
//+ (NSMutableArray *)arrayWithDictionaryArray:(NSMutableArray *)dictionaryArray_ withClassName:(NSString*)className_{
//
//    NSMutableArray *array_=[NSMutableArray array];
//    
//    
//    
//    for(NSDictionary *p in dictionaryArray_ ){
//
//
//        XmlResponse *product = [[NSClassFromString(className_) alloc] initWithDictionary:p];//
//
//        [array_ addObject:product];
//        
//        [product release];
//        
////        NSLog(@"%@",product.i_id);
//    }
//    
//    
//        return array_;
//
//}
//
//
////=============================================================
//
//
//// 总 的 
//
+(NSMutableArray *)todayYearMonthDay{
    
    NSCalendar *calendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar]autorelease];
    NSDate *now;
//    NSDateComponents *comps = [[[NSDateComponents alloc] init]autorelease];
    NSDateComponents *comps;

    NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit |
    NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    now=[NSDate date];
    comps = [calendar components:unitFlags fromDate:now];
    
    int year=[comps year];
    int week = [comps weekday];
    int month = [comps month];
    int day = [comps day];
    int hour = [comps hour];
    int min = [comps minute];
    int sec = [comps second];
    
    NSString *      yearString=[NSString stringWithFormat:@"%d",year];
    NSString *      monthString=[NSString stringWithFormat:@"%d",month];
    NSString *      dayString =[NSString stringWithFormat:@"%d", day];
    NSString *      weekString =[NSString stringWithFormat:@"%d",week];
    NSString *      hourString =[NSString stringWithFormat:@"%d",hour];
    NSString *      minString =[NSString stringWithFormat:@"%d",min];
    NSString *      secString =[NSString stringWithFormat:@"%d",sec];
    
    
    NSMutableArray *clanderArray=[[[NSMutableArray alloc]init]autorelease];
    
    [clanderArray addObject:yearString];
    [clanderArray addObject:monthString];
    [clanderArray addObject:dayString];
    [clanderArray addObject:weekString];
    [clanderArray addObject:hourString];
    [clanderArray addObject:minString];
    [clanderArray addObject:secString];
    
    return clanderArray;
    // on Friday , 07  March 2013
    
}


//将 时间  的 NSdate  转化为 NSString
+(NSString *)todayDateString:(NSDate *)date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString *dateString = [formatter stringFromDate:date];
    
    [formatter release];
    
    return dateString;
    
}
//将 时间  的 NSString  转化为 NSdate
+(NSDate *)todayDate:(NSString *)dateString{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *date1 = [formatter dateFromString:dateString];
    
    [formatter release];
    
    return date1;
    
}

#pragma mark=========    日期 按 天数  加减

//   给 一个当天 的日期  进行 加减  运算
+ (NSDate *)addDayDateWithDay:(NSDate *)dayDate isAdd:(BOOL)isAdd{

    NSTimeInterval secondsPerDay = 24 * 60 * 60;
    
    if (dayDate){
        if (isAdd) {
            dayDate= [[dayDate dateByAddingTimeInterval:secondsPerDay] retain];
        }else{
            dayDate= [[dayDate dateByAddingTimeInterval:-secondsPerDay]retain];
        }
    }
    
    return dayDate;
 
}



//
//
//+ (NSString *)changeWeekToEngishWithNumber:(NSInteger)weekMonth{   //给个数字  返回 一个  英文的的    星期
//    
//    if (weekMonth>8 || weekMonth<=0)
//        return nil;
//    NSMutableArray *arrayWeek=[[[NSMutableArray alloc]init]autorelease];
//    [arrayWeek addObject: @"Sunday"];
//    [arrayWeek addObject: @"Monday"];
//    [arrayWeek addObject: @"Tuesday"];
//    [arrayWeek addObject: @"Wednesday"];
//    [arrayWeek addObject: @"Thursday"];
//    [arrayWeek addObject: @"Friday"];
//    [arrayWeek addObject: @"Saturday"];
//    
//    NSString *engishString;
//
//    engishString=[arrayWeek objectAtIndex:(weekMonth-1)];
//    
//    return engishString;
//    
//}
//+ (NSString *)changeMonthToEngishWithNumber:(NSInteger)monthNumber{   //给个数字  返回 一个  英文的的月份
//    if (monthNumber>12 || monthNumber<1)
//        return nil;
//    
//    NSMutableArray *arrayMonth=[[[NSMutableArray alloc ]init]autorelease];
//    
//    [arrayMonth addObject: @"January"];
//    [arrayMonth addObject: @"February"];
//    [arrayMonth addObject: @"March"];
//    [arrayMonth addObject: @"April"];
//    [arrayMonth addObject: @"May"];
//    [arrayMonth addObject: @"June"];
//    [arrayMonth addObject: @"July"];
//    [arrayMonth addObject: @"August"];
//    [arrayMonth addObject: @"September"];
//    [arrayMonth addObject: @"October"];
//    [arrayMonth addObject: @"November"];
//    [arrayMonth addObject: @"December"];
//    
//    NSString *engishString;
//    engishString=[arrayMonth objectAtIndex:(monthNumber-1)];
//    return engishString;
//    
//    //    January一月； February二月； March三月； April 四月； May 五月；June 六月；July七月；August 八月；September 九月；October 十月；November 十一月；December十二月
//    
//}
//
//
//
//#pragma mark======// 获取  日期 格式 //07  March 2013
//
//+ (NSString *)dayHourMinString{
//    NSString *hourString=[[JFUtils  todayYearMonthDay] objectAtIndex:4];
//    NSString *minString=[[JFUtils  todayYearMonthDay] objectAtIndex:5];
//    return [NSString stringWithFormat:@"%@:%@",hourString,minString];
//}
//
//
//#pragma mark======// 获取  日期 格式 //07  March 2013
//
//+ (NSString *)dayEMonthZYear{
//    
//    NSString *month= [JFUtils changeMonthToEngishWithNumber:[[[JFUtils todayYearMonthDay] objectAtIndex:1] intValue]];
//    NSString *day= [[JFUtils todayYearMonthDay] objectAtIndex:2];
//    NSString *year=[[JFUtils todayYearMonthDay] objectAtIndex:0];
//    
//    NSString *clanderString;
//    
//    clanderString=[NSString stringWithFormat:@"%@ %@ %@",day, month,year];
//    
//    return clanderString;
//}
//
//#pragma mark======// 获取  日期 格式 //09:00 on Friday , 07  March 2013
//
//+ (NSString *)zweekEDayEMonthZYear{
//    
//    NSString *clanderString;
//    NSString *week = [JFUtils changeWeekToEngishWithNumber: [[[JFUtils todayYearMonthDay] objectAtIndex:3] intValue]];
//
//    clanderString=[NSString stringWithFormat:@"on %@ , %@",week,[JFUtils dayEMonthZYear]];
//    
//    return clanderString;
//}
//
//
//
//#pragma mark======//  09:00 on Friday , 07  March 2013  转化为中文
//+ (NSString *)zweekEDayEMonthZYearLanguageToChina:(NSString *)engishCalender{
//
//    NSString *string;
//    
//    NSArray *calenderArray=[engishCalender componentsSeparatedByString:@" "];
//    NSMutableArray *dateArray=[[[NSMutableArray alloc]init]autorelease];
//    for (int i=0; i<[calenderArray count]; i++) {
//        
//        NSString *stringNow=[calenderArray objectAtIndex:i];
//        if (![ stringNow isEqualToString:@" "] &&
//            ![stringNow isEqualToString:@","]  &&
//            ![stringNow isEqualToString:@""]  &&
//            ![stringNow isEqualToString:@"on"] ) {
//            [dateArray addObject:stringNow];
//        }
//    }
//    
//    if ([dateArray count]>4) {
//        NSString *string1=[dateArray objectAtIndex:0];//时间
//        NSString *string2=[dateArray objectAtIndex:1];//星期
//        NSString *string3=[dateArray objectAtIndex:2];//日
//        NSString *string4=[dateArray objectAtIndex:3];//月
//        NSString *string5=[dateArray objectAtIndex:4];//年
//
////        NSString *string33=[NSString stringWithFormat:@"%d",[string3 integerValue]];//日
//
//        NSString *string22=[JFUtils changeChinaLanguageWeek:string2];
//        NSString *string44=[JFUtils changeChinaLanguageMonth:string4];
//
//        string=[NSString stringWithFormat:@"%@年%@%@日 %@ %@",string5,string44,string3,string22,string1];
//        
//    }else{
//        
//        DLog(@"Error=======JFUtils   日期转换");
//        
//        string=engishCalender;
//    }
//    
//    DLog(@"calenderArray==%@",calenderArray);
//
//    return string;
//
//}
//#pragma mark====== @"22:15 18 May 2013  转化为中文
//+ (NSString *)zweekEDayEMonthZYearLanguageToChinaOther:(NSString *)engishCalender{
//    
//    NSString *string;
//    
//    NSArray *calenderArray=[engishCalender componentsSeparatedByString:@" "];
//    NSMutableArray *dateArray=[[[NSMutableArray alloc]init]autorelease];
//    for (int i=0; i<[calenderArray count]; i++) {
//        
//        NSString *stringNow=[calenderArray objectAtIndex:i];
//        if (![ stringNow isEqualToString:@" "] &&
//            ![stringNow isEqualToString:@","]  &&
//            ![stringNow isEqualToString:@""]  &&
//            ![stringNow isEqualToString:@"on"] ) {
//            [dateArray addObject:stringNow];
//        }
//    }
//    
//    if ([dateArray count]>3) {
//        NSString *string1=[dateArray objectAtIndex:0];//时间
//        NSString *string2=[dateArray objectAtIndex:1];//日
//        NSString *string3=[dateArray objectAtIndex:2];//月
//        NSString *string4=[dateArray objectAtIndex:3];//星期
//
//        //        NSString *string33=[NSString stringWithFormat:@"%d",[string3 integerValue]];//日
//        
//        NSString *string33=[JFUtils changeChinaLanguageMonth:string3];
//        
//        string=[NSString stringWithFormat:@"%@年%@%@日 %@",string4,string33,string2,string1];
//        
//    }else{
//        
//        DLog(@"Error=======JFUtils   日期转换");
//        
//        string=engishCalender;
//    }
//    
//    DLog(@"calenderArray==%@",calenderArray);
//    
//    return string;
//    
//}
//
//
//
//+ (NSString *)changeChinaLanguageWeek:(NSString *)weekString_{
//   
//    
//    NSString *weekString;
//    if (@"Sunday") {
//        weekString=@"星期日";
//    }else if(@"Monday"){
//        weekString=@"星期一";
//        
//    }else if(@"Tuesday"){
//        weekString=@"星期二";
//        
//    }else if(@"Wednesday"){
//        weekString=@"星期三";
//        
//    }else if(@"Thursday"){
//        weekString=@"星期四";
//        
//    }else if(@"Friday"){
//        weekString=@"星期五";
//        
//    }else if(@"Saturday"){
//        weekString=@"星期六";
//        
//    }else{
//        weekString =weekString_;
//    }
//    
//    return weekString;
//    
//}
//
//
//
//+ (NSString *)changeChinaLanguageMonth:(NSString *)weekString{
//    
//    NSString *monthString;
//    if ([@"January" isEqualToString:weekString]) {
//         monthString=@"1月";
//        
//    }else if([@"February" isEqualToString:weekString]){
//         monthString=@"2月";
//        
//    }else if([@"March" isEqualToString:weekString]){
//         monthString=@"3月";
//        
//    }else if([@"April" isEqualToString:weekString]){
//         monthString=@"4月";
//        
//    }else if([@"May" isEqualToString:weekString]){
//         monthString=@"5月";
//        
//    }else if([@"June" isEqualToString:weekString]){
//         monthString=@"6月";
//        
//    }else if([@"July" isEqualToString:weekString]){
//         monthString=@"7月";
//        
//    }else if([@"August" isEqualToString:weekString]){
//         monthString=@"8月";
//        
//    }else if([@"September" isEqualToString:weekString]){
//         monthString=@"9月";
//        
//    }else if([@"October" isEqualToString:weekString]){
//         monthString=@"10月";
//        
//    }else if([@"November" isEqualToString:weekString]){
//         monthString=@"11月";
//        
//    }else if([@"December" isEqualToString:weekString]){
//         monthString=@"12月";
//        
//    }else{
//        DLog(@"Error=====JFUtils=  1811"); 
//        monthString=weekString;
//    }
//    
//    return monthString;
//    
//}
//
//
//
//////给  产品  排序
//+(NSMutableArray *)arrangementProductAray:(NSMutableArray *)productArray  byKeyString:(NSString *)string_{
//   
//    if (!productArray) return productArray;
//    
//    NSMutableArray *tempArray1;//=[[[NSMutableArray alloc]init]autorelease];
//    NSMutableArray *tempArray2=[[[NSMutableArray alloc]init]autorelease];
//
//    //[JFUtils copyArrayToArray:tempArray1 withAray:productArray];
//    tempArray1 =[NSMutableArray arrayWithArray:productArray];
//    
//   
//    if ([arrangmentProductprice isEqualToString:string_] ) {    //price
//        
//        for (int k=0; k<[productArray count]; k++) {
//            
//            SSJ_PRODUCT *smallProduct=[tempArray1  objectAtIndex:0] ;
//
//            if ([tempArray1 count]>1) {
//                
//                for (int i=1; i<[tempArray1 count]; i++) {
//                    SSJ_PRODUCT *product=[tempArray1  objectAtIndex:i];
//                    if (product.product_price <smallProduct.product_price) {
//                        smallProduct=product;
//                    }
//                }
//                [tempArray2 addObject:   smallProduct];
//
//                [tempArray1 removeObject:smallProduct];
//            }else{
//                [tempArray2 addObject:   [tempArray1 objectAtIndex:0] ];
//
//            }
//         }
//        
//        
//    }else if([arrangmentProductsales isEqualToString:string_]){ //sales
//        
//        for (int k=0; k<[productArray count]; k++) {
//            
//            
//            SSJ_PRODUCT *smallProduct=[tempArray1  objectAtIndex:0];
//            
//            if ([tempArray1 count]>1) {
//                
//                for (int i=1; i<[tempArray1 count]; i++) {
//                    SSJ_PRODUCT *product=[tempArray1  objectAtIndex:i];
//                    if (product.product_salesnumber <smallProduct.product_salesnumber) {
//                        smallProduct=product;
//                    }
//                }
//                [tempArray2 addObject:   smallProduct];
//
//                [tempArray1 removeObject:smallProduct];
//            }else{
//                [tempArray2 addObject:   [tempArray1 objectAtIndex:0] ];
//                
//            }
//        }
//    }else{//populanity
//
//        for (int k=0; k<[productArray count]; k++) {
//            
//            
//            SSJ_PRODUCT *smallProduct=[tempArray1  objectAtIndex:0];
//            
//            if ([tempArray1 count]>1) {
//                
//                for (int i=1; i<[tempArray1 count]; i++) {
//                    SSJ_PRODUCT *product=[tempArray1  objectAtIndex:i];
//                    if (product.product_distance <smallProduct.product_distance) {
//                        smallProduct=product;
//                    }
//                }
//                [tempArray2 addObject:   smallProduct];
//
//                [tempArray1 removeObject:smallProduct];
//            }else{
//                [tempArray2 addObject:   [tempArray1 objectAtIndex:0] ];
//                
//            }
//        }
//    }
//    
//    return tempArray2;
//    
//    
//}
//
//
//+ (NSString *)languageChangeWithTagAndProduct:(SSJ_PRODUCT*)product{
//    
//    NSString *productName;
//    NSArray *productNameArray=[product.product_name componentsSeparatedByString:@"_"];
//    
//    if ([productNameArray count]>1) {
//        
//        if ([[JSessionInfo sharedInstance].languageTag isEqualToString:English_Langue])
//            productName=[productNameArray objectAtIndex:0];
//        else
//            productName=[productNameArray objectAtIndex:1];
//        
//    }else{
//        productName=product.product_name;
//    }
//
//    return productName;
//    
//}
//
////商店名称 中英文切换
//+ (NSString *)languageChangeWithTagAndMerchant:(SSJ_USER_MERCHANT*)merchant_{
//    
//    NSString *productName;
//    NSArray *productNameArray=[merchant_.merchants_name componentsSeparatedByString:@"_"];
//    
//    if ([productNameArray count]>1) {
//        
//        if ([[JSessionInfo sharedInstance].languageTag isEqualToString:English_Langue])
//            productName= [JFUtils stringLowercaseWithString: [productNameArray objectAtIndex:0]];//英文  并且转化成小写  
//        else
//            productName=[productNameArray objectAtIndex:1];//中文
//        
//    }else{
//        productName=merchant_.merchants_name;
//    }
//    
//    return productName;
//    
//}
//
//#pragma mark===========================时间的获取
//
//+(NSString *)nowTodayTime{
//    
//    
//    NSDate *date=[NSDate date];
//    NSString *stringDate= [JFUtils convertToStringFrom:date];
//    
//    NSArray *timeArray=[stringDate componentsSeparatedByString:@"-"];
//    
//    NSString *resultStr=[timeArray objectAtIndex:3];
//    resultStr= [resultStr stringByAppendingString:[NSString stringWithFormat:@" %@",[timeArray objectAtIndex:2]]];
//    resultStr= [resultStr stringByAppendingString:[NSString stringWithFormat:@" %@", [JFUtils changeMonthToEngishWithNumber :[[timeArray objectAtIndex:1] intValue]]]];
//    resultStr= [resultStr stringByAppendingString:[NSString stringWithFormat:@" %@", [timeArray objectAtIndex:0]]];
//    
//    return resultStr;
//    
//}


//+(NSString *)changeMonthToEngishWithNumber:(NSInteger)monthNumber{
//    if (monthNumber>12 || monthNumber<1)
//        return nil;
//    
//    NSArray *arrayMonth=[NSArray arrayWithObjects:
//                         @"January",@"February",@"March",@"April",
//                         @"May",@"June",@"July",@"August",
//                         @"September", @"October",@"November",@"December", nil];
//    
//    NSString *engishString=[arrayMonth objectAtIndex:(monthNumber-1)];
//    return engishString;
//    
//    //    January一月； February二月； March三月； April 四月； May 五月；June 六月；July七月；August 八月；September 九月；October 十月；November 十一月；December十二月
//    
//}


+(NSString *)convertToStringFrom:(NSDate *)date{
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];
    [formatter setDateFormat:@"yyyy-MM-dd-HH:mm"];
    NSString *dateString = [NSString stringWithFormat:@"%@", [formatter stringFromDate:date]];
    return dateString;
}






//判断邮箱 
+(BOOL)validateEmail:(NSString*)email
{
    if((0 != [email rangeOfString:@"@"].length) &&
       (0 != [email rangeOfString:@"."].length))
    {
        NSCharacterSet* tmpInvalidCharSet = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
        NSMutableCharacterSet* tmpInvalidMutableCharSet = [[tmpInvalidCharSet mutableCopy] autorelease];
        [tmpInvalidMutableCharSet removeCharactersInString:@"_-"];
        
        
        NSRange range1 = [email rangeOfString:@"@"
                                      options:NSCaseInsensitiveSearch];
        
        //取得用户名部分
        NSString* userNameString = [email substringToIndex:range1.location];
        NSArray* userNameArray   = [userNameString componentsSeparatedByString:@"."];
        
        for(NSString* string in userNameArray)
        {
            NSRange rangeOfInavlidChars = [string rangeOfCharacterFromSet: tmpInvalidMutableCharSet];
            if(rangeOfInavlidChars.length != 0 || [string isEqualToString:@""])
                return NO;
        }
        
        //取得域名部分
        NSString *domainString = [email substringFromIndex:range1.location+1];
        NSArray *domainArray   = [domainString componentsSeparatedByString:@"."];
        
        for(NSString *string in domainArray)
        {
            NSRange rangeOfInavlidChars=[string rangeOfCharacterFromSet:tmpInvalidMutableCharSet];
            if(rangeOfInavlidChars.length !=0 || [string isEqualToString:@""])
                return NO;
        }
        
        return YES;
    }
    else {
        return NO;
    }
}





//利用正则表达式判断一个11位数是否为一个合法的手机号码
+(BOOL)isMobileNumber:(NSString *)mobileNum
{
    NSString * mobile = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    NSString * cm = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    NSString * cu = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    NSString * ct = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    NSPredicate * regextTestMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",mobile];
    NSPredicate * regextTextCm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",cm];
    NSPredicate * regextTextCu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",cu];
    NSPredicate * regextTextCt = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",ct];
    
    if(([regextTestMobile evaluateWithObject:mobileNum]==YES)||([regextTextCm evaluateWithObject:mobileNum]==YES)||([regextTextCu evaluateWithObject:mobileNum]==YES)||([regextTextCt evaluateWithObject:mobileNum]==YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}



//判断密码是否合法
+(BOOL )secretCodeLegal:(NSString *)code
{
    NSString *regex = @"[A-Z0-9a-z._%+-]+";//必须要在[A-Z0-9a-z._%+-]后面加一个“+”
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    if ([predicate evaluateWithObject:code] == YES && code.length>5 && code.length<17)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end

