//
//  AppDelegate.h
//  Cocoa Alert Panels
//
//  Created by Nikola Grujic on 16/01/2020.
//  Copyright © 2020 Mac Developers. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{}

@property (weak) IBOutlet NSWindow *window;

- (IBAction)alert1:(id)sender;;
- (IBAction)alert2:(id)sender;;

- (void)alertDidEnd:(NSAlert *)alert
         returnCode:(NSInteger)returnCode;

@end

