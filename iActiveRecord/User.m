//
//  User.m
//  iActiveRecord
//
//  Created by mls on 10.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize name;
@synthesize ignoredProperty;
@synthesize groupId;

BELONGS_TO(Group, group)

IGNORE_FIELDS_DO(
    IGNORE_FIELD(ignoredProperty)
)

VALIDATIONS_DO(
    VALIDATE_UNIQUENESS_OF(name)
    VALIDATE_PRESENCE_OF(name)
)

@end