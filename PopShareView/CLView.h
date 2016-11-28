//
//  CLView.h
//  弹出视图
//

#import <UIKit/UIKit.h>

typedef  void (^RRBlock)(NSInteger index,UILabel *sheetLab,id ShareType);


@interface CLView : UIView


/*
 *  为actionsheet上小视图
 *  按照 高度120（90（按钮60*60）+30）来设计
 */

@property (nonatomic,strong) UIButton *sheetBtn;

@property (nonatomic,strong) UILabel *sheetLab;

///要分享到的平台
@property (nonatomic) id  shareType;



@property (nonatomic,copy) RRBlock block;


- (void)selectedIndex:(RRBlock)block;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com
