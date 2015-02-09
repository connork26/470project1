//
//  TieBreakerScore.m
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "TieBreakerScore.h"

@implementation TieBreakerScore

-(BOOL) haveAWinner {
    return (abs(self.player1Score - self.player2Score) >= 2);
}

@end
