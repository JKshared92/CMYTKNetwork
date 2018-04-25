//
//  AnimatingRequestAccessory.m
//  Pods-YTKNetwork-Categories_Example
//
//  Created by comma on 2017/10/27.
//

#import "AnimatingRequestAccessory.h"
#import <QMUIKit/QMUIKit.h>

@implementation AnimatingRequestAccessory

+ (id)accessoryWithAnimatingView:(UIView *)animatingView
              animatingStartText:(NSString *)animatingStartText
                animatingEndText:(NSString *)animatingEndText
                  responseResult:(ResponseResult)responseResult{
    return [[self alloc] initWithAnimatingView:animatingView animatingStartText:animatingStartText animatingEndText:animatingEndText responseResult:responseResult];
}

- (id)initWithAnimatingView:(UIView *)animatingView
         animatingStartText:(NSString *)animatingStartText
           animatingEndText:(NSString *)animatingEndText
             responseResult:(ResponseResult)responseResult{
    self = [super init];
    if (self) {
        _animatingView      = animatingView;
        _animatingStartText = animatingStartText;
        _animatingEndText   = animatingEndText;
        _responseResult     = responseResult;
    }
    return self;
}

- (void)requestWillStart:(id)request{
    if (_animatingView) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [QMUITips showLoading:self.animatingStartText inView:self.animatingView];
        });
    }
}

- (void)requestDidStop:(id)request{
    if (_animatingView) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [QMUITips hideAllToastInView:self.animatingView animated:NO];
            if (self.animatingEndText) {
                switch (self.responseResult) {
                    case ResponseInfo:
                        [QMUITips showWithText:self.animatingEndText inView:self.animatingView hideAfterDelay:1.5];
                        break;
                    case ResponseError:
                        [QMUITips showError:self.animatingEndText inView:self.animatingView hideAfterDelay:1.5];
                        break;
                    case ResponseSuccess:
                        [QMUITips showSucceed:self.animatingEndText inView:self.animatingView hideAfterDelay:1.5];
                        break;
                    default:
                        break;
                }
            }
        });
    }
}

@end
