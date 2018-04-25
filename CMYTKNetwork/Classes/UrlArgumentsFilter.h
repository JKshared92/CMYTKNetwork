//
//  UrlArgumentsFilter.h
//  Pods-YTKNetwork-Categories_Example
//
//  Created by comma on 2017/10/27.
//

#import <Foundation/Foundation.h>
#import <YTKNetwork/YTKNetwork.h>

@interface UrlArgumentsFilter : NSObject<YTKUrlFilterProtocol>


/**
 给网络请求添加统一的参数
 
 @param arguments 统一的参数
 @return 返回实例
 */
+ (UrlArgumentsFilter *)filterWithArguments:(NSDictionary *)arguments;


/**
 给具体的网络请求进行参数或者URL重写
 
 @param originUrl 原始的URL
 @param request 网络请求
 @return 修改后的网络请求URL
 */
- (NSString *)filterUrl:(NSString *)originUrl withRequest:(YTKBaseRequest *)request;

@end
