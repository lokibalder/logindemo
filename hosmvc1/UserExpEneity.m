//
//  UserExpEneity.m
//  hosmvc1
//
//  Created by  周 天力 on 14-1-18.
//  Copyright (c) 2014年 com.zhoutianli. All rights reserved.
//

#import "UserExpEneity.h"

@implementation UserExpEneity

@synthesize zhengliaoNum = _zhengliaoNum;
@synthesize goodNum = _goodNum;

- (id)init
{
    self = [super init];
    if (self) {
        _zhengliaoNum = 0;
        _goodNum = 0;
    }
    return self;
}
@end
