//
//  CFNetworkTest.m
//  ToolsTest
//
//  Created by by on 2021/4/15.
//
#include <netdb.h>
#include <arpa/inet.h>
#import "CFNetworkTest.h"

@implementation CFNetworkTest
+ (NSString *)realmToIP:(NSString *)hostName {
    const char *host = [hostName UTF8String];
    // Get host entry info for given host
    struct hostent *remoteHostEnt = gethostbyname(host);
    
    // Get address info from host entry
    struct in_addr *remoteInAddr = (struct in_addr *)remoteHostEnt->h_addr_list[0];
    
    // Convert numeric addr to ASCII string
    char *sRemoteInAddr = inet_ntoa(*remoteInAddr);
    NSString *str = [NSString stringWithFormat:@"%s", sRemoteInAddr];
    return str;
}

+ (NSString *)parsingIPAddress:(NSString *)strHostName {
    const char *szname = [strHostName UTF8String];
    struct hostent *phot;
    @try {
        /*
         struct hostent {
             char    *h_name;    // 官方域名
             char    **h_aliases;    // 别名，可以通过多个域名访问同一主机。同一 IP 地址可以绑定多个域名，因此除了当前域名还可以指定其他域名。
             int    h_addrtype;    // 通过此成员获取IP地址的地址族（地址类型）信息，IPv4 对应 AF_INET，IPv6 对应 AF_INET6。
             int    h_length;    // 保存IP地址长度。IPv4 的长度为 4 个字节，IPv6 的长度为 16 个字节。
             char    **h_addr_list;    // 这是最重要的成员。通过该成员以整数形式保存域名对应的 IP 地址。对于用户较多的服务器，可能会分配多个 IP 地址给同一域名，利用多个服务器进行均衡负载。
         };
         */
        // 通过域名获取ip地址
        phot = gethostbyname(szname);
    } @catch (NSException *exception) {
        NSLog(@"exception : %@", exception.reason);
        return nil;
    } @finally {
    }
    // 别名
    for (int i = 0; phot->h_aliases[i]; i++) {
        NSLog(@"Aliases %d: %s", i+1, phot->h_aliases[i]);
    }
    // 地址类型
    NSLog(@"Address type: %s", (phot->h_addrtype == AF_INET) ? "AF_INET" : "AF_INET6");
    // ip地址
    for (int i = 0; phot->h_addr_list[i]; i++) {
        /*
         inet_ntoa() 将网络二进制的数字转成网络地址，以'.'分割
         */
        struct in_addr addr = *(struct in_addr *)phot->h_addr_list[i];
        NSLog(@"IP addr %d: %u %s", i+1, addr, inet_ntoa(addr));
    }
    
    struct in_addr ip_addr;
    memcpy(&ip_addr, phot->h_addr_list[0], 4);
    
    char ip[20] = {0};
    inet_ntop(AF_INET, &ip_addr, ip, sizeof(ip));
    
    NSString *strIPAddress = [NSString stringWithUTF8String:ip];
    return strIPAddress;
}

+ (NSString *)getIPAddressByHostName:(NSString *)strHostName {
    Boolean result, bResolved;
    CFHostRef hostRef;
    CFArrayRef addresses = NULL;
    
    const char *hostAdd = [strHostName UTF8String];
    
    CFStringRef hostNameRef = CFStringCreateWithCString(kCFAllocatorDefault, hostAdd, kCFStringEncodingASCII);
    
    hostRef = CFHostCreateWithName(kCFAllocatorDefault, hostNameRef);
    
    CFStreamError error = {0, 0};
    result = CFHostStartInfoResolution(hostRef, kCFHostAddresses, &error);
    if (result == TRUE) {
        addresses = CFHostGetAddressing(hostRef, &result);
    }
    
    bResolved = result == TRUE ? true : false;
    
    if (bResolved) {
        struct sockaddr_in *remoteAddr;
        for (int i = 0; i < CFArrayGetCount(addresses); i++) {
            CFDataRef saData = (CFDataRef)CFArrayGetValueAtIndex(addresses, i);
            remoteAddr = (struct sockaddr_in *)CFDataGetBytePtr(saData);
            
            if (remoteAddr != NULL) {
                // 获取ip地址
                char ip[16];
                strcpy(ip, inet_ntoa(remoteAddr->sin_addr));
                NSString *str = [NSString stringWithUTF8String:ip];
                NSLog(@"-----: %@", str);
                return str;
            }
        }
    }
    CFRelease(hostNameRef);
    CFRelease(hostRef);
    return nil;
}
@end
