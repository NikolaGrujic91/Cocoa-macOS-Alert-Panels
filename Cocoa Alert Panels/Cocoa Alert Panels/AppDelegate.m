//
//  AppDelegate.m
//  Cocoa Alert Panels
//
//  Created by Nikola Grujic on 16/01/2020.
//  Copyright © 2020 Mac Developers. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (IBAction)alert1:(id)sender;
{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Title - Alert Warning"];
    [alert setInformativeText:@"Message"];
    [alert addButtonWithTitle:@"OK"];
    [alert addButtonWithTitle:@"Cancel"];
    [alert setAlertStyle:NSAlertStyleWarning];
    
    [alert beginSheetModalForWindow:_window
                  completionHandler:^(NSModalResponse returnCode)
                  {
                    [self alertDidEnd:alert returnCode:returnCode];
                  }];
}

- (IBAction)alert2:(id)sender;
{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Title - Alert Critical"];
    [alert setInformativeText:@"Message"];
    [alert addButtonWithTitle:@"OK"];
    [alert addButtonWithTitle:@"Cancel"];
    [alert addButtonWithTitle:@"Alternative"];
    [alert setShowsHelp:YES];
    [alert setAlertStyle:NSAlertStyleCritical];
    
    [alert beginSheetModalForWindow:_window
                  completionHandler:^(NSModalResponse returnCode)
                  {
                    [self alertDidEnd:alert returnCode:returnCode];
                  }];
}

- (void)alertDidEnd:(NSAlert *)alert
         returnCode:(NSInteger)returnCode
{
    if (returnCode == NSModalResponseOK)
    {
        NSLog(@"(returnCode == NSModalResponseOK)");
    }
    else if (returnCode == NSModalResponseCancel)
    {
        NSLog(@"(returnCode == NSModalResponseCancel)");
    }
    else if(returnCode == NSAlertFirstButtonReturn)
    {
        NSLog(@"if (returnCode == NSAlertFirstButtonReturn)");
    }
    else if (returnCode == NSAlertSecondButtonReturn)
    {
        NSLog(@"else if (returnCode == NSAlertSecondButtonReturn)");
    }
    else if (returnCode == NSAlertThirdButtonReturn)
    {
        NSLog(@"else if (returnCode == NSAlertThirdButtonReturn)");
    }
    else
    {
        NSLog(@"All Other return code %d", (int)returnCode);
    }
}

@end
