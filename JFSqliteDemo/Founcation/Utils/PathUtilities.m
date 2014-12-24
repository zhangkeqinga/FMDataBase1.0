

//
//  PathUtilities.m
//  TaiPing
//
//  Created by bbdtek on 11-8-31.
//  Copyright 2011 bbdtek. All rights reserved.
//

#import "PathUtilities.h"


@implementation PathUtilities


+(NSMutableDictionary *)readPlist:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ {
    
    //get the plist file from bundle
    //NSLibraryDirectory 
    NSArray *paths = NSSearchPathForDirectoriesInDomains(searchPathDirectory_, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [NSString stringWithFormat:@"%@/",[paths objectAtIndex:0]];
    
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",filename_]];
    
    // build the array from the plist
    
    NSMutableDictionary *  dict = [[[NSMutableDictionary alloc]initWithContentsOfFile : plistPath]autorelease];
    
    
    //    temp = [[dict objectForKey:@"Student"] objectForKey:key_];
    
    return dict;
}


+(NSString *)readPlistForKey:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ {
    
    NSString *temp = [[[NSString alloc]init]autorelease];
    
    //get the plist file from bundle
    //NSLibraryDirectory 
    NSArray *paths = NSSearchPathForDirectoriesInDomains(searchPathDirectory_, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [NSString stringWithFormat:@"%@/",[paths objectAtIndex:0]];
    
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",filename_]];
//    NSLog(@"plistPath:%@",plistPath);
    // build the array from the plist
    
    NSMutableDictionary *  dict = [[[NSMutableDictionary alloc]initWithContentsOfFile : plistPath]autorelease];
    
    temp = [dict objectForKey:key_];
    
    //    temp = [[dict objectForKey:@"Student"] objectForKey:key_];
    
    
    
   
    return temp;
}



+(NSDictionary *)readArrayPlistForKey:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ {
    
    NSDictionary *tempArray = [[[NSDictionary alloc]init]autorelease];
    
    //get the plist file from bundle
    //NSLibraryDirectory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(searchPathDirectory_, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [NSString stringWithFormat:@"%@/",[paths objectAtIndex:0]];
    
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",filename_]];
    //    NSLog(@"plistPath:%@",plistPath);
    // build the array from the plist
    
    NSMutableDictionary *  dict = [[[NSMutableDictionary alloc]initWithContentsOfFile : plistPath]autorelease];
    
    tempArray = [dict objectForKey:key_];
    
    //    temp = [[dict objectForKey:@"Student"] objectForKey:key_];
    
    
    
    
    return tempArray;
}




+(NSArray *)readArrayPersonalPlistForKey:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ {
    
    NSArray *tempArray = [[[NSArray alloc]init]autorelease];
    
    //get the plist file from bundle
    //NSLibraryDirectory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(searchPathDirectory_, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [NSString stringWithFormat:@"%@/",[paths objectAtIndex:0]];
    
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",filename_]];
    //    NSLog(@"plistPath:%@",plistPath);
    // build the array from the plist
    
    NSMutableDictionary *  dict = [[[NSMutableDictionary alloc]initWithContentsOfFile : plistPath]autorelease];
    
    tempArray = [dict objectForKey:key_];
    
    //    temp = [[dict objectForKey:@"Student"] objectForKey:key_];
    
    
    
    
    return tempArray;
}


+(void)updatePlist:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ withValue:(NSString*)value_{
    
    NSFileManager *fileManager = [NSFileManager defaultManager];   //
    
    //get the plist file from bundle
    //NSLibraryDirectory searchPathDirectory_
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(searchPathDirectory_, NSUserDomainMask, YES); //Library路径 安全
    
    //%@/
    NSString *documentsDirectory = [NSString stringWithFormat:@"%@/",[paths objectAtIndex:0]];//获取Library目录
    
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",filename_]];//plist文件路径
    
    // build the array from the plist
    
    if ([fileManager fileExistsAtPath: plistPath]) 
        
    {
        
        //
    }
    
    else {
        NSString *resourceSampleImagesFolderPath =[[NSBundle mainBundle]
                                                   
                                                   pathForResource:filename_
                                                   
                                                   ofType:@"plist"];
        
        NSData *mainBundleFile = [NSData dataWithContentsOfFile:resourceSampleImagesFolderPath];
        
        [[NSFileManager defaultManager] createFileAtPath:plistPath contents:mainBundleFile attributes:nil];
        //
        
    }
    
    
    // Read  NSMutableDictionary
    NSMutableDictionary *  dict = [[NSMutableDictionary alloc]initWithContentsOfFile :plistPath];
    
    //[[dict objectForKey:@"Student"] setValue:value_ forKey:key_];
    
    // update
    if([dict objectForKey:key_])
        [dict setValue:value_ forKey:key_];
    // wirte 
    else 
        [dict setObject:value_ forKey:key_];
    
    //[dict setObject:@“” forKey:@“key”];  加入键值为key，值为@“”的物件
    
    [dict writeToFile : plistPath  atomically : YES  ] ;
    
    [dict release];
    
}

//
//
+ (NSString *)documentFilePathWithFileName:(NSString*)fileName{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
														NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
	return filePath;
}
//
+ (NSString *)libraryFilePathWithFileName:(NSString*)fileName{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory,
                                                         NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
	return filePath;
}

//
//
+ (void) copyDatabaseIfNeededWithFileName:(NSString*)fileName  SearchPathDirectory:(NSSearchPathDirectory)searchPathDirectory{
    
//    fileName=@"GFLife.db";
//    fileName=@"SSJShoping.db";

    //Using NSFileManager we can perform file system operations.
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    //find file path
    NSArray *paths = NSSearchPathForDirectoriesInDomains(searchPathDirectory , NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *dbPath = [documentsDir stringByAppendingPathComponent:fileName];
    NSLog(@"paths==%@",dbPath);
    BOOL success = [fileManager fileExistsAtPath:dbPath];
    
    if(!success) {
        
        NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:fileName];
        
        success = [fileManager copyItemAtPath:defaultDBPath toPath:dbPath error:&error];
        
        if (!success)
            NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
    }
    
    
    
    
}
//
//
+ (NSString *)openXMLWithFileName:(NSString *)fileName{
    NSString *path = [[NSBundle mainBundle]pathForResource:[NSString stringWithFormat:@"%@",fileName] ofType:nil];
    NSData *reader = [NSData dataWithContentsOfFile:path]; 
    NSString *planText=[[[NSString alloc]initWithData:reader encoding:NSUTF8StringEncoding]autorelease];
    return planText;    
}
//
//
+ (BOOL)createDirectoryIfNotExistsAtPath:(NSString *)path{
	BOOL result = NO;
	NSFileManager *fileManger = [NSFileManager defaultManager];
	BOOL exists = [fileManger fileExistsAtPath:path];
	if (!exists) {
		result = [fileManger createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
	}else {
		result = YES;
	}
	
	return result;
}
//
//
+ (NSString *)writeToFile:(NSData *)data withFileName:(NSString *)fileName{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath] == NO){
        NSLog(@"file not exist,create it...");
        [[NSFileManager defaultManager] createFileAtPath:filePath contents:nil attributes:nil];
    }else {
        NSLog(@"file exist!!!");
    }
    
    [data writeToFile:filePath atomically:YES];

    return filePath;
    
}

+ (void)deteleFile:(NSString*)fileName{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    NSFileManager *defaultManager;
    defaultManager = [NSFileManager defaultManager];
    [defaultManager removeItemAtPath:filePath error:nil];
    
//      NSArray *fileList = [[NSArray alloc] init];  //fileList便是包含有该文件夹下所有文件的文件名及文件夹名的数组         
//      fileList = [defaultManager contentsOfDirectoryAtPath:documentsDirectory error:nil];  
//     for (NSString *file in fileList) {                 
//         NSString *path = [documentsDirectory stringByAppendingPathComponent:file]; 
//         [defaultManager removeItemAtPath:path error:nil];
//     }
//
//    [fileList release];
}

+(void)createFolder:(NSString *)folderPath_
{
    if (![[NSFileManager defaultManager] fileExistsAtPath:folderPath_])
    {
        [[NSFileManager defaultManager] createDirectoryAtPath:folderPath_
                                  withIntermediateDirectories:YES
                                                   attributes:nil
                                                        error:NULL];
    }
}

@end
