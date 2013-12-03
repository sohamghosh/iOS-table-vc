#import "FeedTableViewController.h"
#import "PhotoViewController.h"

@interface FeedTableViewController ()

@end

@implementation FeedTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.title = @"Feed";
        //self.tabBarItem.image = [UIImage imageNamed:@""];
        self.imageTitleArray = @[@"Image 1",@"Image 2",@"Image 3",@"Image 4", @"Image 5"];
        self.imageFileNameArray = @[@"image1.png", @"image2.png", @"image3.png", @"image4.png", @"image5.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.imageTitleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        NSLog(@"Cell created using alloc.");
    } else {
        NSLog(@"Cell reused.");
    }
    
    cell.textLabel.text = self.imageTitleArray[indexPath.row];
    
    /*
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier]; 
    cell.detailTextLabel.text = @"";
    */
     
    //cell.imageView.image = [UIImage imageNamed:@""];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoViewController *photoViewController = [[PhotoViewController alloc] init];
    
    photoViewController.imageFileName = self.imageFileNameArray[indexPath.row];
    photoViewController.imageTitle = self.imageTitleArray[indexPath.row];
    
    [self.navigationController pushViewController:photoViewController animated:YES];
}


@end
