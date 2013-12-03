#import "AppDelegate.h"
#import "FeedTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Table View Controller
    FeedTableViewController *feedTableViewController = [[FeedTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    // Nav Controller
    UINavigationController *feedNavController = [[UINavigationController alloc] initWithRootViewController:feedTableViewController];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = feedNavController;

    [self.window makeKeyAndVisible];
    return YES;
}

@end
