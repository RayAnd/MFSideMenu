//
//  DemoViewController.m
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.
//

#import "DemoViewController.h"
#import "MFSideMenu.h"
#import <QuartzCore/QuartzCore.h>

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setupSideMenuBarButtonItem];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pushAnotherPressed:(id)sender {
    DemoViewController *demoController = [[[DemoViewController alloc] initWithNibName:@"DemoViewController" bundle:nil] autorelease];
    demoController.title = @"Drag Me To The Right";
    
    [self.navigationController pushViewController:demoController animated:YES];
}

@end