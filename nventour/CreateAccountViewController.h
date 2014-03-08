//
//  CreateAccountViewController.h
//  nventour
//
//  Created by Etai Pinckney on 3/7/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface CreateAccountViewController : UIViewController
- (IBAction)createAccount:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPassTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmEmailTextField;
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;


@end
