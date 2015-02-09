//
//  MatchScore.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "MatchScore.h"

@implementation MatchScore

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p2 secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}

-(BOOL) haveAWinner {
    return (self.player1Score == 3 || self.player2Score == 3);
}

-(void) addScore:(SetScore *)score {
    if ([score getWinner] == self.player1){
        self.player1Score++;
    } else {
        self.player2Score++;
    }
    
    [self.scores addObject:score];
}

-(NSMutableArray *) scores {
    if (_scores == nil){
        _scores = [[NSMutableArray alloc] init];
    }
    
    return _scores;
}

-(NSString *) description{
    NSLog(@"in matchScore description");
    
    NSString * score = [NSString stringWithFormat:@"\n\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score ];
    
    NSString * winner;
    
    if ([self getWinner] == self.player1){
        winner = [NSString stringWithFormat:@"player 1 wins"];
    } else {
        winner = [NSString stringWithFormat:@"player 2 wins"];
    }
    
    return [score stringByAppendingString:winner];
}




@end
