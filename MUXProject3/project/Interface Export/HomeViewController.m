//
//  HomeViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "HomeViewController.h"
#import "PastRoutsViewController.h"
#import "SettingsViewController.h"
#import "NewRouteViewController.h"

#import "GradientView.h"
#import "MKMapView+ZoomLevel.h"

@implementation HomeViewController


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  // ----------------------------;
  // UINavigationBar -> navigationBar1;
  // ----------------------------;
  
  UINavigationBar *navigationBar1 = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  navigationBar1.delegate = (id<UINavigationBarDelegate>)self;
  UINavigationItem *navigationBar1BackItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  UINavigationItem *navigationBar1TopItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  NSArray *navigationBar1Items = [NSArray arrayWithObjects:navigationBar1BackItem, navigationBar1TopItem, nil];
  [navigationBar1 setItems:navigationBar1Items animated:NO];
  [contentView addSubview:navigationBar1];
  navigationBar1.alpha = 1.0;
  navigationBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
  navigationBar1.barStyle = UIBarStyleBlack;
  navigationBar1.tintColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  navigationBar1.translucent = YES;
  navigationBar1.topItem.title = @"Scout";
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  navigationBar1.topItem.hidesBackButton = YES;
  [navigationBar1 release];
  
  
  // ----------------------------;
  // MKMapView -> mapView1;
  // ----------------------------;
  
  MKMapView *mapView1 = [[MKMapView alloc] initWithFrame:CGRectMake(0, 44, 320, 416)];
  [contentView addSubview:mapView1];
  mapView1.alpha = 1.0;
  mapView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  mapView1.mapType = MKMapTypeHybrid;
  [mapView1 setCenterCoordinate:CLLocationCoordinate2DMake(37.33181999999998, -122.03117999999999) zoomLevel:6 animated:NO];
  [mapView1 release];
  
  
  // ----------------------------;
  // UIButton -> imageButton2;
  // ----------------------------;
  
  UIButton *imageButton2 = [UIButton buttonWithType:UIButtonTypeCustom];
  imageButton2.frame = CGRectMake(276, 0, 44, 44);
  [contentView addSubview:imageButton2];
  imageButton2.alpha = 1.0;
  imageButton2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [imageButton2 setTitle:@"" forState:UIControlStateNormal];
  [imageButton2 setImage:[UIImage imageNamed:@"HomeViewController_Image_1.png"] forState:UIControlStateNormal];
  imageButton2.enabled = YES;
  [imageButton2 setTitleColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
  [imageButton2 addTarget:self action:@selector(didTap_imageButton2:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
    // ----------------------------;
    // UIButton -> roundedRectButton1;
    // ----------------------------;
    
    UIButton *roundedRectButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    roundedRectButton1.frame = CGRectMake(10, 400, 147, 50);
    [contentView addSubview:roundedRectButton1];
    roundedRectButton1.alpha = 1.0;
    roundedRectButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
    [roundedRectButton1 setTitle:@"Past Routes" forState:UIControlStateNormal];
    [roundedRectButton1 setTitleColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
    roundedRectButton1.titleLabel.font = [UIFont fontWithName:@".HelveticaNeueUI-Bold" size:15.0];
    [roundedRectButton1 addTarget:self action:@selector(didTap_roundedRectButton1:forEvent:) forControlEvents:UIControlEventTouchUpInside];
    
  
  // ----------------------------;
  // UIButton -> roundedRectButton3;
  // ----------------------------;
  
  UIButton *roundedRectButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton3.frame = CGRectMake(163, 400, 147, 50);
  [contentView addSubview:roundedRectButton3];
  roundedRectButton3.alpha = 1.0;
  roundedRectButton3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton3 setTitle:@"New Route" forState:UIControlStateNormal];
  [roundedRectButton3 setTitleColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton3.titleLabel.font = [UIFont fontWithName:@".HelveticaNeueUI-Bold" size:15.0];
  [roundedRectButton3 addTarget:self action:@selector(didTap_roundedRectButton3:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 44, 320, 39)];
  [contentView addSubview:label1];
  label1.alpha = 0.6352941393852234;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Current Weather conditions";
  label1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label1.textAlignment = UITextAlignmentLeft;
  label1.shadowOffset = CGSizeMake(0, -1);
  label1.font = [UIFont fontWithName:@".HelveticaNeueUI" size:17.0];
  [label1 release];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)dealloc {
  [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}


// ----------------
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
  return NO;
}

// ----------------
// Action
// ----------------

- (void)didTap_roundedRectButton1:(id)sender forEvent:(UIEvent *)event {
  PastRoutsViewController *controller = [[PastRoutsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}
- (void)didTap_imageButton2:(id)sender forEvent:(UIEvent *)event {
  SettingsViewController *controller = [[SettingsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:YES];
  [controller release];
}
- (void)didTap_roundedRectButton3:(id)sender forEvent:(UIEvent *)event {
  NewRouteViewController *controller = [[NewRouteViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}




@end