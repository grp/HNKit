//
//  NSDate+TimeAgo.m
//  HNKit
//
//  By Rudy Jah Chan
//  https://gist.github.com/rudyjahchan/1660134
//

#import "NSDate+TimeAgo.h"

@implementation NSDate (TimeAgo)

- (NSString *)timeAgoInWords {
    double seconds = [self timeIntervalSinceNow];
    seconds = seconds * -1;

    if (seconds < 1) {
        return @"now";
    } else if (seconds < 60) {
        return @"less than a minute ago";
    } else {
        NSUInteger difference = 0;
        BOOL pluralize = NO;
        NSString *unit = @"";

        if (seconds < 3600) {
            difference = round(seconds / 60);
            unit = @"minute";
        } else if (seconds < 86400) {
            difference = round(seconds / 3600);
            unit = @"hour";
        } else if (seconds < 604800) {
            difference = round(seconds / 86400);
            unit = @"day";
        } else if (seconds < 2592000) {
            difference = round(seconds / 604800);
            unit = @"week";
        } else if (seconds < 31557600) {
            difference = round(seconds / 2592000);
            unit = @"month";
        } else {
            difference = round(seconds / 2592000);
            unit = @"year";
        }

        if (difference > 1) {
            pluralize = YES;
        }

        return [NSString stringWithFormat:@"%d %@%@ ago",
                difference,
                unit,
                (pluralize ? @"s" : @"")];
    }
}

@end
