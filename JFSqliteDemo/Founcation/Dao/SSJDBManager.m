//
//  SSJDBManager.m
//  SSJ_Shoping
//
//  Created by GFeng on 13-4-18.
//  Copyright (c) 2013年 SSJ. All rights reserved.
//

#import "SSJDBManager.h"


static SSJDBManager *dbManager = nil;

@implementation SSJDBManager

+ (SSJDBManager *)sharedInstance {
    
    if (!dbManager) {
        dbManager = [[SSJDBManager alloc] init];
    }
    
    return dbManager;
}

-(void)dealloc{
    
    [super dealloc];
    
}


//=========================================================    query  =============================================================
/**
 @abstract 通过UserID获取User对象
 @param (SSJ_USER *)SSJ_USER_.i_id
 @author by 张克清
 */



/**
 @abstract 插入
 @param (Customer *)customer_
 @author by
 */
-(void)insertNews:(NewsModle *)user{
    
    NSString *sqlString=[NSString stringWithFormat:@"insert into NewsModle values('%@','%@','%@','%@','%@','%@','%@')",user.i_id,user.createTime,user.imageUrl,user.msgTitle,user.sendMsgType,user.fileUrl,user.imageData];
    
    [[DBAccess sharedInstance] runSQL:sqlString];
    
}


-(NSMutableArray *)queryNewsAll{
    
    NSString *sql=[NSString stringWithFormat:@"select  * from NewsModle "];
    NSMutableArray *userArray=[[DBAccess sharedInstance] queryDataToObjArrary:sql type:NSClassFromString(@"NewsModle")];
    NSLog(@"NewsModle==%@",userArray);
    return userArray;
    
    
}


-(NSMutableArray *)queryUserAll{
    

    NSString *sql=[NSString stringWithFormat:@"select  * from dt_user "];
    
    NSMutableArray *userArray=[[DBAccess sharedInstance] queryDataToObjArrary:sql type:NSClassFromString(@"DT_USER")];
    NSLog(@"userArray==%@",userArray);
    return userArray;

    
}



-(DT_USER *)queryUserByUserId:(int)USER_ID{

    NSString *sql=[NSString stringWithFormat:@"select  * from dt_user s where s.i_id='%d' ",USER_ID];

    DT_USER *user=[[[DT_USER alloc]init]autorelease];
    
    user=[[DBAccess sharedInstance] queryDataToObj:sql type:NSClassFromString(@"DT_USER")];
    NSLog(@"product==%@",user.user_name);

    return user;

}



-(NSMutableArray *)queryAllKindsFood:(NSString* )foodKey{

    
    NSString *sql;

    if (!foodKey)  //如果为空得话  选择所有数据
        sql=[NSString stringWithFormat:@"select  * from dt_food s "];
    else
        sql=[NSString stringWithFormat:@"select  * from DT_FOOD s where s.food_type='%@' ",foodKey];
    
    NSMutableArray *foodArray=[[DBAccess sharedInstance] queryDataToObjArrary:sql type:NSClassFromString(@"DT_FOOD")];
    return foodArray;
}



-(NSMutableArray *)queryAllKindsFoodWithName:(NSString* )foodName{
    
    NSString *sql=[NSString stringWithFormat:@"select  * from DT_FOOD s where s.food_type like '%%%@%%' ",foodName];
    
    NSMutableArray *foodArray=[[DBAccess sharedInstance] queryDataToObjArrary:sql type:NSClassFromString(@"DT_FOOD")];
    return foodArray;
}


-(DT_LIFE_NOTE *)queryAllKindsMealsWithDay:(NSString* )mealsDay{
    
    NSString *sql=[NSString stringWithFormat:@"select  * from DT_LIFE_NOTE s where s.user_time='%@' ",mealsDay];
    
    DT_LIFE_NOTE * lifeNote=[[DBAccess sharedInstance] queryDataToObj:sql type:NSClassFromString(@"DT_LIFE_NOTE")];
    
    return lifeNote;
    
    
    
}
/**
 @abstract 通过UserID获取User对象
 @param (SSJ_USER *)SSJ_USER_.i_id
 @author by 张克清
 */


