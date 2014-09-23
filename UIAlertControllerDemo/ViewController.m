//
//  ViewController.m
//  UIAlertControllerDemo
//
//  Created by Z's iMac on 22/09/2014.
//  Copyright (c) 2014 Usman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)OnClickChooseColor:(id)sender
{
    NSArray *pColorsArray = [[NSArray alloc] initWithObjects:@"Red", @"Blue",@"Green",@"White", @"Yellow", nil];
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"UIAlertController Demo" message:@"Chosse Color" preferredStyle:UIAlertControllerStyleActionSheet];
    
    for(int nIndex = 0; nIndex < [pColorsArray count]; nIndex++)
    {
        [alertView addAction:[UIAlertAction actionWithTitle:[pColorsArray objectAtIndex:nIndex] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
            NSString *csSelectedColor = [pColorsArray objectAtIndex:nIndex];
            
            if([csSelectedColor isEqualToString:@"Red"])
            {
                [self.view setBackgroundColor:[UIColor redColor]];
            }
            else if([csSelectedColor isEqualToString:@"Blue"])
            {
                [self.view setBackgroundColor:[UIColor blueColor]];
            }
            else if([csSelectedColor isEqualToString:@"Green"])
            {
                [self.view setBackgroundColor:[UIColor greenColor]];
            }
            else if([csSelectedColor isEqualToString:@"White"])
            {
                [self.view setBackgroundColor:[UIColor whiteColor]];
            }
            else if([csSelectedColor isEqualToString:@"Yellow"])
            {
                [self.view setBackgroundColor:[UIColor yellowColor]];
            }
            
        }]];
    }
    
    [alertView addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    
    [self presentViewController:alertView animated:YES completion:nil];
}

@end
