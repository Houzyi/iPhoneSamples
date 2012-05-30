//
//  Migrator.m
//  TestFMDB
//
//  Created by matsuda on 12/05/30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Migrator.h"

@implementation Migrator

- (void)migrateVersion1:(FMDatabase *)db
{
    NSString *sql = @"CREATE TABLE IF NOT EXISTS users (primaryKey INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER)";
    [db executeUpdate:sql];
}

- (void)migrateVersion2:(FMDatabase *)db
{
    NSString *sql = @"CREATE TABLE IF NOT EXISTS address (primaryKey INTEGER PRIMARY KEY AUTOINCREMENT, prefecture TEXT, city TEXT)";
    [db executeUpdate:sql];
}

@end
