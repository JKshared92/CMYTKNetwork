//
//  UrlArgumentsFilter.m
//  Pods-YTKNetwork-Categories_Example
//
//  Created by comma on 2017/10/27.
//

#import "UrlArgumentsFilter.h"
#import "AFURLRequestSerialization.h"

@interface UrlArgumentsFilter ()

@property (strong, nonatomic) NSDictionary *arguments;

@end

@implementation UrlArgumentsFilter

+ (UrlArgumentsFilter *)filterWithArguments:(NSDictionary *)arguments{
    return [[self alloc] initWithArguments:arguments];
}

- (id)initWithArguments:(NSDictionary *)arguments {
    self = [super init];
    if (self) {
        self.arguments = arguments;
    }
    return self;
}

- (NSString *)filterUrl:(NSString *)originUrl withRequest:(YTKBaseRequest *)request {
    return [self urlStringWithOriginUrlString:originUrl appendParameters:self.arguments];
}

- (NSString *)urlStringWithOriginUrlString:(NSString *)originUrlString appendParameters:(NSDictionary *)parameters {
    NSString *paraUrlString = AFQueryStringFromParameters(parameters);
    
    if (!(paraUrlString.length > 0)) {
        return originUrlString;
    }
    
    NSURLComponents *components = [NSURLComponents componentsWithString:originUrlString];
    
    NSString *queryString = components.query ?: @"";
    NSString *newQueryString = [queryString stringByAppendingFormat:queryString.length > 0 ? @"&%@" : @"%@", paraUrlString];
    
    components.query = newQueryString;
    return components.URL.absoluteString;
}

@end
