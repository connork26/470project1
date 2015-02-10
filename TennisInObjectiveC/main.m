//
//  main.m
//  TennisInObjectiveC
//
//  Created by Ali Kooshesh on 1/22/14.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Player.h"
#import "Match.h"
#import "MatchScore.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        srandom(19);
        Player *player1 = [[Player alloc] initWithProbability: 70];
        Player *player2 = [[Player alloc] initWithProbability: 75];
        
        
        Match * match = [[Match alloc] initWithFirstPlayer:player1 secondPlayer:player2];
        MatchScore *score = [match play: player1];  // let player1 serve for this game.
        NSLog(@"%@", score);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
