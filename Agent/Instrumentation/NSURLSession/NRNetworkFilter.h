//
//  NRNetworkFilter.h
//  Agent
//
//  Created by Muhammad Saqib on 01/09/2025.
//  Copyright © 2025 New Relic. All rights reserved.
//


#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

/// Set global wildcard patterns to ignore (e.g. "*.amazonaws.com", "wss://*.live-video.net/*")
FOUNDATION_EXPORT void NRSetIgnoredPatterns(NSArray<NSString *> *patterns);

/// Read-only snapshot (optional)
FOUNDATION_EXPORT NSArray<NSString *> *NRGetIgnoredPatterns(void);

/// TRUE if the URL should be ignored
FOUNDATION_EXPORT BOOL NRShouldIgnoreURL(NSURL * _Nullable url);

NS_ASSUME_NONNULL_END
