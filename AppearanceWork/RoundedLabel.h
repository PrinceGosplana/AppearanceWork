#import <UIKit/UIKit.h>

@interface RoundedLabel : UILabel

@property (nonatomic, assign) CGFloat cornerRadis UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor * rectColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor * txtColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor * brdrColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIFont * fntLabel UI_APPEARANCE_SELECTOR;
@property (nonatomic) NSTextAlignment alignment UI_APPEARANCE_SELECTOR;

@end
