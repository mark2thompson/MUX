//
//  PastRoutsViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "PastRoutsViewController.h"
#import "NewRouteViewController.h"
#import "IslandsViewController.h"
#import "SettingsViewController.h"
#import "HomeViewController.h"

#import "GradientView.h"
#import "MKMapView+ZoomLevel.h"

@implementation PastRoutsViewController
@synthesize tableView1Data;


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
  
  MKMapView *mapView1 = [[MKMapView alloc] initWithFrame:CGRectMake(0, 44, 320, 367)];
  [contentView addSubview:mapView1];
  mapView1.alpha = 1.0;
  mapView1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  mapView1.mapType = MKMapTypeHybrid;
  [mapView1 setCenterCoordinate:CLLocationCoordinate2DMake(-0.9999999999999887, 28.300000000000068) zoomLevel:6 animated:NO];
  [mapView1 release];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton1;
  // ----------------------------;
  
  UIButton *roundedRectButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton1.frame = CGRectMake(163, 400, 147, 50);
  [contentView addSubview:roundedRectButton1];
  roundedRectButton1.alpha = 1.0;
  roundedRectButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton1 setTitle:@"New Route" forState:UIControlStateNormal];
  [roundedRectButton1 setTitleColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton1.titleLabel.font = [UIFont fontWithName:@".HelveticaNeueUI-Bold" size:15.0];
  [roundedRectButton1 addTarget:self action:@selector(didTap_roundedRectButton1:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  // ----------------------------;
  // UITableView -> tableView1;
  // ----------------------------;
  
  UITableView *tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 232, 320, 228) style:UITableViewStyleGrouped];
  tableView1.tag = 1;
  tableView1.delegate = (id<UITableViewDelegate>)self;
  tableView1.dataSource = (id<UITableViewDataSource>)self;
  self.tableView1Data = [NSMutableArray array];
  [contentView addSubview:tableView1];
  tableView1.alpha = 1.0;
  tableView1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  tableView1.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
  tableView1.separatorColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.18];
  tableView1.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"PastRoutsViewController_Image_1.png"]];
  [tableView1 release];
  
  
  // ----------------------------;
  // Table View Section -> tableViewSection1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewSection1Data = [NSMutableDictionary dictionary];
  [tableViewSection1Data setObject:@"" forKey:@"headerText"];
  [tableViewSection1Data setObject:@"" forKey:@"footerText"];
  [tableViewSection1Data setObject:[NSMutableArray array] forKey:@"cells"];
  [self.tableView1Data addObject:tableViewSection1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell1Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell1 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell1.textLabel.text = @"1000 islands";
  tableViewCell1.detailTextLabel.text = @"Subtitle";
  tableViewCell1.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell1Data setObject:tableViewCell1 forKey:@"cell"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell1Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell1Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell1Data];
  [tableViewCell1Data setObject:@"didTap_tableViewCell1:" forKey:@"actionSelector"];
  
  // ----------------------------;
  // Cell -> tableViewCell2;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell2Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell2 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell2.textLabel.text = @"Haul over canal";
  tableViewCell2.detailTextLabel.text = @"Subtitle";
  tableViewCell2.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell2Data setObject:tableViewCell2 forKey:@"cell"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell2Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell2Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell2Data];
  [tableViewCell2Data setObject:@"didTap_tableViewCell2:" forKey:@"actionSelector"];
  
  // ----------------------------;
  // Cell -> tableViewCell3;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell3Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell3 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell3.textLabel.text = @"Eddy creek";
  tableViewCell3.detailTextLabel.text = @"Subtitle";
  tableViewCell3.accessoryType = UITableViewCellAccessoryNone;
  [tableViewCell3Data setObject:tableViewCell3 forKey:@"cell"];
  [tableViewCell3Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell3Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell3Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell3Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell3Data];
  [tableViewCell3Data setObject:@"didTap_tableViewCell3:" forKey:@"actionSelector"];
  
  // ----------------------------;
  // UIButton -> imageButton2;
  // ----------------------------;
  
  UIButton *imageButton2 = [UIButton buttonWithType:UIButtonTypeCustom];
  imageButton2.frame = CGRectMake(276, 0, 44, 44);
  [contentView addSubview:imageButton2];
  imageButton2.alpha = 1.0;
  imageButton2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [imageButton2 setTitle:@"" forState:UIControlStateNormal];
  [imageButton2 setImage:[UIImage imageNamed:@"PastRoutsViewController_Image_2.png"] forState:UIControlStateNormal];
  imageButton2.enabled = YES;
  [imageButton2 setTitleColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
  [imageButton2 addTarget:self action:@selector(didTap_imageButton2:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  // ----------------------------;
  // UIButton -> roundedRectButton3;
  // ----------------------------;
  
  UIButton *roundedRectButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  roundedRectButton3.frame = CGRectMake(10, 400, 147, 50);
  [contentView addSubview:roundedRectButton3];
  roundedRectButton3.alpha = 1.0;
  roundedRectButton3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [roundedRectButton3 setTitle:@"Close" forState:UIControlStateNormal];
  [roundedRectButton3 setTitleColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0] forState:UIControlStateNormal];
  roundedRectButton3.titleLabel.font = [UIFont fontWithName:@".HelveticaNeueUI-Bold" size:15.0];
  [roundedRectButton3 addTarget:self action:@selector(didTap_roundedRectButton3:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  self.tableView1Data = nil;
  [super viewDidUnload];
}

- (void)dealloc {
  self.tableView1Data = nil;
  [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}

// ----------------
// Table View
// ----------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  if (tableView.tag == 1) {;
    return self.tableView1Data.count;
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [[sectionData objectForKey:@"cells"] count];
  };
  
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [cellData objectForKey:@"cell"];
  };
  
  return [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"headerText"];
  };
  
  return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"footerText"];
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"height"] floatValue];
  };
  
  return tableView.rowHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [sectionData objectForKey:@"headerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [sectionData objectForKey:@"footerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [[sectionData objectForKey:@"customHeaderViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"headerText"] isEqualToString:@""]) {;
        return 32;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [[sectionData objectForKey:@"customFooterViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"footerText"] isEqualToString:@""]) {;
        return 32;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"indentationLevel"] integerValue];
  };
  
  return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    NSString *actionSelector = [cellData objectForKey:@"actionSelector"];
    if (actionSelector) {;
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        [self performSelector:NSSelectorFromString(actionSelector) withObject:cell];
    };
  };
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
  NewRouteViewController *controller = [[NewRouteViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}
- (void)didTap_tableViewCell1:(UIView *)cell {
  IslandsViewController *controller = [[IslandsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}
- (void)didTap_tableViewCell2:(UIView *)cell {
  IslandsViewController *controller = [[IslandsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}
- (void)didTap_tableViewCell3:(UIView *)cell {
  IslandsViewController *controller = [[IslandsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}
- (void)didTap_imageButton2:(id)sender forEvent:(UIEvent *)event {
  SettingsViewController *controller = [[SettingsViewController alloc] init];
  [self.navigationController pushViewController:controller animated:YES];
  [controller release];
}
- (void)didTap_roundedRectButton3:(id)sender forEvent:(UIEvent *)event {
  HomeViewController *controller = [[HomeViewController alloc] init];
  [self.navigationController pushViewController:controller animated:NO];
  [controller release];
}




@end