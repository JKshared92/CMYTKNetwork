//
//  YTKBatchRequest+AnimatingAccessory.h
//  AFNetworking
//
//  Created by comma on 2017/10/27.
//

#import <YTKNetwork/YTKNetwork.h>
#import "AnimatingRequestAccessory.h"

@interface YTKBatchRequest (AnimatingAccessory)

@property (weak  , nonatomic) UIView         *animatingView;
@property (strong, nonatomic) NSString       *animatingStartText;
@property (strong, nonatomic) NSString       *animatingEndText;
@property (assign, nonatomic) ResponseResult responseResult;

@end
