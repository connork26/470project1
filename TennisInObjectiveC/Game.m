//
//  Game.m
//  TennisInObjectiveC
//
//  Created by Ali Kooshesh on 1/22/14.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import "Game.h"
#import "GameScore.h"
#import "PointScore.h"

@implementation Game

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

-(GameScore *) play:(Player *)player
{
    GameScore *gameScore = [[GameScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    while( ! [gameScore haveAWinner] ) {
        
        PointScore *pScore =  (PointScore *) [player serveAPoint];
        [gameScore addScore: [pScore getWinner]];
        pScore = nil;
    }
    return gameScore;
}

@end
