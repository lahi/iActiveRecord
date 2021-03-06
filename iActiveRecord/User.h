//
//  User.h
//  iActiveRecord
//
//  Created by Alex Denisov on 10.01.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import "ActiveRecord.h"

@interface User : ActiveRecord
    <ARValidatableProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, retain) NSArray *ignoredProperty;
@property (nonatomic, retain) NSNumber *groupId;

BELONGS_TO_DEC(Group, group)

@end
