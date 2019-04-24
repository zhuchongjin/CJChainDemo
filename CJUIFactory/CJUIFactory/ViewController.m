//
//  ViewController.m
//  CJUIFactory
//
//  Created by mac on 2019/4/12.
//  Copyright © 2019年 zcj. All rights reserved.
//

#import "ViewController.h"
#import "CJHeaderFile.h"
#import "CJViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic,strong) CJLabel *lab;
@property (nonatomic,strong) CJButton *btn;
@property (nonatomic,strong) CJTextField *feild;
@property (nonatomic,strong) CJImageView *imgV;
@property (nonatomic,strong) CJView*cjView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.lab = CJLabel.labInit
    .labFrame(CGRectMake(20, 100, 100, 100))
    .labBorderColor([UIColor redColor])
    .labBorderWidth(0.3)
    .labNumLines(0)
    .labCornerRadius(6)
    .labText(@"我是lab")
    .labTextColor([UIColor cjBlackColor])
    .labAdjustsFontSizeToFitWidth(YES)
    .labBgColor([UIColor cjBackgroundColor])
    .labAlignment(NSTextAlignmentCenter)
    .labFont([UIFont cjTitleFontX:16]);
    [self.view addSubview:self.lab];
    
    self.btn = CJButton.btnInit
    .btnFrame(CGRectMake(self.lab.right + 10, self.lab.top, 100, 100))
    .btnBgColor([UIColor cjRandomColor])
    .btnText(@"按钮")
    .btnNormalTitleColor([UIColor cjRandomColor])
    .btnCornerRadius(8)
    .btnCornerWidth(3)
    .btnCornerColor([UIColor redColor])
    .btnTargetAction(self,@selector(bbbb))
    .btnNormalImgName(@"my1")
    .btnImgAlignment(CJImageAlignmentTop)
    .btnSpaceBetweenTitleAndImage(10);
//    self.btn.imageAlignment = CJImageAlignmentLeft;

    [self.view addSubview:self.btn];
    
    self.feild = CJTextField.tfInit
    .tfFrame(CGRectMake(self.lab.left, self.btn.bottom + 30, 150, 40))
    .tfplaceholderColorAndFont([UIColor redColor],[UIFont systemFontOfSize:12])
    .tfTextColor([UIColor blueColor])
    .tfDelegate(self)
    .tfLeftViewTitleAndFont(@"姓名",[UIFont systemFontOfSize:13])
    .tfSecureTextEntry(NO)
    .tfLeftView(@"my1");
    
    [self.view addSubview:self.feild];
    
    
    [self.feild setHeight:100];
    
    self.imgV = CJImageView.imgInit
    .imgVFrame(CGRectMake(200, 250, 100, 100))
    .imgVImageName(@"my6")
    .imgVContentMode(UIViewContentModeCenter)
    .imgVbgColor([UIColor redColor])
    .imgCornerRadius(50);
  
//    self.imgV.layer.cornerRadius = 5;
    [self.view addSubview:self.imgV];
    
    self.cjView = CJView.viewInit
    .viewFrame(CGRectMake(100, 300, 50, 50))
    .viewbgColor([UIColor lightGrayColor])
    .viewBorderWidthColor(3,[UIColor redColor]);
    [self.view addSubview:self.cjView];


    
    
}


-(void)bbbb{
    
    self.lab.labText(@"hahahah");
    
    CJViewController *vc = [[CJViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"0-0-0-0-00-0-909090808");
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"===== %@",textField.text);
}

@end
