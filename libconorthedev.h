@interface CTDColorUtils : NSObject
- (UIColor *)getAverageColorFrom:(UIImage *)image;
- (UIColor *)readableForegroundColorForBackgroundColor:
    (UIColor *)backgroundColor;
@end