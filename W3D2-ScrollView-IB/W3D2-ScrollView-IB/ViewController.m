//
//  ViewController.m
//  W3D2-ScrollView-IB
//
//  Created by Tim Mitra on 6/22/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
}

- (void)setScrollView:(UIScrollView *)scrollView
{
  self.myScrollView = scrollView;
  self.myScrollView.minimumZoomScale = 0.2;
  self.myScrollView.maximumZoomScale = 2.0;
  self.myScrollView.delegate = self;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
  return self.myImageView;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
