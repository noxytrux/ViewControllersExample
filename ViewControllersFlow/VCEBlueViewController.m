//
//  BlueViewController.m
//  ViewControllersFlow
//
//  Created by Marcin Pędzimąż on 25.01.2016.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "VCEBlueViewController.h"
#import "VCEModalViewController.h"
#import <MessageUI/MessageUI.h>

@interface VCEBlueViewController ()

@end

@implementation VCEBlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)didPressShowModalView:(id)sender {
    
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        [self showMailComposerForIPad];
    } else {
        [self showSMSComposerForiPhone];
    }
    
}

- (void)showMailComposerForIPad {
    
    if ( [MFMailComposeViewController canSendMail] ) {
        
          
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"Subject"];
        [mail setMessageBody:@"Some email message" isHTML:NO];
        [mail setToRecipients:@[@"developer@flightscope.com"]];
        
        [self.navigationController presentViewController:mail animated:YES completion:NULL];
    }
    else {
        NSLog(@"This device cannot send email");
    }
    
}

- (void)showSMSComposerForiPhone {
    
    
    NSArray *recipents = @[@"12345678"];
    NSString *message = @"Hi mate!";
    
    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
    if([MFMessageComposeViewController canSendText]) {
        [messageController setRecipients:recipents];
        [messageController setBody:message];
        
        [self.navigationController presentViewController:messageController animated:YES completion:nil];
    }
    else {
        NSLog(@"This device cannot send SMS");
    }
    
}

- (void)mailComposeController:(MFMailComposeViewController*)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError*)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
    return;
}


@end
