//
//  Match.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "Match.h"
#import "MatchScore.h"
#import "Set.h"
#import "SetScore.h"

@implementation Match

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

-(MatchScore *) play:(Player *)p{
    MatchScore * score = [[MatchScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    while (![score haveAWinner]) {
        Set * set = [[Set alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        SetScore * setScore  = [set play:self.player1];
        [score addScore:setScore];
        set = nil;
    }
    
    return score;
}





@end
