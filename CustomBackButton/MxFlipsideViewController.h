//
//  MxFlipsideViewController.h
//  Created by http://github.com/iosdeveloper
//

#import <UIKit/UIKit.h>

@class MxFlipsideViewController;

@protocol MxFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(MxFlipsideViewController *)controller;
@end

@interface MxFlipsideViewController : UIViewController

@property (assign, nonatomic) IBOutlet UINavigationItem *__navigationItem;
@property (assign, nonatomic) id <MxFlipsideViewControllerDelegate> delegate;

- (void)done:(id)sender;

@end
