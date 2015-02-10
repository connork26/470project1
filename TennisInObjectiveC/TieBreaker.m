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
    int count = 0;
    while (![tieScore haveAWinner]){
        Game * game = [[Game alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        GameScore * gameScore = [game play:p];
        
        [tieScore addScore:[gameScore getWinner]];
        
        if ((count % 2) == 0){
            p = (p == self.player1 ? self.player2 : self.player1);
        }
        count++;
    }
    
    return tieScore;
}


@end
