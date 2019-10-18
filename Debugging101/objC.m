
// Getting view constraints and constants

    NSString *deviceOrientation;
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    deviceOrientation = orientation == UIInterfaceOrientationPortrait ? @"Portrait" : @"Landscape";
    
    CGFloat selfHeight = self.view.bounds.size.height;
    CGFloat selfWidth = self.view.bounds.size.width;
    CGFloat dateTimeViewHeight = dateTimeView.bounds.size.height;
    CGFloat dateTimeViewWidth = dateTimeView.bounds.size.width;
    CGFloat scrollViewHeight = scrollView.bounds.size.height;
    CGFloat scrollViewWidth = scrollView.bounds.size.width;
    
    NSLog(@"self.view /orientation: %@ : height: %f width: %f ***", deviceOrientation, selfHeight, selfWidth);
    NSLog(@"dateTimeView /orientation: %@ : height: %f width: %f ***",  deviceOrientation,dateTimeViewHeight, dateTimeViewWidth);
    NSLog(@"scrollView /orientation: %@ : height: %f width: %f ***",  deviceOrientation,scrollViewHeight, scrollViewWidth);


// getting view changes when device orientation changes

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator { }



