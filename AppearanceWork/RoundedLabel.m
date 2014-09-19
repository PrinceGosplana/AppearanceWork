#import "RoundedLabel.h"

#define kiOS7Blue [UIColor colorWithRed:62/255 green:109/255 blue:1 alpha:1]

@implementation RoundedLabel {
    BOOL _isInitializing;
}

- (id)initWithFrame:(CGRect)frame
{
    _isInitializing = YES;
    self = [super initWithFrame:frame];
    if (self) {
        _rectColor = kiOS7Blue;
        _cornerRadis = 10.f;
        _txtColor = [UIColor blueColor];
        _brdrColor = [UIColor blackColor];
        _fntLabel = [UIFont fontWithName:@"AmericanTypewriter-Bold" size:22];
        _alignment = NSTextAlignmentCenter;
        self.layer.masksToBounds = YES;
        self.layer.borderColor = kiOS7Blue.CGColor;
        self.layer.borderWidth = 1;
        self.layer.cornerRadius = frame.size.height/2;
        self.textAlignment = NSTextAlignmentCenter;
    }
    _isInitializing = NO;
    return self;
}

- (void) setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:kiOS7Blue];
    if (!_isInitializing) {
        _rectColor = backgroundColor;
    }
}

- (void)setTextColor:(UIColor *)textColor
{
    [super setTextColor:[UIColor whiteColor]];
    if (!_isInitializing) {
        _txtColor = textColor;
    }
}

- (void)setFntLabel:(UIFont *)fntLabel
{
        _fntLabel = fntLabel;
        self.font = _fntLabel;
}


- (void)setBrdrColor:(UIColor *)brdrColor
{
    _brdrColor = brdrColor;
    self.layer.borderColor = _brdrColor.CGColor;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
    [super setTextAlignment:NSTextAlignmentCenter];
    if (!_isInitializing) {
        _alignment = textAlignment;
    }
}
@end
