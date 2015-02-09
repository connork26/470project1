//
//  TieBreaker.h
//  TennisInObjectiveC
//
//  Created by Connor Kuehnle on 2/4/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "Competition.h"
#import "TieBreakerScore.h"

@interface TieBreaker : Competition

-(TieBreakerScore *) play:(Player *) p;

@end
