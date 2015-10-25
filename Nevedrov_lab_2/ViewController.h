//
//  ViewController.h
//  Nevedrov_lab_2
//
//  Created by Admin on 25.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController
{
    Person *main_person;
}
@property (weak, nonatomic) IBOutlet UILabel *first_name_label;
@property (weak, nonatomic) IBOutlet UILabel *last_name_label;
@property (weak, nonatomic) IBOutlet UILabel *age_label;
@property (weak, nonatomic) IBOutlet UIButton *show_main_person_button;
- (IBAction)touchUp:(id)sender;

@end

