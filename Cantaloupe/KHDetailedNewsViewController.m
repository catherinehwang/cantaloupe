//
//  KHDetailedNewsViewController.m
//  Cantaloupe
//
//  Created by Kevin Hwang on 6/12/14.
//  Copyright (c) 2014 Kevin Hwang. All rights reserved.
//

#import "KHDetailedNewsViewController.h"
#import "Cantaloupe-Swift.h"

@interface KHDetailedNewsViewController ()

@property (nonatomic, strong) NewsView *newsView;
@property (nonatomic, strong) NSDictionary *news;

@end

@implementation KHDetailedNewsViewController

- (id)initWithNews:(NSDictionary *)news {
    if (self = [super init]) {
        self.news = news;
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NewsView *newsView = [[NewsView alloc] initWithFrame:[UIScreen mainScreen].bounds news:self.news];
    self.view = newsView;
    self.newsView = newsView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = [self.news objectForKey:@"title"];
}

@end