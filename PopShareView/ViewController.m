//
//  ViewController.m
//  弹出视图
//


#import "ViewController.h"
//#import "UIControl+Blocks.h"

#import "CLAnimationView.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"显示" forState:UIControlStateNormal];
    [btn sizeToFit];
    
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    CGRect frame = CGRectMake(0, 10, SCREEN_WIDTH, SCREEN_HEIGHT);
    btn.center = CGPointMake(frame.size.width/2, 60);
}

-(void)btnClicked:(UIButton *)btn{

    //@"qq",@"zone",@"wechat",@"pyq",@"sms"
    //@"QQ",@"空间",@"微信",@"朋友圈",@"短信"
    
    NSMutableArray *titarray = [NSMutableArray arrayWithObjects:@"QQ",@"空间",@"微信",@"朋友圈",@"短信", nil];
    
    NSMutableArray *picarray = [NSMutableArray arrayWithObjects:@"qq",@"zone",@"wechat",@"pyq",@"sms", nil];
    
     CLAnimationView *animationView = [[CLAnimationView alloc]initWithTitleArray:titarray picarray:picarray];
    [animationView selectedWithIndex:^(NSInteger index,id shareType) {
        NSLog(@"你选择的index ＝＝ %ld",(long)index);
        NSLog(@"要分享到的平台");
    }];
    
    [animationView CLBtnBlock:^(UIButton *btn) {
        NSLog(@"你点了选择/取消按钮");
    }];
    
    [animationView show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
