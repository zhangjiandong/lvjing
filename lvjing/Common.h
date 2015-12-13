//
//  Common.h
//  HomeDemo
//
//  Created by apple on 15/10/12.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>







@interface Common : NSObject
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define kDockHeight 44
#define iphone4 (kScreenHeight == 480 )
#define iphone5 (kScreenHeight == 568 )
#define iphone6 (kScreenHeight == 667 )
#define iphone6p (kScreenHeight == 736 )
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height
#define MAINURL @"http://ailv3.ailvgocloud.com/ailv3/index.php/"
#define LOCATION [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]stringByAppendingPathComponent:@"locationdata.data"]
#define POINTLIST [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]stringByAppendingPathComponent:@"poinlist.data"]
#define messagePath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]stringByAppendingPathComponent:@"messagePath.data"]

@end
