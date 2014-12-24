//
//  PathUtilities.h
//  TaiPing
//
//  Created by bbdtek on 11-8-31.
//  Copyright 2011 bbdtek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathUtilities : NSObject 

//
+(NSMutableDictionary *)readPlist:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_  ;

+(NSString *)readPlistForKey:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ ;


+(NSDictionary *)readArrayPlistForKey:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ ;
+(NSArray *)readArrayPersonalPlistForKey:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ ;


+(void)updatePlist:(NSSearchPathDirectory)searchPathDirectory_ withFile:(NSString*)filename_ wihtKey:(NSString*)key_ withValue:(NSString*)value_;



+ (NSString *)documentFilePathWithFileName:(NSString*)fileName;

+ (BOOL)createDirectoryIfNotExistsAtPath:(NSString *)path;

//Open  XML OR txt File
+ (NSString *)openXMLWithFileName:(NSString *)fileName;
//
+ (NSString *)libraryFilePathWithFileName:(NSString*)fileName;
//
////Copy File 
+ (void) copyDatabaseIfNeededWithFileName:(NSString*)fileName  SearchPathDirectory:(NSSearchPathDirectory)searchPathDirectory;


//Wirte File
+ (NSString *)writeToFile:(NSData *)data  withFileName:(NSString *) fileName;

//delete File
+ (void)deteleFile:(NSString*)fileName;

////创建对应路径的文件夹
+(void)createFolder:(NSString *)folderPath_;



@end
