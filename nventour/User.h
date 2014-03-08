//
//  User.h
//  nventour
//
//  Created by Etai Pinckney on 3/6/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface User : NSObject{
    PFUser *user;
}
-(id)initWithUserInfo:(NSString*)userName:(NSString*)password:(NSString*)email:(NSString*)firstName:(NSString*)lastName;
-(PFUser*)getUser;

@end

