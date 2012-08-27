//
//  FirstViewController.h
//  planoBR
//
//  Created by gabriel on 23/08/12.
//  Copyright (c) 2012 gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *menu;
@property (strong, nonatomic) IBOutlet UITextView *sobreEmpresa;
@property (strong, nonatomic) IBOutlet UITextView *sobreAplicacao;

- (IBAction)menuPrincipal:(id)sender;

@end
