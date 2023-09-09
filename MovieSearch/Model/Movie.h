//
//  Movie.h
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject
@property NSString* title;
@property NSNumber* year;
@property NSString* rated;
@property NSString* released;
@property NSString* runTime;
@property NSString* genre;
@property NSString* director;
@property NSString* writer;
@property NSString* actors;
@property NSString* plot;


- (instancetype)initWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
