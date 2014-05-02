//
//  viewtest.m
//  testui
//
//  Created by Pooja Kamath on 30/04/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "XXviewtest.h"
#import"XXview2.h"
@interface XXviewtest ()

@property (strong, nonatomic) IBOutlet UILabel *viewlabel;
@property (strong, nonatomic) IBOutlet UILabel *name;
- (IBAction)viewbutton:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UITextField *txt;
@property (retain, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UITextView *textview;



- (IBAction)slider:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *slidervalue;
@property (strong, nonatomic) IBOutlet UINavigationBar *navigationbar;

@property (strong, nonatomic) IBOutlet UIDatePicker *date;

- (IBAction)next:(id)sender;

- (IBAction)italics:(id)sender;


@end

@implementation XXviewtest


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

- (IBAction)viewbutton:(id)sender
{
    _viewlabel.text=@"bye";
    _name.text=_txt.text;
    
    UIColor * blue=[UIColor blueColor];
    UIColor * black=[UIColor blackColor];
    _view1.backgroundColor=blue;
    
    _navigationbar.backgroundColor=blue;

    _textview.text=@"In iOS 6 and later, assigning a new value to this property also replaces the value of the attributedText property with the same text, albeit without any inherent style attributes. ";
    _textview.textColor=blue;
    _textview.backgroundColor=black;
    
   
  }



- (IBAction)slider:(id)sender {
    fontsize=[_slider value];
    float f=[_slider value];
    NSLog(@"%f",f);
    NSString *str = [NSString stringWithFormat:@"%.4f", f];
    _slidervalue.text=str;
   }



- (IBAction)next:(id)sender {
    
    XXview2 *nxt=[[XXview2 alloc]initWithNibName:@"XXview2" bundle:nil];
    [self.navigationController pushViewController:nxt animated:YES];
    [nxt release];
   
}

- (IBAction)italics:(id)sender {
    UIColor * blue=[UIColor blueColor];
    UIFont *font=[UIFont italicSystemFontOfSize:(fontsize*75)];
    
    _textview.font=font;
    
    _date.backgroundColor=blue;
    
}
-(void)dealloc
{
    [_name release];
    [_slider release];
    [_txt release];
    [_slidervalue release];
    

    [_navigationbar release];
    
 
    [_viewlabel release];
    
    [_textview release];
    [_date release];
    [_view1 release];
    
       [super dealloc];
    
}


@end
