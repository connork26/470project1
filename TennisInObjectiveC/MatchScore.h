//
//  MatchScore.h
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "Score.h"
#import "SetScore.h"

@interface MatchScore : Score

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2;
-(void) addScore:(SetScore *) score;
-(NSString *) description;

@property (nonatomic, strong) NSMutableArray * scores;

@end
