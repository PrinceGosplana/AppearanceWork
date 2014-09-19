//
//  ViewController.m
//  AppearanceWork
//
//  Created by Oleksandr Isaiev on 17.09.14.
//  Copyright (c) 2014 None. All rights reserved.
//

#import "ViewController.h"
#import "RoundedLabel.h"

@interface ViewController ()

@end

@implementation ViewController

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
    self.title = @"Custom Lable";
    
    
    RoundedLabel * labelR = [[RoundedLabel alloc] initWithFrame:CGRectMake(15, 80, 100, 30)];
    labelR.text = @"LabelR";
    [self.view addSubview:labelR];
    
    [[RoundedLabel appearanceWhenContainedIn:[UIView class], nil] setBrdrColor:[UIColor redColor]];
    [[RoundedLabel appearanceWhenContainedIn:[UIView class], nil] setFntLabel:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
    

    UILabel * label2 = [[UILabel alloc] initWithFrame:CGRectMake(15, 120, 99, 20)];
    label2.text = @"Label22";
    label2.font = [UIFont fontWithName:@"AmericanTypewriter-Bold" size:22];
    label2.textColor = [UIColor whiteColor];
    label2.backgroundColor = [UIColor blueColor];
    label2.layer.masksToBounds = YES;
    label2.layer.borderColor = [UIColor blackColor].CGColor;
    label2.layer.borderWidth = 1;
    label2.layer.cornerRadius = 8;
    [label2 setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
