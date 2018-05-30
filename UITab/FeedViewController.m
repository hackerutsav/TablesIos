//
//  FeedViewController.m
//  UITab
//
//  Created by Utsav Kumar on 28/05/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "FeedViewController.h"
#import "FavouritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Feed";
//    self.tabBarItem.image = [UIImage imageNamed:@"feed30"];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    UIButton *favouritesButton  = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favouritesButton.frame = CGRectMake(60,100,200,44);
    [favouritesButton setTitle:@"View Favourites" forState:UIControlStateNormal];
    [self.view addSubview:favouritesButton];
    [favouritesButton addTarget:self action:@selector(showFavourites:)
               forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showFavourites:(UIButton *)sender
{
    FavouritesViewController *favouritesViewController  = [[FavouritesViewController alloc]init];
    [self.navigationController pushViewController:favouritesViewController animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
