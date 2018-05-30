//
//  FavouritesViewController.m
//  UITab
//
//  Created by Utsav Kumar on 28/05/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "FavouritesViewController.h"

@interface FavouritesViewController ()

@end

@implementation FavouritesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Favourites";
    UIButton *vlyop = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [vlyop setImage:[UIImage imageNamed:@"exciting3030"] forState:UIControlStateNormal];
    [vlyop setImage:[UIImage imageNamed:@"exciting3030"] forState:UIControlStateHighlighted];
    [vlyop setContentMode:UIViewContentModeScaleAspectFit];
    [vlyop setFrame: CGRectMake(60, 100, 100 ,114)];
    [self.view addSubview:vlyop];
    
    [vlyop addTarget:self action:@selector(showZoomed:)
               forControlEvents:UIControlEventTouchUpInside];

    
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showZoomed:(UIButton *)sender
{
    UIViewController *tryiosImageController  =[[UIViewController alloc]init];
    tryiosImageController.view.frame = self.view.frame;
    tryiosImageController.title = @"Logo";
    
    tryiosImageController.view.backgroundColor = [UIColor clearColor];
    
    UIImageView *tryiosImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tryios.gif"]];
    
    [tryiosImage setContentMode:UIViewContentModeScaleAspectFit];
    
    tryiosImage.frame = tryiosImageController.view.frame;
    
    
    [self.navigationController pushViewController:tryiosImageController animated:YES];
    
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
