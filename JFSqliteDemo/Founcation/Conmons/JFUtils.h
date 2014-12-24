//
//  JFUtils.h
//  JiaFeng
//
//  Created by n22 on 12-9-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PathUtilities.h"
#import "JSessionInfo.h"

@interface JFUtils : NSObject

//邮箱验证
+(BOOL)validateEmail:(NSString*)email;
//利用正则表达式判断一个11位数是否为一个合法的手机号码
+(BOOL)isMobileNumber:(NSString *)mobileNum;
//密码验证
+(BOOL )secretCodeLegal:(NSString *)code;

+ (void)readLocalized;

+ (void)readLocalizedLanguageNewSelected;//语言的选择  中英文切换包数据的获取

+ (void)readLocalizedWelcome_ad;

//读取个人信息
+ (NSArray *)readLocalizedPersoanlInformation;
//读取 所有食物的信息
+ (NSDictionary *)readAllKindsFoodInformation;

//读取特定搜索的信息
+ (NSDictionary *)readLocalizedSearchProdutIdInformation;
    

+ (void)readLocalizedCurrent_location;


+ (void)changeLocalized:(NSString*)state;

//+ (void)getMapImageWith:(NSString*)state;

+(void)changeNetState:(NSString*)state;

+(NSString *)readNetState;


//+(void)changeOneCateState:(NSString*)state;


+(void)changeTwoCateState:(NSString*)state;

+(NSString *)readTwoCateState;

+(void)changeBackgroundState:(NSString*)state;

+(NSString *)readBackgroundState;

+(NSMutableArray *) sliderArrayWithCustomId:(NSString*)customId_;

+(NSString*)imageNammeChange:(NSString *)imageName_;

+(NSString*)imageNameChangeWithRloe:(NSString*)roleId_ withImageName:(NSString *)imageName_;

//
////根据产品数组计算产品总价值
//+(float)productCalculationArray:(NSMutableArray *)productArray;
//
// // 根据产品数组计算产品 打折的 总价值
//
//+(float)productDiscountCalculationArray:(NSMutableArray *)productArray;
//
////copy数组 到数组
//+(void) copyArrayToArray:(NSMutableArray *)array_ withAray:(NSMutableArray *)soureArray_;
//copy 字典到数组
+(void) copyDictionaryToArray:(NSMutableArray *)array_ withDictionary:(NSMutableDictionary *)soureDiction_;

//创建button 垂直 水平 和组合
+(NSMutableDictionary *) makeHorizontalBtnFrameToBtnArrayWithFirstFrame:(CGRect)firstFrame_ withhorizontalClearance:(NSInteger)horizontalClearance_ withHorizontal:(NSInteger)horizontalNum_;

+(NSMutableDictionary *) makeVerticalBtnFrameToBtnArrayWithFirstFrame:(CGRect)firstFrame_ withVertivcalClearance:(NSInteger)verticalClearance_ withVertiaclNum:(NSInteger)verticalNum_;

+(NSMutableDictionary *) makeBtnFrameToBtnArrayWithFirstFrame:(CGRect)firstFrame_ withVertivcalClearance:(NSInteger)verticalClearance_ withVertiaclNum:(NSInteger)verticalNum_ withhorizontalClearance:(NSInteger)horizontalClearance_ withHorizontal:(NSInteger)horizontalNum_;



//
////产品添加到购物车中
//+ (void)addProductToListMap:(SSJ_PRODUCT * )userProduct_;
////从购物车中删除商品
//+ (void)deletedProductFromCart:(SSJ_PRODUCT * )userProduct_;
//
////添加  单个产品  商品到  准备添加的  数组中
//+ (NSMutableArray *)addSingleProductToListMapArry:(SSJ_PRODUCT * )userProduct_  toArray:(NSMutableArray *)array_;
//
//+ (NSMutableArray *)addProductToListMapArry:(SSJ_PRODUCT * )userProduct_  toArray:(NSMutableArray *)array_;
//+ (NSMutableArray *)deletedProductFromCarttoArray:(SSJ_PRODUCT * )userProduct_  withArray:(NSMutableArray *)array_;
////从购物车  中删除   一个产品的全部  数据
//+ (NSMutableArray *)deletedAllNumberSingleProductFromCarttoArray:(SSJ_PRODUCT * )userProduct_  withArray:(NSMutableArray *)array_;
//
//
//
//#pragma mark-----
//#pragma mark-----  根据当前的位子  和货架号  找图片
////  获取地图 信息
//+(NSString *)getShelvesImage:(NSString *)destinationProduct_  withProductImage:(NSString *)productImage_  withCurrent:(NSString *)shelvesString_ ;
//
//
//
//
////根据当前的 位子 和  目的货架号 查找  图片
//+(NSString *)getNavigationMapImage:(SSJ_PRODUCT *)product_;
//
//
////根据  根据产品名 和  尺寸 大小获取图片
//+(NSString *)imageString:(NSString *)image_ withFrameString:(NSString *)frameString_;
//
//+(NSString *)imageString:(NSString *)image_ withFrameString:(NSString *)frameString_  withPngOrJpg:(NSString *)pngOrJpg_;
//
//#pragma mark=======根据位子精确 查找 货架号
//+ (CGRect )productMarkWithProduct:(SSJ_PRODUCT *)product_   withCGRectArray:(NSMutableArray *)array ;
//
//+(NSInteger )productMarkWithProduct:(SSJ_PRODUCT *)product_ ;
//
//+(NSString *)getMapImage:(NSMutableArray *)productArray_  withCurrentLocation:(NSString *)currentLocation_ ;


