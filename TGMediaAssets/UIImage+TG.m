/*
 * This is the source code of Telegram for iOS v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Peter Iakovlev, 2013.
 */

#import "UIImage+TG.h"

#import <objc/runtime.h>

//static const void *staticBackdropImageDataKey = "staticBackdropImageDataKey";
static const void *extendedInsetsKey = &extendedInsetsKey;
static const void *degradedKey = &degradedKey;
static const void *editedKey = &editedKey;
static const void *fromCloudKey = &fromCloudKey;

@implementation UIImage (TG)





- (UIEdgeInsets)extendedEdgeInsets
{
    id value = objc_getAssociatedObject(self, extendedInsetsKey);
    if (value != nil)
        return [(NSValue *)value UIEdgeInsetsValue];
    return UIEdgeInsetsZero;
}

- (void)setExtendedEdgeInsets:(UIEdgeInsets)edgeInsets
{
    objc_setAssociatedObject(self, extendedInsetsKey, [NSValue valueWithUIEdgeInsets:edgeInsets], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (bool)degraded
{
    id value = objc_getAssociatedObject(self, degradedKey);
    if (value != nil)
        return [(NSNumber *)value boolValue];
    return false;
}

- (void)setDegraded:(bool)degraded
{
    objc_setAssociatedObject(self, degradedKey, @(degraded), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (bool)edited
{
    id value = objc_getAssociatedObject(self, editedKey);
    if (value != nil)
        return [(NSNumber *)value boolValue];
    return false;
}

- (void)setEdited:(bool)edited
{
    objc_setAssociatedObject(self, editedKey, @(edited), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (bool)fromCloud
{
    id value = objc_getAssociatedObject(self, fromCloudKey);
    if (value != nil)
        return [(NSNumber *)value boolValue];
    return false;
}

- (void)setFromCloud:(bool)fromCloud
{
    objc_setAssociatedObject(self, fromCloudKey, @(fromCloud), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
