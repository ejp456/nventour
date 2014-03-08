//
//  CameraViewController.h
//  nventour
//
//  Created by Etai Pinckney on 3/4/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialViewController : UIViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    UIImageView *profileImage;
}
@property (strong, nonatomic) IBOutlet UIImageView *profilePicture;


@end