////  根据声波信号获取 A  B   C 区 的标志
//
//+ (NSString *)perkeychangeToChar:(NSString *)perkey_;
//
//
////过滤 字母 ABC  
//+ (NSString *)hasSuffixWithString:(NSString *)String_;
//
//
////地图 货架号的位子
//+(NSMutableArray *)createFrameArray;
//+(NSMutableArray *)createMapNewShevelsMarkFrameArray;//更新后的
//
////截取字符窜  中特定字符  之前的  字符窜----->--->---->-------byString_
//+ (NSString *)segmentResultString:(NSString *)String_  byString:(NSString *)byString_;
//
////截取字符窜  中特定字符  之后的  字符窜-----<---<----<-------byString_
//+ (NSString *)segmentLastString:(NSString *)String_  byString:(NSString *)byString_;
//
////截取 一串字符窜    放在数组中
//+ (NSMutableArray *)segmentString:(NSString *)String_  byString:(NSString *)byString_;
//
//
//
//+(NSMutableArray *)productAllArrayComparePartArray:(NSMutableArray *)allArray_ partArray:(NSMutableArray *)partArray_;

//
//+ (void)addProductToHistoryList:(SSJ_PRODUCT * )userProduct_;
//#pragma mark=====//讲产品添加到购物历史中
//+ (void )addProductToHistoryProduct:(NSString *)stringId;
//
//// 将五家商店中的 价值 和商店名称 保存到 字典中
//+ (NSMutableArray *)priceProductFive:(SSJ_PRODUCT *)product_;
//+ (NSMutableArray * )sortingFiveStorePrice:(NSMutableDictionary *)productDictionary_;
////数组中 大值 和 小值之间的兑换
//+ (NSMutableArray * )sortingWithArray:(NSMutableArray *)Array_ withMaxNumber:(NSInteger)maxnum_  withMinNum:(NSInteger)minnum_;
//
//
//// 将三家  或者  五家商店的产品价格  进行排序
////+ (NSMutableArray *)productPriceSquenc:(NSMutableArray *)productArray_;
//
////+ (NSMutableArray *)lowProductPrice:(SSJ_PRODUCT *)product_;
////数组间的排序
//+ (void)squenceArray:(NSMutableArray*)array_;
//
////将字符串 小写并且 去掉 空格 符号
//
//+ (NSString *)stringLowercaseWithString:(NSString *)string_ ;
//
//+ (NSMutableArray *)arrayWithDictionaryArray:(NSMutableArray *)dictionaryArray_ withClassName:(NSString*)className_;
//
//
//#pragma mark-----------特殊格式的日期-----------
//
+ (NSMutableArray *)todayYearMonthDay;// 年  月 日 周 （7—1—2-3-4-5-6）  时 分 秒
+ (NSDate *)addDayDateWithDay:(NSDate *)dayDate isAdd:(BOOL)isAdd;
//将 时间  的 NSdate  转化为 NSString
+(NSString *)todayDateString:(NSDate *)date;
//将 时间  的 NSString  转化为 NSdate
+(NSDate *)todayDate:(NSString *)dateString;


//+ (NSString *)changeMonthToEngishWithNumber:(NSInteger)monthNumber;   //给个数字  返回 一个  英文的的月份
//+ (NSString *)changeWeekToEngishWithNumber:(NSInteger)weekMonth;   //给个数字  返回 一个  英文的的月份
//
//
//#pragma mark======// 获取  日期 格式   
//+ (NSString *)dayHourMinString;         //22:00   时间
//+ (NSString *)dayEMonthZYear;        //07  March 2013
//+ (NSString *)zweekEDayEMonthZYear;  //on Friday , 07  March 2013
////将英文日期改为中文日期
//+ (NSString *)zweekEDayEMonthZYearLanguageToChina:(NSString *)engishCalender;
////将英文日期改为中文日期    其他格式 的 
//+ (NSString *)zweekEDayEMonthZYearLanguageToChinaOther:(NSString *)engishCalender;
//
////将英文  转化为中文字符
//+ (NSString *)changeChinaLanguageWeek:(NSString *)weekString_;
//+ (NSString *)changeChinaLanguageMonth:(NSString *)weekString;
//
//////给  产品  排序
//+(NSMutableArray *)arrangementProductAray:(NSMutableArray *)productArray  byKeyString:(NSString *)string_;
//
////
//////产品名称的中英文切换
////+ (NSString *)languageChangeWithTagAndProduct:(SSJ_PRODUCT*)product;
//////商店名称的中英文
////+ (NSString *)languageChangeWithTagAndMerchant:(SSJ_USER_MERCHANT*)merchant_;
////
//
//+ (NSString *)nowTodayTime;
//+ (NSString *)changeMonthToEngishWithNumber:(NSInteger)monthNumber
+ (NSString *)convertToStringFrom:(NSDate *)date;

@end
