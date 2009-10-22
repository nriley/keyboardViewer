#include <stdio.h>
#include <Carbon/Carbon.h>
#include <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    [[NSAutoreleasePool alloc] init];
    
    CFDictionaryRef properties =
    (CFDictionaryRef)[NSDictionary
		      dictionaryWithObject: @"com.apple.KeyboardViewer"
		      forKey: (NSString *)kTISPropertyInputSourceID];
    NSArray *sources = (NSArray *)TISCreateInputSourceList(properties, false);
    
    TISSelectInputSource((TISInputSourceRef)[sources objectAtIndex: 0]);
    
    return 0;
}
