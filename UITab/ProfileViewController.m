//
//  ProfileViewController.m
//  UITab
//
//  Created by Utsav Kumar on 28/05/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "ProfileViewController.h"
#import "UIImageView+WebCache.h"
#import "AFHTTPSessionManager.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize  = CGSizeMake(320, 2000);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.title = @"Profile";
    self.tabBarItem.image = [UIImage imageNamed:@"profile30"];
    
    
    NSURL *baseURL = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com"];
    NSString *path = @"posts/1";
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    
    [manager GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject)
     {
         // Success
         NSLog(@"Success: %@", responseObject);
     }failure:^(NSURLSessionDataTask *task, NSError *error)
     {
         // Failure
         NSLog(@"Failure: %@", error);
     }];
    
    

    
    

    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *vlyop = [[UIImageView alloc] init];
//    [vlyop setContentMode:UIViewContentModeScaleAspectFit];
    vlyop.frame = CGRectMake(20, 20, 100 ,114);
    [vlyop sd_setImageWithURL:[NSURL URLWithString:@"https://opensource.google.com/assets/static/images/home/blog/blog_image_1.jpg"]
          placeholderImage:[UIImage imageNamed:@"exciting3030.png"]];
    [self.scrollView addSubview:vlyop];
    
    UILabel *nameLabel  = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
    nameLabel.text = @"Name: Excited";
    [self.scrollView addSubview:nameLabel];
    
    
    UILabel *cityLabel  = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
    cityLabel.text = @"From: Mars";
    [self.scrollView addSubview:cityLabel];
    
    
    UITextView *biography  = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 180)];
    biography.font  = [UIFont fontWithName:@"Helvetica" size:15];
    biography.text = @"It is fun here in Mars.I have my alien mask from where i convert nitrogen to oxygen.";
    biography.editable = NO;
    [self.scrollView addSubview:biography];
    
    
    UILabel *memberSinceLabel  = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, 280, 40)];
    memberSinceLabel.text = @"I am here from start of time.";
    [self.scrollView addSubview:memberSinceLabel];
    
    [self.view addSubview:self.scrollView];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
