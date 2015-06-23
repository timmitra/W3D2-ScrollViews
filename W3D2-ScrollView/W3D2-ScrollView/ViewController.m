//
//  ViewController.m
//  W3D2-ScrollView
//
//  Created by Tim Mitra on 6/22/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
  
// make a property so we can use it to zoom.
@property (nonatomic) UIImageView *myImageView;




@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  //1
  // size of the screen
  CGRect screenRect = [self.view bounds];

  // add a scrollView to view
  UIScrollView *basicScrollView = [[UIScrollView alloc] initWithFrame:screenRect];
  
  basicScrollView.backgroundColor = [UIColor redColor];
  
  [self.view addSubview:basicScrollView];
  
  // we need someting to scroll?
  //UIImageView *myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_6188"]];
  self.myImageView = [[UIImageView alloc] initWithFrame:screenRect];
  UIImage *myImage = [UIImage imageNamed:@"IMG_6188"];
  self.myImageView.frame = CGRectMake(0, 0, screenRect.size.width, screenRect.size.height);
  self.myImageView.image = myImage;
  self.myImageView.contentMode = UIViewContentModeScaleAspectFit;
  [basicScrollView addSubview:self.myImageView];
  
  // to add scrolling enabled
  CGRect scrollableRect = screenRect;
  scrollableRect.size.width *= 5.0;
  scrollableRect.size.height *= 5.0;
  UIView *zoomingView = [[UIView alloc] initWithFrame:scrollableRect];
  
  [basicScrollView addSubview:zoomingView];
  [basicScrollView setContentSize:scrollableRect.size];
  
  
  // make it go zoom
  basicScrollView.maximumZoomScale = 5.0;
  basicScrollView.minimumZoomScale = 0.2;
  
  // to zoom we need
  basicScrollView.delegate = self; // warning unless we adopt the protocol
//  // implement viewForZoomingInScrollView
  
}

// after implementing the viewForZoomingInScrollView we return our imageView as the zoombale view.
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
  return self.myImageView;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
