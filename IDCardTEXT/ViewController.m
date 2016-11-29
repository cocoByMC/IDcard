//
//  ViewController.m
//  IDCardTEXT
//
//  Created by koka on 16/11/28.
//  Copyright © 2016年 ZSYW. All rights reserved.
//

#import "ViewController.h"
#import "CusMD5.h"
#import "Cardcommit.h"

@interface ViewController ()
{
    NSString *_tm;
    NSString *_iD;
    NSString *_realname;
    NSString *_name;
    NSString *_idcard;
    NSString *_sign;
    NSString *_appkey;
    
    NSString *_cardnum;
    NSString *_bankPreMobile;
    NSString *_numsign;
    
    
    NSString *_result;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
    
    NSString *times = [NSString stringWithFormat:@"%f",time];
    _tm = [NSString stringWithFormat:@"%@000",[times substringToIndex:10]];
    _iD = @"110675";
    _appkey = @"1044b1b816d25836d6264447d660eb57";
    
    _name = @"XXX";
    _realname = [_name stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    _idcard = @"xxxxxxxxxxxxxxxxxx";
    
    _cardnum = @"xxxxxxxxxxxxxxxxxxx";
    _bankPreMobile = @"xxxxxxxxxxx";

    NSString *result1 = [Cardcommit ReturnIDCardResultwithname:_name Andidcard:_idcard];
    NSLog(@"result1 = %@",result1);
    
    NSString *result2 = [Cardcommit ReturnBankCardResultwithname:_name Andidcard:_idcard Andbankcard:_cardnum AndbankPreMobile:_bankPreMobile];
    
    NSLog(@"result2 = %@",result2);
    NSDictionary *result3 = [Cardcommit ReturnBankCardResultwithbankcard:_cardnum];
    NSLog(@"result3 = %@",result3);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
