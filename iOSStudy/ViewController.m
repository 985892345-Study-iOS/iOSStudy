//
//  ViewController.m
//  iOSStudy
//
//  Created by 郭祥瑞 on 2023/8/8.
//

// https://www.bilibili.com/video/BV1ce4y1272i?p=5&vd_source=6f25bca34bee883261bca409c52a066e

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong) UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置 View 背景颜色
    self.view.backgroundColor = UIColor.blueColor;
    
    // 文本框
    UILabel *label = [[UILabel alloc] init];
    // x, y, width, height
    label.frame = CGRectMake(146, 400, 200, 30); // iOS 仍然以向右为 x 轴，向下为 y 轴
    label.text = @"Hello World!";
    label.textColor = UIColor.redColor;
    label.font = [UIFont boldSystemFontOfSize:20];
    [self.view addSubview:label];
    
    // 添加懒加载的 Label
    [self.view addSubview:self.label2];
}

#pragma mark - 懒加载

- (UILabel *)label2 {
    if (!_label2) {
        _label2 = [[UILabel alloc] initWithFrame:CGRectMake(90, 450, 220, 60)];
        _label2.text = @"Hello World!";
        _label2.font = [UIFont boldSystemFontOfSize:40];
        _label2.backgroundColor = UIColor.yellowColor;
    }
    return _label2;
}

@end
