//
//  LoginViewController.h
//  hosmvc1
//
//  Created by  周 天力 on 14-1-16.
//  Copyright (c) 2014年 com.zhoutianli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RequestController.h"
#import "TPKeyboardAvoidingScrollView.h"
#import "LoginModel.h"

@interface LoginViewController : UIViewController

@property RequestController* requestController;

@property LoginModel* loginModel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *loginInfoTextField;
@property (weak, nonatomic) IBOutlet TPKeyboardAvoidingScrollView *scoreview;

- (IBAction)pushLoginButton:(id)sender;

@end


