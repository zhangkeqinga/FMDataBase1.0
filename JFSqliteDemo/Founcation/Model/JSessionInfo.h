


//#import  "SocketManager.h"

#import "DT_USER.h"


@interface JSessionInfo : NSObject{
    
    DT_USER *userAccount;
    
}

@property(nonatomic,retain)DT_USER *userAccount;

+ (JSessionInfo *)sharedInstance;


@end




















