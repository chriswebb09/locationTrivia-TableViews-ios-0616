//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Christopher Webb-Orenstein on 6/25/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"
#import "FISTriviaTableViewController.h"

@implementation FISLocationsTableViewController



-(void)viewDidLoad {
    //self.locations = [[NSArray alloc] init];

    self.tableView.accessibilityLabel = @"Locations Table";
    self.tableView.accessibilityIdentifier = @"Locations Table";
    //FISLocation *location1 = [[FISLocation alloc] initWithName:@"hi" latitude:1.12 longitude:1.12];
    
    NSLog(@"%@", self.locations);
    NSLog(@"%lu", [self.locations count]);
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.locations count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier= @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    FISLocation *currentLocation = self.locations[indexPath.row];
    cell.textLabel.text = currentLocation.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu",[currentLocation.trivia count]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISTriviaTableViewController *destinationVC = [segue destinationViewController];
    
    NSIndexPath *clickedIndexPath = [self.tableView indexPathForSelectedRow];
    destinationVC.locationPassed = self.locations[clickedIndexPath.row];
    
}

@end