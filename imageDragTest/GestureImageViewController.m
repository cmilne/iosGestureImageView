//
//  ViewController.m
//  imageDragTest
//
//  Created by Chris Milne on 12/2/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "GestureImageViewController.h"

@interface GestureImageViewController ()
    @property CGPoint dragCenterPointOffset;
@end

@implementation GestureImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupPanGestures];
    //[self setupTapGestures];
}

-(void)setupPanGestures {
    UIPanGestureRecognizer* panRecognizer1 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView1 addGestureRecognizer:panRecognizer1];
    UIPanGestureRecognizer* panRecognizer2 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView2 addGestureRecognizer:panRecognizer2];
    UIPanGestureRecognizer* panRecognizer3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView3 addGestureRecognizer:panRecognizer3];
    UIPanGestureRecognizer* panRecognizer4 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView4 addGestureRecognizer:panRecognizer4];
    UIPanGestureRecognizer* panRecognizer5 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView5 addGestureRecognizer:panRecognizer5];
    UIPanGestureRecognizer* panRecognizer6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView6 addGestureRecognizer:panRecognizer6];
    UIPanGestureRecognizer* panRecognizer7 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView7 addGestureRecognizer:panRecognizer7];
    UIPanGestureRecognizer* panRecognizer8 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView8 addGestureRecognizer:panRecognizer8];
    UIPanGestureRecognizer* panRecognizer9 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView9 addGestureRecognizer:panRecognizer9];
    UIPanGestureRecognizer* panRecognizer0 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMoveAround:)];
    [self.imageView0 addGestureRecognizer:panRecognizer0];
}

-(void)setupTapGestures {
    UITapGestureRecognizer* panRecognizer1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView1 addGestureRecognizer:panRecognizer1];
    UITapGestureRecognizer* panRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView2 addGestureRecognizer:panRecognizer2];
    UITapGestureRecognizer* panRecognizer3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView3 addGestureRecognizer:panRecognizer3];
    UITapGestureRecognizer* panRecognizer4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView4 addGestureRecognizer:panRecognizer4];
    UITapGestureRecognizer* panRecognizer5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView5 addGestureRecognizer:panRecognizer5];
    UITapGestureRecognizer* panRecognizer6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView6 addGestureRecognizer:panRecognizer6];
    UITapGestureRecognizer* panRecognizer7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView7 addGestureRecognizer:panRecognizer7];
    UITapGestureRecognizer* panRecognizer8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView8 addGestureRecognizer:panRecognizer8];
    UITapGestureRecognizer* panRecognizer9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView9 addGestureRecognizer:panRecognizer9];
    UITapGestureRecognizer* panRecognizer0 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureDetected:)];
    [self.imageView0 addGestureRecognizer:panRecognizer0];
}

- (IBAction)panGestureMoveAround:(UIPanGestureRecognizer *)gesture {
    if ([gesture state] == UIGestureRecognizerStateBegan) {
        // If the beginning of a new drag, reset the starting position
        CGFloat xDiff = -(gesture.view.frame.size.width/2.0) + [gesture locationInView:gesture.view].x;
        CGFloat yDiff = -(gesture.view.frame.size.height/2.0) + [gesture locationInView:gesture.view].y;
        self.dragCenterPointOffset = CGPointMake(xDiff, yDiff);
    } else {
        CGFloat xDiff = [gesture locationInView:self.view].x - self.dragCenterPointOffset.x;
        CGFloat yDiff = [gesture locationInView:self.view].y - self.dragCenterPointOffset.y;
        [gesture.view setCenter:CGPointMake(xDiff, yDiff)];
    }
}

- (IBAction)tapGestureDetected:(UIPanGestureRecognizer *)gesture {
    NSLog(@"tapGestureDetected");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
