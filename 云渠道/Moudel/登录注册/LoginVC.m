//
//  LoginVC.m
//  云渠道
//
//  Created by xiaoq on 2018/3/13.
//  Copyright © 2018年 xiaoq. All rights reserved.
//

#import "LoginVC.h"
#import "CYLTabBarControllerConfig.h"
#import "RegisterVC.h"
#import "FindPassWordVC.h"

@interface LoginVC ()
@property (nonatomic , strong) UITextField *Account;
@property (nonatomic , strong) UITextField *PassWord;
@property (nonatomic , strong) UIButton *RegisterBtn;
@property (nonatomic , strong) UIButton *QuickLoginBtn;
@property (nonatomic , strong) UIButton *LoginBtn;
@property (nonatomic , strong) UIButton *ProtocolBtn;
@property (nonatomic , strong) UIButton *FindPassWordBtn;
@property (nonatomic , strong) UIImageView *Headerimg;
@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self InitUI];
    
}

-(void)InitUI
{
    [self.view addSubview:self.Headerimg];
    [self.view addSubview:self.RegisterBtn];
    [self.view addSubview:self.Account];
    [self.view addSubview:self.PassWord];
//    [self.view addSubview:self.QuickLoginBtn];
    [self.view addSubview:self.LoginBtn];
    [self.view addSubview:self.ProtocolBtn];
    [self.view addSubview:self.FindPassWordBtn];
    for (int i = 0; i<2; i++) {
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(22*SIZE, 249*SIZE+47*SIZE*i, 316*SIZE, 0.5*SIZE)];
        line.backgroundColor = COLOR(130, 130, 130, 1);
        [self.view addSubview:line];
    }
}

-(void)Register
{
    //注册
    RegisterVC *next_vc = [[RegisterVC alloc]init];
    [self.navigationController pushViewController:next_vc animated:YES];
}


-(void)FindPassWord
{
    FindPassWordVC *next_vc = [[FindPassWordVC alloc]init];
    [self.navigationController pushViewController:next_vc animated:YES];
}

-(UIImageView *)Headerimg
{
    if (!_Headerimg) {
        _Headerimg = [[UIImageView alloc]initWithFrame:CGRectMake(142*SIZE, 82*SIZE, 78*SIZE, 58*SIZE)];
        _Headerimg.backgroundColor =[UIColor redColor];
        
    }
    return _Headerimg;
}

-(void)Login{
    [[NSUserDefaults standardUserDefaults]setValue:LOGINSUCCESS forKey:LOGINENTIFIER];
    CYLTabBarControllerConfig *tabBarControllerConfig = [[CYLTabBarControllerConfig alloc] init];
    [self presentViewController:tabBarControllerConfig.tabBarController animated:NO completion:nil];
}

-(void)QuickLogin
{
//    QuickLoginVC *next_vc= [[QuickLoginVC alloc]init];
//    [self.navigationController pushViewController:next_vc animated:YES];
}

-(void)Protocol
{
    
}

-(UIButton *)RegisterBtn
{
    if (!_RegisterBtn) {
        _RegisterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _RegisterBtn.frame =  CGRectMake(20*SIZE, 417*SIZE, 60*SIZE, 15*SIZE);
        [_RegisterBtn setTitle:@"马上注册" forState:UIControlStateNormal];
        [_RegisterBtn setTitleColor:YJContentLabColor forState:UIControlStateNormal];
        _RegisterBtn.titleLabel.font = [UIFont systemFontOfSize:14*SIZE];
        [_RegisterBtn addTarget:self action:@selector(Register) forControlEvents:UIControlEventTouchUpInside];
    }
    return _RegisterBtn;
}

-(UITextField *)Account{
    if (!_Account) {
        _Account = [[UITextField alloc]initWithFrame:CGRectMake(22*SIZE, 219*SIZE, 200*SIZE, 15*SIZE)];
        _Account.placeholder = @"请输入手机号码/云算编号";
        _Account.font = [UIFont systemFontOfSize:14*SIZE];
        
    }
    return _Account;
}

-(UITextField *)PassWord{
    if (!_PassWord) {
        _PassWord = [[UITextField alloc]initWithFrame:CGRectMake(22*SIZE, 266*SIZE, 200*SIZE, 15*SIZE)];
        _PassWord.placeholder = @"请输入密码";
        _PassWord.font = [UIFont systemFontOfSize:14*SIZE];
        
    }
    return _PassWord;
}

-(UIButton *)LoginBtn
{
    if (!_LoginBtn) {
        _LoginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _LoginBtn.frame = CGRectMake(22*SIZE, 367*SIZE, 316*SIZE, 41*SIZE);
        _LoginBtn.layer.masksToBounds = YES;
        _LoginBtn.layer.cornerRadius = 2*SIZE;
        _LoginBtn.backgroundColor = YJLoginBtnColor;
        [_LoginBtn setTitle:@"登录" forState:UIControlStateNormal];
        [_LoginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _LoginBtn.titleLabel.font = [UIFont systemFontOfSize:16*SIZE];
        [_LoginBtn addTarget:self action:@selector(Login) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LoginBtn;
}



//-(UIButton *)QuickLoginBtn
//{
//    if (!_QuickLoginBtn) {
//        _QuickLoginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        _QuickLoginBtn.frame =  CGRectMake(20*SIZE, 417*SIZE, 60*SIZE, 15*SIZE);
//        [_QuickLoginBtn setTitle:@"马上注册" forState:UIControlStateNormal];
//        [_QuickLoginBtn setTitleColor:YJContentLabColor forState:UIControlStateNormal];
//        _QuickLoginBtn.titleLabel.font = [UIFont systemFontOfSize:14*SIZE];
//        [_QuickLoginBtn addTarget:self action:@selector(QuickLogin) forControlEvents:UIControlEventTouchUpInside];
//    }
//    return _QuickLoginBtn;
//}

-(UIButton *)ProtocolBtn
{
    if (!_ProtocolBtn) {
        _ProtocolBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _ProtocolBtn.frame =  CGRectMake(43*SIZE, 325*SIZE, 100*SIZE, 13*SIZE);
        [_ProtocolBtn setTitle:@"我已阅读并同意" forState: UIControlStateNormal];
        [_ProtocolBtn setTitleColor:YJContentLabColor forState:UIControlStateNormal];
        _ProtocolBtn.titleLabel.font = [UIFont systemFontOfSize:12*SIZE];
        [_ProtocolBtn addTarget:self action:@selector(Protocol) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ProtocolBtn;
}

-(UIButton *)FindPassWordBtn
{
    if (!_FindPassWordBtn) {
        _FindPassWordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _FindPassWordBtn.frame =  CGRectMake(283*SIZE, 417*SIZE, 60*SIZE, 15*SIZE);
        [_FindPassWordBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
        [_FindPassWordBtn setTitleColor:YJContentLabColor forState:UIControlStateNormal];
        _FindPassWordBtn.titleLabel.font = [UIFont systemFontOfSize:14*SIZE];
        [_FindPassWordBtn addTarget:self action:@selector(FindPassWord) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _FindPassWordBtn;
}


@end
