//
//  RequestController.m
//  hosmvc1
//
//  Created by  周 天力 on 14-1-16.
//  Copyright (c) 2014年 com.zhoutianli. All rights reserved.
//

#import "RequestController.h"

@implementation RequestController

- (void) doLoginRequest:(LoginModel *)model
{
    NSLog(@"doLoginRequest<username:%@,password:%@>",
          model.username,
          model.password);
    
    //check username and password
    
    //temp code
    //get request from server
    NSString *urlStr = [NSString stringWithFormat:@"http://192.168.0.104:8848/minions_mock/file/ad/read.json"];
    NSURL *url = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLResponse *response;
    NSData *resultData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    NSString *dataString = [[NSString alloc] initWithData:resultData encoding:NSUTF8StringEncoding];
    NSLog(@"response %@",dataString);
    
    model.loginInfo = @"login succeed";
}

- (void) doGetHospitalNewsRequest
{
    NSLog(@"doGetHospitalNewsRequest");
}

- (void) doLogoutRequest
{
    NSLog(@"doLogoutRequest");
}


@end
