//
//  RCPaddingLabel.m
//  Test
//
//  Created by 老王 on 2019/6/4.
//  Copyright © 2019 laowang. All rights reserved.
//

#import "RCPaddingLabel.h"

@implementation RCPaddingLabel

- (CGSize)intrinsicContentSize {
    if(self.text || self.attributedText) {
        CGSize originalSize = [super intrinsicContentSize];
        CGSize size = CGSizeMake(originalSize.width + self.paddingLeft + self.paddingBottom, originalSize.height + self.paddingTop + self.paddingBottom);
        return size;
    }
    return [super intrinsicContentSize];
}

- (void)setPadding:(UIEdgeInsets)padding {
    self.paddingTop = padding.top;
    self.paddingLeft = padding.left;
    self.paddingRight = padding.right;
    self.paddingBottom = padding.bottom;
}

- (UIEdgeInsets)padding {
    return UIEdgeInsetsMake(self.paddingTop, self.paddingLeft, self.paddingBottom, self.paddingRight);
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    UIEdgeInsets insets = self.padding;
    CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, insets)
                    limitedToNumberOfLines:numberOfLines];
    
    rect.origin.x    -= insets.left;
    rect.origin.y    -= insets.top;
    rect.size.width  += (insets.left + insets.right);
    rect.size.height += (insets.top + insets.bottom);
    
    return rect;
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.padding)];
}

@end
