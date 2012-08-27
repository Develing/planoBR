//
//  ThirdViewController.m
//  planoBR
//
//  Created by gabriel on 23/08/12.
//  Copyright (c) 2012 gabriel. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize minhaLocalizacao;
@synthesize localizacaoDeSaida;
@synthesize meuMapa;
@synthesize labelDistanciaPercorrida;
@synthesize labelLatitude;
@synthesize labelLongitude;
@synthesize labelAltitude;
@synthesize labelPrecisaoHorizontal;
@synthesize labelPrecisaoVertical;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Inicializando o GPS
    minhaLocalizacao = [[CLLocationManager alloc] init];
    minhaLocalizacao.delegate = self;
    minhaLocalizacao.desiredAccuracy = kCLLocationAccuracyBest;
    [minhaLocalizacao startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSString *textoErro = error.code == kCLErrorDenied ? @"Acesso Negado" : @"Erro ao utilizar o LocationManager";
    
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Erro" message:textoErro delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alerta show];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    if (localizacaoDeSaida == nil) {
        localizacaoDeSaida = newLocation;
        CustomAnnotation *meuCustomAnnotation = [[CustomAnnotation alloc] init];
        CLLocationCoordinate2D newLocationCoordinate;
        newLocationCoordinate.latitude = newLocation.coordinate.latitude;
        newLocationCoordinate.longitude = newLocation.coordinate.longitude;
        meuCustomAnnotation.coordinate = newLocationCoordinate;
        
        meuCustomAnnotation.title = @"Partida";
        meuCustomAnnotation.subtitle = @"Seu ponto de partida";
        
        [meuMapa addAnnotation:meuCustomAnnotation];
        
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([meuCustomAnnotation coordinate], 500, 500);
        [meuMapa setRegion:region animated: TRUE];
    }
    
    NSString *latitude = [[NSString alloc] initWithFormat:@"%f\u00B0", newLocation.coordinate.latitude];
    NSString *longitude = [[NSString alloc] initWithFormat:@"%f\u00B0", newLocation.coordinate.longitude];
    NSString *altitude = [[NSString alloc] initWithFormat:@"%fm", newLocation.altitude];
    NSString *precisaoHorizontal = [[NSString alloc] initWithFormat:@"%f\u00B0", newLocation.horizontalAccuracy];
    NSString *precisaoVertival = [[NSString alloc] initWithFormat:@"%f\u00B0", newLocation.verticalAccuracy];
    
    CLLocationDistance distancia = [newLocation distanceFromLocation:localizacaoDeSaida];
    NSString *distanciaString = [[NSString alloc] initWithFormat:@"%fm", distancia];
    
    labelLatitude.text = latitude;
    labelLongitude.text = longitude;
    labelAltitude.text = altitude;
    labelPrecisaoHorizontal.text = precisaoHorizontal;
    labelPrecisaoVertical.text = precisaoVertival;    
    labelDistanciaPercorrida.text = distanciaString;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
