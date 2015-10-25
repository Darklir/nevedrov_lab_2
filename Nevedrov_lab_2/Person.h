//
//  Person.h
//  Nevedrov_lab_2
//
//  Created by Admin on 25.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
}

@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (assign) int age;
@property (nonatomic, strong) NSMutableArray *friends;

-(id) initWithFirstName: (NSString *) first_name
           withLastName: (NSString *) last_name
                withAge: (int) age;
-(void) addFriend: (Person *) pr;
-(BOOL) palWith: (Person *) pr;
-(void) printFriendsList;

@end
