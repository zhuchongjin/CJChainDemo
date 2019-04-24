//
//  CJViewController.m
//  AAA
//
//  Created by zcj on 2019/4/24.
//  Copyright © 2017年 zcj. All rights reserved.
//

#import "CJViewController.h"
#import "CJHeaderFile.h"

#define topHeight self.navigationController.navigationBar.frame.size.height+[[UIApplication sharedApplication] statusBarFrame].size.height
@interface CJViewController ()<
UITextFieldDelegate
>

/// 标题
@property (nonatomic, strong) UILabel *labTitle;

/// 保存
@property (nonatomic, strong) UIButton *btnSave;

/// 输入框
@property (nonatomic, strong) UITextField *tfInPut;

@end

@implementation CJViewController

#pragma mark - # Life Cycle
- (void)loadView {
	[super loadView];
	[self.view addSubview:self.labTitle];
	[self.view addSubview:self.btnSave];
    [self.view addSubview:self.tfInPut];

   
	[self p_addMasonry];
}

- (void)viewDidLoad {
	[super viewDidLoad];
    self.title = @"快速创建";
}

#pragma mark - # Event Response
- (void)btnSaveTouchUpInside:(UIButton *)sender {
    NSLog(@"快速创建");
}

#pragma mark - # Private Methods
- (void)p_addMasonry {
	[self.labTitle mas_makeConstraints:^(MASConstraintMaker *make) {
		make.left.mas_equalTo(10);
		make.right.mas_equalTo(-10);
		make.top.mas_equalTo(topHeight + 10);
		make.height.mas_equalTo(50);
	}];

    [self.btnSave mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.labTitle);
        make.top.mas_equalTo(self.labTitle.mas_bottom).mas_offset(10);
        make.width.mas_equalTo(self.labTitle).dividedBy(2);
        make.height.mas_equalTo(self.labTitle);
    }];
    
    [self.tfInPut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.btnSave.mas_right).mas_offset(10);
        make.top.mas_equalTo(self.btnSave);
        make.width.mas_equalTo(self.btnSave).mas_offset(-20);
        make.height.mas_equalTo(self.btnSave);
    }];

}

#pragma mark - # Getter
- (UILabel *)labTitle {
	if (!_labTitle) {
		_labTitle = [[UILabel alloc] init];
		[_labTitle.layer setBorderColor:[UIColor redColor].CGColor];
		[_labTitle setBackgroundColor:[UIColor cjRedColor]];
		[_labTitle setText:@"标题"];
		[_labTitle setFont:[UIFont cjTitleFont14]];
		[_labTitle setTextColor:[UIColor cjMainTextColor]];
		[_labTitle setTextAlignment:NSTextAlignmentCenter];
	}
	return _labTitle;
}

- (UIButton *)btnSave {
    if (!_btnSave) {
        _btnSave = [[UIButton alloc] init];
        [_btnSave.layer setCornerRadius:5];
        [_btnSave.layer setBorderWidth:1];
        [_btnSave.layer setBorderColor:[UIColor cjRedColor].CGColor];
        [_btnSave setBackgroundColor:[UIColor cjGrayColor]];
        [_btnSave addTarget:self action:@selector(btnSaveTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
        [_btnSave setTitle:@"保存按钮" forState:UIControlStateNormal];
        [_btnSave setTitleColor:[UIColor cjWhiteColor] forState:UIControlStateNormal];
        [_btnSave setTitleColor:[UIColor cjRedColor] forState:UIControlStateSelected];
    }
    return _btnSave;
}

//- (UITextField *)tfInPut {
//    if (!_tfInPut) {
//        _tfInPut = [[UITextField alloc] init];
//        [_tfInPut setPlaceholder:@"请输入内容"];
//        [_tfInPut setFont:[UIFont cjTitleFont15]];
//        [_tfInPut setTextAlignment:NSTextAlignmentCenter];
//        [_tfInPut setBorderStyle:UITextBorderStyleRoundedRect];
//        [_tfInPut setClearButtonMode:UITextFieldViewModeWhileEditing];
//        [_tfInPut setDelegate:self];
//    }
//    return _tfInPut;
//}


- (UITextField *)tfInPut{
    
    if (!_tfInPut) {
//        _tfInPut = UITextField.init
//        .tfFrame(CGRectMake(_btnSave.right, _btnSave.top, _btnSave.width - 20, _btnSave.height))
//        .tfplaceholder(@"eruigeyuigye")
//        .tfFont([UIFont cjTitleFont15])
//        .tfTextAlignment(NSTextAlignmentCenter)
//        .tfclearButtonMode(UITextFieldViewModeWhileEditing)
//        .tfborderStyle(UITextBorderStyleRoundedRect)
//        .tfDelegate(self);
    }
    
    return _tfInPut;
}

@end
