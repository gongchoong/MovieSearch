//
//  Movie.m
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import "Movie.h"

@implementation Movie

- (instancetype)initWithDic:(NSDictionary *)dic {
    if (self = [super init]) {
        _title = dic[@"Title"];
        _year = dic[@"Year"];
        _rated = dic[@"Rated"];
        _released = dic[@"Released"];
        _runTime = dic[@"Runtime"];
        _genre = dic[@"Genre"];
        _director = dic[@"Director"];
        _writer = dic[@"Writer"];
        _actors = dic[@"Actors"];
        _plot = dic[@"Plot"];
    }
    return self;
}

@end
