//
//  view2.m
//  testui
//
//  Created by Pooja Kamath on 30/04/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "XXview2.h"
#import "XXviewtest.h"

@interface XXview2 ()
- (IBAction)back:(id)sender;

@end

@implementation XXview2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    //[self.navigationController  popToRootViewControllerAnimated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
