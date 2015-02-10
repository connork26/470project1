//
//  MatchScore.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "MatchScore.h"

@implementation MatchScore

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
    NSString * toPrint= @"\n";
    int set = 1;
    for (SetScore * setScore in self.scores){
        toPrint = [toPrint stringByAppendingString:[NSString stringWithFormat:@"\nSet %d", set++]];
        toPrint = [toPrint stringByAppendingString:[setScore description]];
    }
    
    toPrint = [toPrint stringByAppendingString:[NSString stringWithFormat:@"\nMatch Results:\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score]];
    
    NSString * winner;
    
    if ([self getWinner] == self.player1){
        winner = [NSString stringWithFormat:@"player 1 wins %d to %d", self.player1Score, self.player2Score];
    } else {
        winner = [NSString stringWithFormat:@"player 2 wins %d to %d", self.player2Score, self.player1Score];
    }
    
    return [toPrint stringByAppendingString:winner];
}




@end
