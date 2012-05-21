//
//  UIBarButtonItem+CustomBackButton.m
//  Created by http://github.com/iosdeveloper
//

#import "UIBarButtonItem+CustomBackButton.h"

@implementation UIBarButtonItem (CustomBackButton)

- (id)initWithCustomBackButton:(NSString *)title target:(id)target action:(SEL)action {
    UIButton *_button = [UIButton buttonWithType:101];
    [_button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:title forState:UIControlStateNormal];
    
    return [self initWithCustomView:_button];
}

@end
