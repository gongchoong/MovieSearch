//
//  MainViewModel.h
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewModel : NSObject
@property NSMutableArray<Movie *> *movies;

- (void)loadData:(void (^_Nullable)(Movie *movie))onComplete;

@end

NS_ASSUME_NONNULL_END
