//
//  SetScore.h
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "Score.h"
#import "TieBreakerScore.h"

@interface SetScore : Score

-(BOOL) needToPlayTieBreaker;
-(void) addTieScore: (TieBreakerScore *) score;

@property (nonatomic, strong) TieBreakerScore * tieScore;

@end
