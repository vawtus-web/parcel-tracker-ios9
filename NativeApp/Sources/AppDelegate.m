#import "AppDelegate.h"
#import <WebKit/WebKit.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.window.bounds
                                            configuration:configuration];
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.allowsBackForwardNavigationGestures = NO;
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window.rootViewController.view addSubview:webView];
    [webView loadRequest:[NSURLRequest requestWithURL:
        [NSURL URLWithString:@"https://vawtus-web.github.io/parcel-tracker-ios9/"]]];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
