//
//  main.m
//  ToolsTest
//
//  Created by by on 2021/4/15.
//

#import <Foundation/Foundation.h>
#import "CFNetworkTest.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        [CFNetworkTest realmToIP:@"www.baidu.com"];
        [CFNetworkTest parsingIPAddress:@"www.baidu.com"];
        [CFNetworkTest getIPAddressByHostName:@"www.baidu.com"];
        [CFNetworkTest getIpAddress:@"www.apple.com"];
    }
    return 0;
}
