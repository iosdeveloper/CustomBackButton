//
//  MxFlipsideViewController.m
//  Created by http://github.com/iosdeveloper
//

#import "MxFlipsideViewController.h"
#import "UIBarButtonItem+CustomBackButton.h"

@implementation MxFlipsideViewController

@synthesize delegate = _delegate;
@synthesize __navigationItem;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    __navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithCustomBackButton:@"Dismiss" target:self action:@selector(done:)] autorelease];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions

- (void)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
