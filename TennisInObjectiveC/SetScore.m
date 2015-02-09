//
//  SetScore.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "SetScore.h"

@implementation SetScore

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p2 secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}

-(BOOL) haveAWinner{
    return ((self.player1Score == 7 || self.player2Score == 7) || ((self.player1Score >= 6 || self.player2Score >= 6) && (abs(self.player1Score - self.player2Score) >= 2)));
}

-(BOOL) needToPlayTieBreaker{
    return (self.player1Score == 6 && self.player2Score == 6);
}

@end
