.class Lcom/google/android/apps/books/provider/ConfigurationProvidelet;
.super Ljava/lang/Object;
.source "ConfigurationProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# instance fields
.field private mBasePath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private final mInitializedBasePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .registers 4
    .parameter "context"
    .parameter "db"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 60
    return-void
.end method

.method private deleteAllFiles(Ljava/io/File;)V
    .registers 12
    .parameter "baseDir"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 357
    iget-object v4, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 360
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v0, contentStatusValues:Landroid/content/ContentValues;
    const-string v4, "content_status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v2, "content_status=?"

    .line 363
    .local v2, where:Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 364
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v4, "segments"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    const-string v4, "resources"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    const-string v4, "pages"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #contentStatusValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .restart local v0       #contentStatusValues:Landroid/content/ContentValues;
    const-string v4, "cover_content_status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v2, "cover_content_status=?"

    .line 371
    new-array v3, v7, [Ljava/lang/String;

    .end local v3           #whereArgs:[Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 372
    .restart local v3       #whereArgs:[Ljava/lang/String;
    const-string v4, "volumes"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    if-eqz p1, :cond_53

    .line 375
    invoke-static {p1}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    .line 378
    :cond_53
    monitor-enter p0

    .line 381
    :try_start_54
    iget-object v4, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 382
    monitor-exit p0

    .line 383
    return-void

    .line 382
    :catchall_5b
    move-exception v4

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5b

    throw v4
.end method

.method private getCurrentBasePath(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 15
    .parameter "db"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, result:Ljava/lang/String;
    :cond_d
    if-nez v11, :cond_3e

    .line 142
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 143
    .local v2, columns:[Ljava/lang/String;
    const-string v12, "key=?"

    .line 144
    .local v12, where:Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "base_path"

    aput-object v0, v4, v1

    .line 145
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v10, "1"

    .line 146
    .local v10, limit:Ljava/lang/String;
    const/4 v9, 0x0

    .line 148
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_20
    const-string v1, "config"

    const-string v3, "key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 151
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_3f

    move-result-object v11

    .line 154
    :cond_39
    if-eqz v9, :cond_3e

    .line 155
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 159
    .end local v2           #columns:[Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #limit:Ljava/lang/String;
    .end local v12           #where:Ljava/lang/String;
    :cond_3e
    return-object v11

    .line 154
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #limit:Ljava/lang/String;
    .restart local v12       #where:Ljava/lang/String;
    :catchall_3f
    move-exception v0

    if-eqz v9, :cond_45

    .line 155
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method private getDefaultBaseDirectory()Ljava/io/File;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, externalRoot:Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 316
    .local v0, externalFreeBytes:J
    invoke-static {}, Lcom/google/android/apps/books/util/StorageUtils;->isExternalStorageEmulated()Z

    move-result v9

    if-nez v9, :cond_17

    .line 318
    :try_start_b
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/books/util/StorageUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_17

    .line 320
    invoke-static {v2}, Lcom/google/android/apps/books/util/FileUtils;->freeBytesOnFilesystem(Ljava/io/File;)J
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_39

    move-result-wide v0

    .line 327
    :cond_17
    :goto_17
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/books/util/StorageUtils;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 328
    .local v5, internalRoot:Ljava/io/File;
    if-nez v5, :cond_26

    move-wide v3, v7

    .line 332
    .local v3, internalFreeBytes:J
    :goto_20
    cmp-long v9, v0, v3

    if-lez v9, :cond_2b

    .line 333
    move-object v6, v2

    .line 339
    .local v6, result:Ljava/io/File;
    :goto_25
    return-object v6

    .line 328
    .end local v3           #internalFreeBytes:J
    .end local v6           #result:Ljava/io/File;
    :cond_26
    invoke-static {v5}, Lcom/google/android/apps/books/util/FileUtils;->freeBytesOnFilesystem(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_20

    .line 334
    .restart local v3       #internalFreeBytes:J
    :cond_2b
    cmp-long v7, v3, v7

    if-lez v7, :cond_31

    .line 335
    move-object v6, v5

    .restart local v6       #result:Ljava/io/File;
    goto :goto_25

    .line 337
    .end local v6           #result:Ljava/io/File;
    :cond_31
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Can\'t find a storage location with free space!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 322
    .end local v3           #internalFreeBytes:J
    .end local v5           #internalRoot:Ljava/io/File;
    :catch_39
    move-exception v9

    goto :goto_17
.end method

.method private static makeBasePathValues(Ljava/io/File;)Landroid/content/ContentValues;
    .registers 2
    .parameter "path"

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static makeBasePathValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 4
    .parameter "value"

    .prologue
    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    const-string v2, "base_path"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-object v0
.end method

.method private onBasePathChanged(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "uri"
    .parameter "oldPath"
    .parameter "newPath"
    .parameter "db"

    .prologue
    .line 74
    const-string v2, "deleteFilesIfBasePathUnchanged"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, parameterValue:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    .local v0, deleteFilesUnconditionally:Z
    if-eqz p2, :cond_1e

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v0, :cond_1e

    .line 80
    :cond_16
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->deleteAllFiles(Ljava/io/File;)V

    .line 83
    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    .line 84
    return-void
.end method

.method public static resetBasePath(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "resolver"

    .prologue
    .line 299
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "deleteFilesIfBasePathUnchanged"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 303
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "RESET"

    invoke-static {v1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 304
    return-void
.end method


# virtual methods
.method public deleteAllFiles()V
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->deleteAllFiles(Ljava/io/File;)V

    .line 349
    return-void
.end method

.method public declared-synchronized getBaseDir()Ljava/io/File;
    .registers 12

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    .line 237
    .local v9, result:Ljava/io/File;
    if-nez v9, :cond_28

    .line 240
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v3, v0

    .line 241
    .local v3, columns:[Ljava/lang/String;
    const-string v10, "key=?"

    .line 242
    .local v10, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "base_path"

    aput-object v1, v5, v0

    .line 243
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v1, 0x320

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    const-string v4, "key=?"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 245
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    .line 250
    .end local v3           #columns:[Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #where:Ljava/lang/String;
    :cond_28
    if-eqz v9, :cond_4d

    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/books/util/StorageUtils;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_72

    move-result v0

    if-nez v0, :cond_48

    .line 253
    :try_start_3e
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_72
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_4f

    .line 261
    :cond_48
    :goto_48
    :try_start_48
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_72

    .line 263
    :cond_4d
    monitor-exit p0

    return-object v9

    .line 254
    :catch_4f
    move-exception v8

    .line 255
    .local v8, e:Ljava/io/IOException;
    :try_start_50
    const-string v0, "ConfigurationProvidelet"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 256
    const-string v0, "ConfigurationProvidelet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred creating .nomedia file on external storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_72

    goto :goto_48

    .line 236
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #result:Ljava/io/File;
    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 16
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x0

    .line 92
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v9}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "key"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, key:Ljava/lang/String;
    const-string v9, "base_path"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 97
    .local v3, isBasePathChange:Z
    if-eqz v3, :cond_39

    .line 98
    const-string v9, "value"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, path:Ljava/lang/String;
    const-string v9, "RESET"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 101
    :try_start_26
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getDefaultBaseDirectory()Ljava/io/File;

    move-result-object v1

    .line 102
    .local v1, defaultBaseDir:Ljava/io/File;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_50

    .line 103
    .end local p3
    .local v7, values:Landroid/content/ContentValues;
    :try_start_2f
    const-string v9, "value"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_9d

    move-object p3, v7

    .line 122
    .end local v1           #defaultBaseDir:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local p3
    :cond_39
    :goto_39
    if-eqz v3, :cond_9b

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getCurrentBasePath(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, oldBasePath:Ljava/lang/String;
    :goto_3f
    const-string v9, "config"

    invoke-virtual {v0, v9, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 127
    if-eqz v3, :cond_4f

    .line 128
    const-string v9, "value"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v5, v9, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->onBasePathChanged(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 131
    .end local v5           #oldBasePath:Ljava/lang/String;
    :cond_4f
    :goto_4f
    return-object v8

    .line 104
    .restart local v6       #path:Ljava/lang/String;
    :catch_50
    move-exception v2

    .line 105
    .local v2, e:Ljava/io/IOException;
    :goto_51
    const-string v9, "ConfigurationProvidelet"

    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 106
    const-string v9, "ConfigurationProvidelet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error choosing default base path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 113
    .end local v2           #e:Ljava/io/IOException;
    :cond_72
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_39

    .line 114
    const-string v9, "ConfigurationProvidelet"

    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 115
    const-string v9, "ConfigurationProvidelet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid base path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .end local v6           #path:Ljava/lang/String;
    :cond_9b
    move-object v5, v8

    .line 122
    goto :goto_3f

    .line 104
    .end local p3
    .restart local v1       #defaultBaseDir:Ljava/io/File;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #values:Landroid/content/ContentValues;
    :catch_9d
    move-exception v2

    move-object p3, v7

    .end local v7           #values:Landroid/content/ContentValues;
    .restart local p3
    goto :goto_51
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 172
    const-string v2, "missing selection"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p5

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c8

    const/4 v2, 0x1

    :goto_e
    const-string v3, "unexpected number of selection arguments (should be 1)"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 175
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_cb

    const/4 v2, 0x1

    :goto_1a
    const-string v3, "unexpected number of projection arguments (should be 1)"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 177
    const-string v2, "value"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "unexpected column requested (should be value)"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 179
    const/4 v2, 0x0

    aget-object v2, p5, v2

    const-string v3, "unexpected null selection argument"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 182
    .local v11, key:Ljava/lang/String;
    const-string v2, "ConfigurationProvidelet"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 183
    const-string v2, "ConfigurationProvidelet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading configuration value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_59
    iget-object v2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 188
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v12, "1"

    .line 189
    .local v12, limit:Ljava/lang/String;
    const-string v2, "config"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 194
    .local v13, result:Landroid/database/Cursor;
    const-string v2, "base_path"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 195
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_ce

    .line 196
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 197
    const/4 v13, 0x0

    .line 200
    :try_start_84
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getDefaultBaseDirectory()Ljava/io/File;

    move-result-object v10

    .line 201
    .local v10, defaultBasePath:Ljava/io/File;
    if-eqz v10, :cond_c7

    .line 202
    const-string v2, "ConfigurationProvidelet"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 203
    const-string v2, "ConfigurationProvidelet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chose file storage base path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_ab
    const/16 v2, 0x320

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    invoke-static {v10}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/io/File;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 209
    const-string v2, "config"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_c6} :catch_de

    move-result-object v13

    .line 222
    .end local v10           #defaultBasePath:Ljava/io/File;
    :cond_c7
    :goto_c7
    return-object v13

    .line 173
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #limit:Ljava/lang/String;
    .end local v13           #result:Landroid/database/Cursor;
    :cond_c8
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 175
    :cond_cb
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 217
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v12       #limit:Ljava/lang/String;
    .restart local v13       #result:Landroid/database/Cursor;
    :cond_ce
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    goto :goto_c7

    .line 212
    :catch_de
    move-exception v2

    goto :goto_c7
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Configuration URIs do not support update"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usingExternalStorage()Z
    .registers 4

    .prologue
    .line 271
    iget-object v2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/books/util/StorageUtils;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 272
    .local v1, internalStorageDir:Ljava/io/File;
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 273
    .local v0, currentStorageDir:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method
