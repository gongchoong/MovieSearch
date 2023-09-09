//
//  MainViewController.h
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import <UIKit/UIKit.h>
#import "MainViewModel.h"

@interface MainViewController : UIViewController

-(instancetype) initWithViewModel:(MainViewModel *)mainViewModel;

@end

