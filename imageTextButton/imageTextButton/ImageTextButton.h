//
//  ImageTextButton.h
//  imageTextButton
//
//  Created by 李根 on 16/7/8.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  这种方式的图文按钮, 图片的大小要跟在按钮中需要的大小完全一样, 否则就会失真, button.imageview的大小无法调整
 */

typedef enum : NSUInteger {
    UIButtonTitleWithImageAlignmentUp = 0,
    UIButtonTitleWithImageAlignmentLeft,
    UIButtonTitleWithImageAlignmentDown,
    UIButtonTitleWithImageAlignmentRight,
} UIButtonTitleWithImageAlignment;

@interface ImageTextButton : UIButton

//  图片, 文字间距
@property(nonatomic, assign)CGFloat imgTextSpace;   //  distance between image and title, difault is 5
@property(nonatomic, assign)UIButtonTitleWithImageAlignment buttonTitleWithImageAlignment;  //  need to set a value when used

- (UIButtonTitleWithImageAlignment)buttonTitleWithImageAlignment;

- (void)setButtonTitleWithImageAlignment:(UIButtonTitleWithImageAlignment)buttonTitleWithImageAlignment;

@end
