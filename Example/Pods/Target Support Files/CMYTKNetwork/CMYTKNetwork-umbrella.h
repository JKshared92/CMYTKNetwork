#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AnimatingRequestAccessory.h"
#import "UrlArgumentsFilter.h"
#import "YTKBaseRequest+AnimatingAccessory.h"
#import "YTKBatchRequest+AnimatingAccessory.h"
#import "YTKChainRequest+AnimatingAccessory.h"

FOUNDATION_EXPORT double CMYTKNetworkVersionNumber;
FOUNDATION_EXPORT const unsigned char CMYTKNetworkVersionString[];

