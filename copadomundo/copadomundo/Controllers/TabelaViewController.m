//
//  TabelaViewController.m
//  copadomundo
//
//  Created by Felipe on 27/04/14.
//  Copyright (c) 2014 luizsoares. All rights reserved.
//

#import "TabelaViewController.h"
#import "TabelaTableViewCell.h"
#import "MMPickerView.h"

@interface TabelaViewController ()

@end

@implementation TabelaViewController

#pragma mark - View Lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setColors];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - user settings

- (void)setColors {
    NSDictionary *navbarTitleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                               [UIColor colorWithRed:0 green:128.0/255.0 blue:0 alpha:1.0],UITextAttributeTextColor,
                                               [UIColor whiteColor], UITextAttributeTextShadowColor,
                                               [NSValue valueWithUIOffset:UIOffsetMake(0, 0)], UITextAttributeTextShadowOffset, nil];
    
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:0 green:0 blue:205.0/255.0 alpha:1.0]]; //settings color
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:255.0/255.0 green:215.0/255.0 blue:0 alpha:1.0]]; //bar color
    [self.navigationController.navigationBar setTitleTextAttributes:navbarTitleTextAttributes]; //title color
}

#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TabelaTableViewCell";
    TabelaTableViewCell *cell = (TabelaTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[TabelaTableViewCell alloc] init];
    }
    [cell.lblNome setText:@"Brasil"];
    [cell.lblJogos setText:@"0"];
    [cell.lblPontos setText:@"0"];
    [cell.lblSaldo setText:@"0"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - button

- (IBAction)btnSettingsTouched:(id)sender {
    
}

- (IBAction)btnGroupsTouched:(id)sender {
    NSArray *groupsArray = @[@"A", @"B", @"C", @"D", @"E", @"G", @"H"];
    [MMPickerView showPickerViewInView:self.view withStrings:groupsArray
                           withOptions:nil
                      actionCompletion:^(NSString *actionCompletion) {
                          NSLog(@"update table");
                          [[[UIAlertView alloc] initWithTitle:@"Copa do Mundo" message:@"Teste" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
                      }
                            completion:^(NSString *selectedString) {
                                [self.btnGroups setTitle:[NSString stringWithFormat:@"Grupo %@", selectedString] forState:UIControlStateNormal];
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
