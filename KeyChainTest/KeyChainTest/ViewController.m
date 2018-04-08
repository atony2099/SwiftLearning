//
//  ViewController.m
//  KeyChainTest
//
//  Created by admin on 21/12/2017.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ViewController.h"
#import "HPKeychain.h"

NSString * const KEY_USERNAME_PASSWORD = @"com.company.app.usernamepassword";
NSString * const KEY_USERNAME = @"com.company.app.username";
NSString * const KEY_PASSWORD = @"com.company.app.password";


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

 // AF7563DB-9681-45C8-9B91-874A881867BE
   NSString *keyID = [HPKeychain getKeyChainUUID];
    
    NSLog(@"======%@",keyID);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    // 2FE7B86-79F1-4912-A6B3-A19482752C61
    // 72FE7B86-79F1-4912-A6B3-A19482752C61
}


@end
