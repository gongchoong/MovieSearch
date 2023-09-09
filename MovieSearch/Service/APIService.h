//
//  APIService.h
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import <Foundation/Foundation.h>

typedef void (^CompletionHandler)(id _Nullable results, NSError * _Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface APIService : NSObject

- (void)request:(NSURLRequest * _Nonnull)req onComplete:(CompletionHandler _Nonnull)complete;

@end

NS_ASSUME_NONNULL_END
