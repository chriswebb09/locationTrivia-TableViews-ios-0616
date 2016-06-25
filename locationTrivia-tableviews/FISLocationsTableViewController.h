//
//  FISLocationsTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Christopher Webb-Orenstein on 6/24/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISTriviaTableViewController.h"

@interface FISLocationsTableViewController : UITableViewController

@property (strong, nonatomic)NSArray *locations;

@end