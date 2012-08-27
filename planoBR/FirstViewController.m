//
//  FirstViewController.m
//  planoBR
//
//  Created by gabriel on 23/08/12.
//  Copyright (c) 2012 gabriel. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize menu;
@synthesize sobreEmpresa;
@synthesize sobreAplicacao;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Inicializando o Menu Principal na opção Develing
    self.menu.selectedSegmentIndex = 0;
    
    // Inicializando o texto "Sobre Develing"
    self.sobreEmpresa.text = @"Com poucos meses de fundamento, a Develing ainda está se estabelecendo e proucurando o proprio modelo de negócios. Focando apenas em web e app, temos uma grande capacidade de criar produtos de excelentes qualidades e fora dos padrões do mercado convencional.";
    
    // Inicializando o texto "Sobre a Aplicação"
    self.sobreAplicacao.text = @"Essa aplicação foi desenvolvida apenas pra mostrar um pouco sobre nossa técnica em desenvolvinto iOS. Como ainda temos muito pouco tempo de fundamento, nossa conta na App Store ainda não esta pronta e validada. Vale frizar que esse app foi criado para mostrar nossa capacidade com o código, a abstração e o modelamento. Temos uma equipe de designers para tratar a parte gráfica de cada app. \n\nDesenvolvemos dois apps básicos apenas para exemplificar nosso dominio no código enxuto e otimizado. A documentação deles se encontra no arquivo PDF que encaminhamos pra vocês, junto com todas as ferramentas utilizadas.";
    
    // Inicializando TextViews para aparecer
    self.sobreEmpresa.hidden = NO;
    self.sobreAplicacao.hidden = YES;
}

- (IBAction)menuPrincipal:(id)sender
{
    if (self.menu.selectedSegmentIndex == 0) {
        self.sobreEmpresa.hidden = NO;
        self.sobreAplicacao.hidden = YES;
    } else {
        self.sobreAplicacao.hidden = NO;
        self.sobreEmpresa.hidden = YES;
    }
}

- (void)viewDidUnload
{
    [self setMenu:nil];
    [self setSobreEmpresa:nil];
    [self setSobreAplicacao:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
