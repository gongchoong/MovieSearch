//
//  MainViewModel.m
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import "MainViewModel.h"
#import "APIService.h"
#import "APIConstants.h"
@interface MainViewModel()

@property APIService *apiService;

@end

@implementation MainViewModel

- (instancetype)init {
    if (self = [super init]) {
        _apiService = [[APIService alloc] init];
        _movies = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)loadData:(void (^_Nullable)(Movie *movie))onComplete {
    NSString *urlString = [NSString stringWithFormat:@"%@/?apiKey=%@&t=%@&y%@", APIConstants.baseURL, APIConstants.apiKey, @"Mother!", @"2017"];
    // @"https://www.omdbapi.com/?apikey=5f821b66&t=mother!&y=2017"
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat: @"%@", urlString]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [_apiService request:request onComplete:^(id  _Nullable result, NSError * _Nullable error) {
        Movie *movie = [[Movie alloc] initWithDic:result];
        NSLog(@"%@", movie.plot);
        onComplete(movie);
    }];
}

@end
