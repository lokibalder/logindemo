//
//  LoginViewController.m
//  hosmvc1
//
//  Created by  周 天力 on 14-1-16.
//  Copyright (c) 2014年 com.zhoutianli. All rights reserved.
//

#import "LoginViewController.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize requestController = _requestController;

@synthesize loginModel = _loginModel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //init request controller
    _requestController = [[RequestController alloc] init];
    
    //init model
    _loginModel = [[LoginModel alloc] init];
    //KVO obverser value changing
    [_loginModel addObserver:self forKeyPath:@"loginInfo" options:NSKeyValueObservingOptionNew context:nil];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (object == _loginModel && [keyPath isEqualToString:@"loginInfo"])
    {
        self.loginInfoTextField.text = _loginModel.loginInfo;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//////////////////////////////////
//action
//////////////////////////////////
- (IBAction)pushLoginButton:(id)sender {
    NSLog(@"pushLoginButton");
    
    //set login model data
    _loginModel.username = self.nameTextField.text;
    _loginModel.password = self.passwordTextField.text;
    
    [_requestController doLoginRequest:_loginModel];
    
    //notifaction view
}
@end
