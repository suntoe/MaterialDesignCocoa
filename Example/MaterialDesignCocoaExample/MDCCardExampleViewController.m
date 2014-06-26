//
//  MDCCardExampleViewController.m
//  MaterialDesignCocoaExample
//

#import "MDCCardExampleViewController.h"
#import <MaterialDesignCocoa/MDCCardTableViewCell.h>

@interface MDCCardExampleViewController ()

@end

@implementation MDCCardExampleViewController

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.tableView.backgroundColor = [UIColor colorWithWhite:0.91 alpha:1.0];
  
  [self.tableView registerClass:[MDCCardTableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 0) {
    return 128.0;
  } else {
    return 100.0;
  }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  if (section == 0) {
    return 1;
  } else {
    return 10;
  }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  MDCCardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  [cell setBackgroundColor:self.tableView.backgroundColor];
  [cell.textLabel setText:@"test"];
  return cell;
}

@end