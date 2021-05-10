#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    if (playerArray.count != 0) {
    NSMutableArray *uniqeRankedArray = [NSMutableArray array];
    for (id rank in rankedArray) {
        if (![uniqeRankedArray containsObject:rank]) {
            [uniqeRankedArray addObject:rank];
        }
    }
    NSMutableArray *playerRankArray = [NSMutableArray new];
    for (NSNumber *playerScore in playerArray) {
        int playerRank = 1;
        for (NSNumber *rank in uniqeRankedArray) {
            if ([rank intValue] > [playerScore intValue]) {
                playerRank += 1;
            }
        }
        [playerRankArray addObject:@(playerRank)];
    }
    return playerRankArray;
}
    return @[];
}

@end
