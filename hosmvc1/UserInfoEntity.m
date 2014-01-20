//
//  UserInfoEntity.m
//  hosmvc1
//
//  Created by  周 天力 on 14-1-18.
//  Copyright (c) 2014年 com.zhoutianli. All rights reserved.
//

#import "UserInfoEntity.h"

@implementation UserInfoEntity

@synthesize username = _username;
@synthesize userPosition = _userPosition;
@synthesize userAddress = _userAddress;

- (id)init
{
    self = [super init];
    if (self) {
        _username = @"";
        _userPosition = @"";
        _userAddress = @"";
    }
    return self;
}


@end
