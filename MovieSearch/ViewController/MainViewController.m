//
//  MainViewController.m
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import "MainViewController.h"
#import "MainViewModel.h"

@interface MainViewController ()

@property (strong, nonatomic) MainViewModel * mainViewModel;

@end

@implementation MainViewController

- (instancetype)initWithViewModel:(MainViewModel *)mainViewModel {
    if (self = [super init]) {
        self.mainViewModel = mainViewModel;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.greenColor;
    [_mainViewModel loadData:^(Movie * _Nonnull movie) {
        NSLog(@"APIRequest>>>%@", movie.year);
    }];
}


@end
