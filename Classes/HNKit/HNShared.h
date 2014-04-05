
#import "NSURL+Parameters.h"
#import "NSObject+PerformSelector.h"
#import "NSString+RemoveSuffix.h"


#define HNKIT_RENDERING_ENABLED


#define kHNWebsiteHost @"news.ycombinator.com"
#define kHNFAQURL [NSURL URLWithString:@"http://ycombinator.com/newsfaq.html"]
#define kHNWebsiteURL [NSURL URLWithString:[NSString stringWithFormat:@"https://%@/", kHNWebsiteHost]]

#define kHNSearchBaseURL @"https://hn.algolia.com/api/v1/search?%@"
#define kHNSearchParamsInteresting @"query=%@"
#define kHNSearchParamsRecent @"query=%@"

typedef enum {
    kHNSearchTypeInteresting,
    kHNSearchTypeRecent
} HNSearchType;


typedef enum {
    kHNVoteDirectionDown,
    kHNVoteDirectionUp
} HNVoteDirection;


typedef NSString *HNSessionToken;

typedef NSString *HNMoreToken;
