//
//  RequestController.h
//  hosmvc1
//
//  Created by  周 天力 on 14-1-16.
//  Copyright (c) 2014年 com.zhoutianli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginModel.h"

@interface RequestController : NSObject

- (void) doLoginRequest:(LoginModel *)model;

- (void) doGetHospitalNewsRequest;

- (void) doLogoutRequest;

@end
