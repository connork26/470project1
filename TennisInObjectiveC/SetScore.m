//
//  SetScore.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "SetScore.h"

@implementation SetScore

-(BOOL) haveAWinner{
    return ((self.player1Score == 7 || self.player2Score == 7) || ((self.player1Score >= 6 || self.player2Score >= 6) && (abs(self.player1Score - self.player2Score) >= 2)));
}

-(BOOL) needToPlayTieBreaker{
    return (self.player1Score == 6 && self.player2Score == 6);
}

-(NSString *) description {
    NSString * score = [NSString stringWithFormat:@"\nplayer1 score = %d\nplayer2 score = %d\n", self.player1Score, self.player2Score ];
    if (self.tieScore) {
        score = [score stringByAppendingString: [self.tieScore description]];
    }
    
    return [score stringByAppendingString:@"\n"];
}

-(void) addTieScore:(TieBreakerScore *) score{
    self.tieScore = score;
}

@end
