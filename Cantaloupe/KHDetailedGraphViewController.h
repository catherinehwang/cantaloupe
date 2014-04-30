//
//  KHDetailedGraphViewController.h
//  Cantaloupe
//
//  Created by Kevin Hwang on 4/29/14.
//  Copyright (c) 2014 Kevin Hwang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JBBarChartView.h"

@interface KHDetailedGraphViewController : UIViewController<JBBarChartViewDataSource, JBBarChartViewDelegate>

- (id)initWithData:(NSArray *)graphData;

@end
