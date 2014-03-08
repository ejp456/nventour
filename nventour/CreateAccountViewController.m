//
//  CreateAccountViewController.m
//  nventour
//
//  Created by Etai Pinckney on 3/7/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAccount:(id)sender {
    User *newUser =[[User alloc]initWithUserInfo:self.userNameTextField.text :self.passwordTextField.text :self.emailTextField.text:self.firstNameTextField.text :self.lastNameTextField.text];
    PFUser *user = [newUser getUser];
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if(!error){
            //User signed up successfully
            [self performSegueWithIdentifier:@"accountCreated" sender:self];
        }else{
            NSString *errorString = [error userInfo][@"error"];
            NSLog(errorString);
        }
    }];

}
@end
