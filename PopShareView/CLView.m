//
//  CLView.m
//  弹出视图
//

#import "CLView.h"
//#import "UMSocial.h"

@implementation CLView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.sheetBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        self.sheetBtn.clipsToBounds = YES;
        self.sheetBtn.layer.cornerRadius = 25;
        [self.sheetBtn setCenter:CGPointMake(self.frame.size.width / 2, 30)];
        
        self.sheetLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 60, self.frame.size.width, 20)];
        [self addSubview:self.sheetLab];
        [self.sheetBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.sheetLab setTextAlignment:NSTextAlignmentCenter];
        self.sheetLab.font = [UIFont systemFontOfSize:14];
        [self addSubview:self.sheetBtn];
        
    }
    return self;
}


- (void)btnClick:(UIButton *)btn
{
    
    [self judgeShareType:self.sheetLab.text]; //在响应按钮的点击之前判断一下要分享到的平台
    self.block(self.sheetBtn.tag,self.sheetLab,self.shareType);
}

- (void)selectedIndex:(RRBlock)block
{
    self.block = block;
}

//根据sheetLab的标题判断点击这个按钮需要分享到的平台
- (void)judgeShareType:(NSString *)str
{
    if ([str isEqualToString:@"QQ"] ) {
//        self.shareType =  UMShareToQQ ;
    } else if ([str isEqualToString:@"空间"]) {
//        self.shareType =  UMShareToQzone;
    } else if ([str isEqualToString:@"微信"]) {
//        self.shareType = UMShareToWechatSession;
    } else if ([str isEqualToString:@"朋友圈"]) {
//        self.shareType = UMShareToWechatTimeline;
    } else {
//        self.shareType = UMShareToSms;
    }
}




@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com