-(DT_FOOD *)queryFoodByFoodId:(NSString *)foodId{
    
    NSString *sql=[NSString stringWithFormat:@"select  * from DT_FOOD s where s.i_id='%@' ",foodId];
    DT_FOOD *food=[[[DT_FOOD alloc]init]autorelease];
    
    food=[[DBAccess sharedInstance] queryDataToObj:sql type:NSClassFromString(@"DT_FOOD")];
    
    return food;
    
}


/**
 @abstract 删除
 @param (DT_USER *)customer_
 @author by
 */

-(void)deleteCustomer:(NSString * )customer_{
    NSString *sql=[NSString stringWithFormat:@"delete from DT_USER where i_id='%@'",customer_];
    [[DBAccess sharedInstance]runSQL:sql];
}


/**
 @abstract 删除
 @param (DT_LIFE_NOTE *)lifeNote
 @author by
 */
-(void)deleteDTLifeNote:(NSString * )lifenoteId{
    NSString *sql=[NSString stringWithFormat:@"delete from DT_LIFE_NOTE where i_id='%@'",lifenoteId];
    [[DBAccess sharedInstance]runSQL:sql];
}


/**
 @abstract 插入
 @param (Customer *)customer_
 @author by
 */
-(void)insertCustomer:(DT_USER *)user{
    
    NSString *sqlString=[NSString stringWithFormat:@"insert into DT_USER values('%@','%@','%@','%@','%@','%@','%@','%@','%@')",user.i_id,user.user_name,user.user_age,user.user_sex,user.user_birthday,user.user_photo,user.user_account,user.user_password,user.user_phone_number];
    
    [[DBAccess sharedInstance] runSQL:sqlString];
    
}

/**
 @abstract 插入 DT_LIFE_NOTE
 @param (lifenote *)dt_lifenote
 @author by
 */
-(void)insertDTLifeNote:(DT_LIFE_NOTE*)lifenote{
    
    NSString *sqlString=[NSString stringWithFormat:@"insert into DT_LIFE_NOTE values('%@','%@','%@','%@','%@','%@','%@')",lifenote.i_id,lifenote.user_id,lifenote.user_time,lifenote.user_breakfast,lifenote.user_lunch,lifenote.user_extrameal,lifenote.user_dinner];
    
    [[DBAccess sharedInstance] runSQL:sqlString];

}

/**
 @abstract 更新
 @param (DT_USER *)user
 @author by
 */
-(void)updateCustomer:(DT_USER *)user{
    
    NSString *sqlString=[NSString stringWithFormat:@"update DT_USER set user.i_id='%@',user.user_name='%@',user.user_age='%@',user.user_sex='%@',user.user_birthday='%@',user.user_photo='%@',user.user_account='%@',user.user_password='%@',user.user_phone_number='%@'",user.i_id,user.user_name,user.user_age,user.user_sex,user.user_birthday,user.user_photo,user.user_account,user.user_password,user.user_phone_number];
    
    [[DBAccess sharedInstance] runSQL:sqlString];
}


/**
 @abstract 更新  DT_LIFE_NOTE
 @param (Customer *)customer_
 @author by
 */

-(void)updateDTLifeNote:(DT_LIFE_NOTE*)lifenote{
    
    NSString *sqlString=[NSString stringWithFormat:@"update  DT_LIFE_NOTE set  lifenote.i_id='%@',lifenote.user_id='%@',lifenote.user_time='%@',lifenote.user_breakfast='%@',lifenote.user_lunch='%@',lifenote.user_extrameal='%@',lifenote.user_dinner='%@' ",lifenote.i_id,lifenote.user_id,lifenote.user_time,lifenote.user_breakfast,lifenote.user_lunch,lifenote.user_extrameal,lifenote.user_dinner];

    [[DBAccess sharedInstance] runSQL:sqlString];

}

@end



