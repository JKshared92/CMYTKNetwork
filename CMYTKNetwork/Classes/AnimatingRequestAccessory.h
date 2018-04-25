//
//  AnimatingRequestAccessory.h
//  Pods-YTKNetwork-Categories_Example
//
//  Created by comma on 2017/10/27.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <YTKNetwork/YTKNetwork.h>

typedef NS_ENUM(NSUInteger, ResponseResult) {
    ResponseInfo    = 0,
    ResponseSuccess = 1,
    ResponseError   = 2,
};

@interface AnimatingRequestAccessory : NSObject<YTKRequestAccessory>

@property (weak  , nonatomic) UIView          *animatingView;
@property (strong, nonatomic) NSString        *animatingStartText;
@property (strong, nonatomic) NSString        *animatingEndText;
@property (assign, nonatomic) ResponseResult  responseResult;

+ (id)accessoryWithAnimatingView:(UIView *)animatingView
              animatingStartText:(NSString *)animatingStartText
                animatingEndText:(NSString *)animatingEndText
                  responseResult:(ResponseResult)responseResult;

@end
