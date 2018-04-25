//
//  YTKBatchRequest+AnimatingAccessory.m
//  AFNetworking
//
//  Created by comma on 2017/10/27.
//

#import "YTKBatchRequest+AnimatingAccessory.h"

@implementation YTKBatchRequest (AnimatingAccessory)

- (AnimatingRequestAccessory *)animatingRequestAccessory {
    for (id accessory in self.requestAccessories) {
        if ([accessory isKindOfClass:[AnimatingRequestAccessory class]]){
            return accessory;
        }
    }
    return nil;
}

- (UIView *)animatingView {
    return self.animatingRequestAccessory.animatingView;
}

- (void)setAnimatingView:(UIView *)animatingView {
    if (!self.animatingRequestAccessory) {
        [self addAccessory:[AnimatingRequestAccessory accessoryWithAnimatingView:animatingView animatingStartText:nil animatingEndText:nil responseResult:ResponseInfo]];
    } else {
        self.animatingRequestAccessory.animatingView = animatingView;
    }
}

- (NSString *)animatingStartText{
    return self.animatingRequestAccessory.animatingStartText;
}

- (void)setAnimatingStartText:(NSString *)animatingStartText{
    if (!self.animatingRequestAccessory) {
        [self addAccessory:[AnimatingRequestAccessory accessoryWithAnimatingView:nil animatingStartText:animatingStartText animatingEndText:nil responseResult:ResponseInfo]];
    } else {
        self.animatingRequestAccessory.animatingStartText = animatingStartText;
    }
}

- (NSString *)animatingEndText{
    return self.animatingRequestAccessory.animatingEndText;
}

- (void)setAnimatingEndText:(NSString *)animatingEndText{
    if (!self.animatingRequestAccessory) {
        [self addAccessory:[AnimatingRequestAccessory accessoryWithAnimatingView:nil animatingStartText:nil animatingEndText:animatingEndText responseResult:ResponseInfo]];
    } else {
        self.animatingRequestAccessory.animatingEndText = animatingEndText;
    }
}

- (ResponseResult)responseResult{
    return self.animatingRequestAccessory.responseResult;
}

- (void)setResponseResult:(ResponseResult)responseResult{
    if (!self.animatingRequestAccessory) {
        [self addAccessory:[AnimatingRequestAccessory accessoryWithAnimatingView:nil animatingStartText:nil animatingEndText:nil responseResult:responseResult]];
    } else {
        self.animatingRequestAccessory.responseResult = responseResult;
    }
}

@end

