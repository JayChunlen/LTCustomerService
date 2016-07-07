//
//  ViewController.m
//  LTCustomerService
//
//  Created by chunlen on 16/7/6.
//  Copyright © 2016年 Lt. All rights reserved.
//

#import "ViewController.h"
#import "RCDCustomerServiceViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)kefu:(id)sender {
    RCDCustomerServiceViewController *chatService = [[RCDCustomerServiceViewController alloc] init];
    //#define SERVICE_ID @"KEFU145801184889727"
#define SERVICE_ID @"KEFU146001495753714"
    chatService.userName = @"客服";
    chatService.conversationType = ConversationType_CUSTOMERSERVICE;
    chatService.targetId = SERVICE_ID;
    
    //上传用户信息，nickname是必须要填写的
    RCCustomerServiceInfo *csInfo = [[RCCustomerServiceInfo alloc] init];
    csInfo.userId = @"10000";
    csInfo.nickName = @"chunlen";
    csInfo.loginName = @"chunlen";
    csInfo.name = @"chunlen";
    csInfo.grade = @"11级";
    csInfo.gender = @"男";
    csInfo.birthday = @"2016.5.1";
    csInfo.age = @"36";
    csInfo.profession = @"software engineer";
    csInfo.portraitUrl = [RCIMClient sharedRCIMClient].currentUserInfo.portraitUri;
    csInfo.province = @"beijing";
    csInfo.city = @"beijing";
    csInfo.memo = @"这是一个好顾客!";
    
    csInfo.mobileNo = @"13800000000";
    csInfo.email = @"test@example.com";
    csInfo.address = @"北京市北苑路北泰岳大厦";
    csInfo.QQ = @"88888888";
    csInfo.weibo = @"my weibo account";
    csInfo.weixin = @"myweixin";
    
    csInfo.page = @"卖化妆品的页面来的";
    csInfo.referrer = @"客户端";
    csInfo.enterUrl = @"testurl";
    csInfo.skillId = @"技能组";
    csInfo.listUrl = @[@"用户浏览的第一个商品Url", @"用户浏览的第二个商品Url"];
    csInfo.define = @"自定义信息";
    
    chatService.csInfo = csInfo;
    chatService.title = chatService.userName;
    
    [self.navigationController pushViewController :chatService animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
