//
//  ListRefreshViewController.m
//  JXPagerViewExample-OC
//
//  Created by jiaxin on 2018/9/12.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "ListRefreshViewController.h"
#import "JXPagerListRefreshView.h"
#import "JXCategoryView.h"

@interface ListRefreshViewController ()

@end

@implementation ListRefreshViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.isNeedHeader = YES;
    self.isNeedFooter = NO;
}

- (JXPagerView *)preferredPagingView {
    return [[JXPagerListRefreshView alloc] initWithDelegate:self];
}

#pragma mark - JXCategoryViewDelegate

- (void)categoryView:(JXCategoryBaseView *)categoryView didSelectedItemAtIndex:(NSInteger)index {
    self.navigationController.interactivePopGestureRecognizer.enabled = (index == 0);
}


@end
