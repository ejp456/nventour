//
//  SignInViewController.h
//  nventour
//
//  Created by Etai Pinckney on 3/6/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface SignInViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *userName;

@property (strong, nonatomic) IBOutlet UITextField *passWord;

- (IBAction)logIn:(id)sender;

- (IBAction)signUp:(id)sender;

@end
