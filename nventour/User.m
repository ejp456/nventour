//
//  User.m
//  nventour
//
//  Created by Etai Pinckney on 3/6/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import "User.h"

@implementation User

-(id)initWithUserInfo:(NSString*)userName:(NSString*)password:(NSString*)email:(NSString*)firstName:(NSString*)lastName{
    self = [super init];
    if(self){
        user = [PFUser user];
        user.username = userName;
        user.password = password;
        user.email = email;
        user[@"firstName"] = firstName;
        user[@"lastName"] = lastName;
    }
    
    return self;
}
-(PFUser*)getUser{
    return user;
}

@end
