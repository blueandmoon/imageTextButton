//
//  ImageTextButton.m
//  imageTextButton
//
//  Created by 李根 on 16/7/8.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ImageTextButton.h"
#import <Masonry.h>

#import "ImageTextButton.h"

@implementation ImageTextButton

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    
    //  default Alignment is in order to facilitate(帮助) the layout
    [self setContentHorizontalAlignment:(UIControlContentHorizontalAlignmentCenter)];
    [self setContentVerticalAlignment:(UIControlContentVerticalAlignmentCenter)];
    self.imgTextSpace = 10;
    
}

- (void)setButtonTitleWithImageAlignment:(UIButtonTitleWithImageAlignment)buttonTitleWithImageAlignment {
    _buttonTitleWithImageAlignment = buttonTitleWithImageAlignment;
    [self alignmentValueChanged];
}

- (void)alignmentValueChanged {
    CGFloat imgWidth = self.imageView.image.size.width;
    CGFloat imgHight = self.imageView.image.size.height;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGFloat textWidth = textSize.width;
    CGFloat textHeight = textSize.height;
    
    CGFloat interval;   //  distance between the whole image title part and button
    
    CGFloat titleOffsetX;   //  horizontal offset of title
    CGFloat titleOffsetY;   //  vertical offset of title
    
    self.imageView.layer.borderWidth = 1;
    self.titleLabel.layer.borderWidth = 1;
    self.layer.borderWidth = 1;
    
    self.imageEdgeInsets = UIEdgeInsetsMake(0, 25, 0, 25);
    
    switch (_buttonTitleWithImageAlignment) {
        case UIButtonTitleWithImageAlignmentUp: //  居上
        {
            [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(self.mas_centerY).offset((textHeight + self.imgTextSpace) / 2);
                make.centerX.equalTo(self);
                make.size.mas_equalTo(CGSizeMake(imgWidth, imgHight));
            }];
            
            interval = -imgHight - _imgTextSpace;
            titleOffsetX = - imgWidth;
            titleOffsetY = interval;
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(titleOffsetY, titleOffsetX, 0, 0)];
            
//            self.titleLabel.frame = CGRectMake(0, 0, 50, 30);
//            self.imageView.frame = CGRectMake(0, 0, 50, 20);
//            [self setTitleEdgeInsets:UIEdgeInsetsMake(-90, -50, 0, 0)];
            
        } break;
        case UIButtonTitleWithImageAlignmentLeft:
        {   //  居左
            [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(self);
                make.centerX.equalTo(self.mas_centerX).offset((textWidth + self.imgTextSpace) / 2);
                make.size.mas_equalTo(CGSizeMake(imgWidth, imgHight));
            }];
            
            interval = self.imageView.frame.origin.x - _imgTextSpace - textWidth - imgWidth * 2;
            
            titleOffsetX = interval;
            titleOffsetY = 0;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(titleOffsetY, titleOffsetX, 0, 0)];
            
        } break;
        case UIButtonTitleWithImageAlignmentDown:
        {   //  居下
            [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(self.mas_centerY).offset(-(textHeight + self.imgTextSpace) / 2);
                make.centerX.equalTo(self);
                make.size.mas_equalTo(CGSizeMake(imgWidth, imgHight));
            }];
            
            interval = imgHight + _imgTextSpace;
            titleOffsetX = -imgWidth;
            titleOffsetY = interval;
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(titleOffsetY, titleOffsetX, 0, 0)];
            
        } break;
        case UIButtonTitleWithImageAlignmentRight:
        {
            
        } break;
        default:
            break;
    }
    
    
}













/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
