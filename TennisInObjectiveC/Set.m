//
//  Set.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "Set.h"
#import "Game.h"
#import "GameScore.h"
#import "TieBreaker.h"
#import "TieBreakerScore.h"

@implementation Set

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

-(SetScore *) play:(Player *)p {
    Player * server = p;
    SetScore * score = [[SetScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    while (![score haveAWinner]) {
        if ([score needToPlayTieBreaker]){
            TieBreaker * tie = [[TieBreaker alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
            TieBreakerScore * tieScore = [tie play:server];
            [score addScore:[tieScore getWinner]];
            [score addTieScore: tieScore];
        } else{
            Game * game = [[Game alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
            GameScore * gameScore = [game play:server];
            
            [score addScore:[gameScore getWinner]];
            gameScore = nil;
        }
        
        if (server == self.player1){
            server = self.player2;
        
        } else {
            server = self.player1;
        }
    }
    
    return score;
}




@end
