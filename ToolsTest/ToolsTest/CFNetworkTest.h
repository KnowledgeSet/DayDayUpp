//
//  CFNetworkTest.h
//  ToolsTest
//
//  Created by by on 2021/4/15.
//

#import <Foundation/Foundation.h>


@interface CFNetworkTest : NSObject
+ (NSString *)realmToIP:(NSString *)hostName;
+ (NSArray *)parsingIPAddress:(NSString *)strHostName;
+ (NSString *)getIPAddressByHostName:(NSString *)strHostName;
+ (NSArray *)getIpAddress:(NSString *)host;
@end

