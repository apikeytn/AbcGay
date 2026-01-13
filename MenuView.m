#import "MenuView.h"

@implementation MenuView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Thiết kế Menu
        self.backgroundColor = [UIColor colorWithRed:0.05 green:0.05 blue:0.05 alpha:0.9];
        self.layer.cornerRadius = 20;
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = [UIColor greenColor].CGColor;
        
        // Quan trọng: Tự động Full màn hình khi xoay ngang
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, frame.size.width, 40)];
        title.text = @"TRONG QUOC MENU VIP";
        title.textColor = [UIColor whiteColor];
        title.textAlignment = NSTextAlignmentCenter;
        title.font = [UIFont boldSystemFontOfSize:18];
        title.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [self addSubview:title];
        
        [self setupButtons];
    }
    return self;
}

- (void)setupButtons {
    // Bạn có thể thêm các nút Switch/Slider ở đây như các phiên bản trước
}

@end
