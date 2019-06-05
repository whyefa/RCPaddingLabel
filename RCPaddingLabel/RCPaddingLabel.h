//
//  RCPaddingLabel.h
//  Test
//
//  Created by 老王 on 2019/6/4.
//  Copyright © 2019 laowang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RCPaddingLabel : UILabel

@property (nonatomic, assign) CGFloat paddingTop;

@property (nonatomic, assign) CGFloat paddingLeft;

@property (nonatomic, assign) CGFloat paddingBottom;

@property (nonatomic, assign) CGFloat paddingRight;

@property (nonatomic, assign) UIEdgeInsets padding;


@end

NS_ASSUME_NONNULL_END
