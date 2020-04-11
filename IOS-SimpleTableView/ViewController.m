//
//  ViewController.m
//  IOS-SimpleTableView
//
//  Created by eric on 11/04/2020.
//  Copyright © 2020 SLCC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@end

@implementation ViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"\n\nGetting a Directory File Listing\n");
    
    NSFileManager *filemgr;
    NSString *currentpath;
    NSArray *filelist;
    int c;
    int i;
    
    filemgr = [NSFileManager defaultManager];
    
    filelist = [filemgr contentsOfDirectoryAtPath: @"/tmp" error: nil];
    
    c = [filelist count] ;
    
    for (i = 0; i < c; i++)
        NSLog (@"%@", [filelist objectAtIndex: i]);
    
    tableData = filelist;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"appel count");
    return [tableData count];
 }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"appel tableView");
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSLog(@"test cell nil");
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
