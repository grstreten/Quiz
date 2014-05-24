//
//  EndViewController.m
//  Quiz
//
//  Created by George Streten on 06/05/2014.
//  Copyright (c) 2014 George Streten. All rights reserved.
//

#import "EndViewController.h"

@interface EndViewController ()

@end

@implementation EndViewController
@synthesize finalScoreLabel;
@synthesize comment;

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
    // Do any additional setup after loading the view.
    
    NSInteger finalScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"score"];
    finalScoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)finalScore];
    
    if (finalScore == 5) {
        comment.text = @"Well done! 100% Correct!";
    }
    else if (finalScore > 5){
        comment.text = @"Woah, you cheated.";
    }
    else if (finalScore == 0){
        comment.text = @"Come on! You can do better!";        
    }
    else{
        comment.text = @"Better luck next time!";
    }
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
