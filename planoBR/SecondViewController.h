//
//  SecondViewController.h
//  planoBR
//
//  Created by gabriel on 23/08/12.
//  Copyright (c) 2012 gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    float resultado;
    float numeroAtual;
    int operacaoAtual;
}

@property (nonatomic, assign) IBOutlet UILabel *tela;

- (IBAction)digitoPressionado:(id)sender;
- (IBAction)operacaoPressionada:(id)sender;
- (IBAction)limpar:(id)sender;
- (IBAction)limparTudo:(id)sender;


@end
