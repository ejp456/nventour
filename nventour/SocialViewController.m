//
//  CameraViewController.m
//  nventour
//
//  Created by Etai Pinckney on 3/4/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

@synthesize profilePicture = profileImage;
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage * myImage = [UIImage imageNamed: @"mountains"];
    //self.tripImage = [[UIImageView alloc] initWithImage:myImage];
    self.profilePicture.image = myImage;
	// Do any additional setup after loading the view, typically from a nib.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

@end
