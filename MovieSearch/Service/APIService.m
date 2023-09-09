//
//  APIService.m
//  MovieSearch
//
//  Created by David Lee on 9/8/23.
//

#import "APIService.h"

@implementation APIService

- (void)request:(NSURLRequest * _Nonnull)req onComplete:(CompletionHandler  _Nonnull __strong)complete {
    NSURLSessionTask *task = [NSURLSession.sharedSession dataTaskWithRequest:req completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *jsonError = nil;
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];

        if (!jsonError) {
            complete(jsonObject,jsonError);
        } else {
            NSLog(@"JSON Error: %@", jsonError);
        }
    }];
    
    [task resume];
}

@end
