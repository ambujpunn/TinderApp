//
//  CardsViewController.m
//  Tinder
//
//  Created by Ambuj Punn on 9/18/15.
//  Copyright (c) 2015 Ambuj Punn. All rights reserved.
//

#import "CardsViewController.h"
#import "ProfileViewController.h"

@interface CardsViewController ()
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *imageGesture;
@property (strong, nonatomic) IBOutlet UIView *cardView;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property CGPoint cardInitialCenter;
@property UIImageView *newlyCreatedCard;


@end

@implementation CardsViewController
- (IBAction)imageTapped:(UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"profile" sender:self];
}

- (IBAction)dragged:(UIPanGestureRecognizer *)sender {
    CGPoint cardOriginalCenter = [sender locationInView:self.view];
    //CGPoint cardOriginalCenter = self.cardInitialCenter;
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.profileImage.center = cardOriginalCenter;
        
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        self.profileImage.center = cardOriginalCenter;
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        // note remove image
        //self.profileImage.center = self.cardInitialCenter;
    }
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cardInitialCenter = self.profileImage.center;
    // Do any additional setup after loading the view.
    //[self.profileImage addGestureRecognizer:self.imageGesture ];
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
