//
//  ViewController.m
//  Nevedrov_lab_2
//
//  Created by Admin on 25.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSString+StringLength.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *name = [[NSString alloc] init];
    name = @"Tom";
    NSLog([name stringLenght] ? @"YES" : @"NO");
    NSString *name2 = [[NSString alloc] init];
    name2 = @"TomLeastThan15Characters";
    NSLog([name2 stringLenght] ? @"YES" : @"NO");
    
    main_person = [[Person alloc] initWithFirstName:@"Tom" withLastName:@"Riddle" withAge:122];
    Person *p2 = [[Person alloc] initWithFirstName:@"Kirya" withLastName:@"Smith" withAge:22];
    Person *p3 = [[Person alloc] initWithFirstName:@"Kop" withLastName:@"Smith" withAge:22];
    Person *p4 = [[Person alloc] initWithFirstName:@"Basya" withLastName:@"Killer" withAge:12];
    [main_person addFriend:p2];
    [main_person addFriend:p3];
    [main_person printFriendsList];
    NSLog([main_person palWith:p2] ? @"YES" : @"NO");
    NSLog([main_person palWith:p4] ? @"YES" : @"NO");
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchUp:(id)sender {
    self.first_name_label.text = [main_person first_name];
    self.last_name_label.text = [main_person last_name];
    self.age_label.text = [NSString stringWithFormat:@"%i",[main_person age]];
}
@end
