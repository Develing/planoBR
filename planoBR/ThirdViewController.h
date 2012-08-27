//
//  ThirdViewController.h
//  planoBR
//
//  Created by gabriel on 23/08/12.
//  Copyright (c) 2012 gabriel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CustomAnnotation.h"

@interface ThirdViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *minhaLocalizacao;
    CLLocation *localizacaoDeSaida;
    MKMapView *meuMapa;
    
    UILabel *labelDistanciaPercorrida;
    UILabel *labelLatitude;
    UILabel *labelLongitude;
    UILabel *labelAtitude;
    UILabel *labelPrecisaoHorizontal;
    UILabel *labelPrecisaoVertical;
}

@property (nonatomic, strong) CLLocationManager *minhaLocalizacao;
@property (nonatomic, strong) CLLocation *localizacaoDeSaida;
@property (nonatomic, strong) IBOutlet MKMapView *meuMapa;
@property (nonatomic, strong) IBOutlet UILabel *labelDistanciaPercorrida;
@property (nonatomic, strong) IBOutlet UILabel *labelLatitude;
@property (nonatomic, strong) IBOutlet UILabel *labelLongitude;
@property (nonatomic, strong) IBOutlet UILabel *labelAltitude;
@property (nonatomic, strong) IBOutlet UILabel *labelPrecisaoHorizontal;
@property (nonatomic, strong) IBOutlet UILabel *labelPrecisaoVertical;

@end
