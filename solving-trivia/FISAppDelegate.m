//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// Override point for customization after application launch.
    [self solveTrivia];
    return YES;
}
-(NSString *)solveTrivia {
    NSDictionary *statesDictionary = @{@"Alabama": @"Montgomery",
                                       @"Alaska" : @"Juneau",
                                       @"Arizona":	@"Phoenix",
                                       @"Arkansas" : @"Little Rock",
                                       @"California" : @"Sacramento",
                                       @"Colorado" : @"Denver",
                                       @"Connecticut" : @"Hartford",
                                       @"Delaware" : @"Dover",
                                       @"Florida" : @"Tallahassee",
                                       @"Georgia" : @"Atlanta",
                                       @"Hawaii" : @"Honolulu",
                                       @"Idaho" : @"Boise",
                                       @"Illinois" : @"Springfield",
                                       @"Indiana" : @"Indianapolis",
                                       @"Iowa" : @"Des Moines",
                                       @"Kansas" : @"Topeka",
                                       @"Kentucky" : @"Frankfort",
                                       @"Louisiana" : @"Baton Rouge",
                                       @"Maine" : @"Augusta",
                                       @"Maryland" : @"Annapolis",
                                       @"Massachusetts" : @"Boston",
                                       @"Michigan" : @"Lansing",
                                       @"Minnesota" : @"Saint Paul",
                                       @"Mississippi" : @"Jackson",
                                       @"Missouri" : @"Jefferson City",
                                       @"Montana" : @"Helena",
                                       @"Nebraska" : @"Lincoln",
                                       @"Nevada" : @"Carson City",
                                       @"New Hampshire" : @"Concord",
                                       @"New Jersey" : @"Trenton",
                                       @"New Mexico" : @"Santa Fe",
                                       @"New York" : @"Albany",
                                       @"North Carolina" : @"Raleigh",
                                       @"North Dakota" : @"Bismarck",
                                       @"Ohio" : @"Columbus",
                                       @"Oklahoma" : @"Oklahoma City",
                                       @"Oregon" : @"Salem",
                                       @"Pennsylvania" : @"Harrisburg",
                                       @"Rhode Island" : @"Providence",
                                       @"South Carolina" : @"Columbia",
                                       @"South Dakota" : @"Pierre",
                                       @"Tennessee" : @"Nashville",
                                       @"Texas" : @"Austin",
                                       @"Utah" : @"Salt Lake City",
                                       @"Vermont" : @"Montpelier",
                                       @"Virginia" : @"Richmond",
                                       @"Washington" : @"Olympia",
                                       @"West Virginia" : @"Charleston",
                                       @"Wisconsin" : @"Madison",
                                       @"Wyoming" : @"Cheyenne"
                                       };
    NSArray *statesArray = [statesDictionary allKeys];
    NSString *returnedState = @"";
    
    for (NSString *state in statesArray) {
        NSMutableArray *characterArray = [[NSMutableArray alloc]init];
        NSString *stateIterator = [[state lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
        for (NSUInteger i = 0; i < [stateIterator length]; i++) {
            [characterArray addObject:[NSString stringWithFormat:@"%C",
                                       [stateIterator characterAtIndex:i]]];
        }
        NSUInteger index = 0;
        for (NSString *character in characterArray) {
            NSString *formattedState = [[statesDictionary[state] lowercaseString]stringByReplacingOccurrencesOfString:@" " withString:@""];
            if ([formattedState containsString:character]) {
                index += 1;
            }
        }
        if (index == 0) {
            returnedState = state;
        }
        
    }
    return returnedState;
}





@end
