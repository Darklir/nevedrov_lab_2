//
//  Person.m
//  Nevedrov_lab_2
//
//  Created by Admin on 25.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "Person.h"
#import "FullDescription.h"

@implementation Person

-(id) initWithFirstName: (NSString *) first_name
           withLastName: (NSString *) last_name
                withAge: (int) age
{
    self = [super init];
    if( self )
    {
        self.first_name = first_name;
        self.last_name = last_name;
        self.age = age;
        self.friends = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void) addFriend: (Person *) pr
{
    [self.friends addObject:pr];
}

-(BOOL) palWith: (Person *) pr
{
    BOOL is_friend = false;
    
    for(id friend in self.friends)
    {
        if (friend == pr) {
            is_friend = true;
        }
    }
    return is_friend;
}

-(void) printFriendsList
{
    for(id friend in self.friends)
    {
        NSLog(@"%@", [friend fullDescription]);
    }
    
}

-(NSString *)fullDescription
{
    return [NSString stringWithFormat:@"First name: %@ \nLast name: %@ \nAge: %i",self.first_name,self.last_name,self.age];
}

@end


