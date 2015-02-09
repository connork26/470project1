//
//  TieBreaker.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "TieBreaker.h"
#import "TieBreakerScore.h"
#import "Game.h"
#import "GameScore.h"

@implementation TieBreaker

-(TieBreakerScore *) play:(Player *)p{
    TieBreakerScore * tieScore = [[TieBreakerScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    
    while (![tieScore haveAWinner]){
        Game * game = [[Game alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        GameScore * gameScore = [game play:self.player1];
        
        [tieScore addScore:[gameScore getWinner]];
    }
    
    return tieScore;
}


@end
