//
//  CFNetworkTest.h
//  ToolsTest
//
//  Created by by on 2021/4/15.
//

#import <Foundation/Foundation.h>


@interface CFNetworkTest : NSObject
+ (NSString *)realmToIP:(NSString *)hostName;
+ (NSString *)parsingIPAddress:(NSString *)strHostName;
+ (NSString *)getIPAddressByHostName:(NSString *)strHostName;
@end

