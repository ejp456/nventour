//
//  SignInViewController.m
//  nventour
//
//  Created by Etai Pinckney on 3/6/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

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

- (IBAction)logIn:(id)sender {
    [PFUser logInWithUsernameInBackground:self.userName.text password:self.passWord.text block:^(PFUser *user, NSError *error) {
        if(user){
            //Pass to next controller
            [self performSegueWithIdentifier:@"tabViewController" sender:self];
        }else{
            NSLog(@"Sign in failed");
        }
    }];
}

- (IBAction)signUp:(id)sender {
   }
@end
