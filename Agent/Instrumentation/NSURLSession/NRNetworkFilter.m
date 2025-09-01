//
//  NRNetworkFilter.m
//  Agent
//
//  Created by Muhammad Saqib on 01/09/2025.
//  Copyright © 2025 New Relic. All rights reserved.
//


#import "NRNetworkFilter.h"

static dispatch_queue_t nr_filter_queue(void) {
    static dispatch_queue_t q;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        q = dispatch_queue_create("com.newrelic.agent.networkfilter", DISPATCH_QUEUE_CONCURRENT);
    });
    return q;
}

static NSArray<NSString *> *_nr_patterns;

void NRSetIgnoredPatterns(NSArray<NSString *> *patterns) {
    dispatch_barrier_async(nr_filter_queue(), ^{
        _nr_patterns = [patterns copy] ?: @[];
    });
}

NSArray<NSString *> *NRGetIgnoredPatterns(void) {
    __block NSArray<NSString *> *snapshot = @[];
    dispatch_sync(nr_filter_queue(), ^{
        snapshot = _nr_patterns ?: @[];
    });
    return snapshot;
}

BOOL NRShouldIgnoreURL(NSURL * _Nullable url) {
    if (!url) return NO;

    __block NSArray<NSString *> *patterns = nil;
    dispatch_sync(nr_filter_queue(), ^{
        patterns = _nr_patterns ?: @[];
    });
    if (patterns.count == 0) return NO;

    NSString *host = url.host ?: @"";
    NSString *full = url.absoluteString ?: @"";

    // Try both host-only and full URL, case-insensitive
    NSArray<NSString *> *candidates = @[
        host, host.lowercaseString,
        full, full.lowercaseString
    ];

    for (NSString *pat in patterns) {
        NSString *p = pat.lowercaseString;
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF LIKE[c] %@", p];
        for (NSString *c in candidates) {
            if ([pred evaluateWithObject:c]) {
                return YES;
            }
        }
    }
    return NO;
}
