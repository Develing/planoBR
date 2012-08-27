//
//  SecondViewController.m
//  planoBR
//
//  Created by gabriel on 23/08/12.
//  Copyright (c) 2012 gabriel. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize tela;

- (void)viewDidLoad
{
    [super viewDidLoad];
	tela.text = @"0.00";
}

- (IBAction)digitoPressionado:(id)sender
{
    numeroAtual = numeroAtual * 10 + [sender tag];
    tela.text = [NSString stringWithFormat:@"%.2f", numeroAtual];
}

- (IBAction)operacaoPressionada:(id)sender
{
    if (operacaoAtual == 0)
        resultado = numeroAtual;
    else
        switch (operacaoAtual) {
            case 1:
                resultado += numeroAtual;
                break;
                
            case 2:
                resultado -= numeroAtual;
                break;
                
            case 3:
                resultado *= numeroAtual;
                break;
                
            case 4:
                resultado /= numeroAtual;
                
            default:
                operacaoAtual = 0;
                break;
        }
    numeroAtual = 0;
    tela.text = [NSString stringWithFormat:@"%.2f",resultado];
	if ([sender tag] == 0) resultado = 0;
	operacaoAtual = [sender tag];

}

- (IBAction)limpar:(id)sender {
    numeroAtual = 0;
    tela.text = @"0.00";
}

- (IBAction)limparTudo:(id)sender
{
    numeroAtual = 0;
    operacaoAtual = 0;
    tela.text = @"0.00";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
