//
//  Q3ViewController.m
//  Quiz
//
//  Created by George Streten on 06/05/2014.
//  Copyright (c) 2014 George Streten. All rights reserved.
//

#import "Q3ViewController.h"

@interface Q3ViewController ()

@end

@implementation Q3ViewController
@synthesize questionLabel;
@synthesize nextQuestion;

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
    nextQuestion.hidden = YES;    
    // Do any additional setup after loading the view.
}

- (IBAction)correctAnswer:(id)sender {
    questionLabel.text = @"Correct Answer!";
    nextQuestion.hidden = NO;
    NSInteger baseScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"score"];
    NSInteger scoreAdded = baseScore + 1;
    [[NSUserDefaults standardUserDefaults] setInteger:scoreAdded forKey:@"score"];
}
- (IBAction)incorrectAnswer:(id)sender {
    questionLabel.text = @"Incorrect Answer!";
    nextQuestion.hidden = NO;
}
- (IBAction)nextQuestion:(id)sender {
    [self performSegueWithIdentifier:@"ToQ4" sender:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
