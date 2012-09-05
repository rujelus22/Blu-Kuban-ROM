.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;
.super Landroid/content/ContentProvider;
.source "SnsImageCacheContentProvider.java"


# static fields
.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 232
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 234
    sget-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.provider.snsimagecache"

    const-string v2, "received_image/open/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.provider.snsimagecache"

    const-string v2, "received_image/"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 111
    sget-object v5, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 112
    .local v2, match:I
    const/4 v4, 0x0

    .line 113
    .local v4, table:Ljava/lang/String;
    const/4 v3, 0x0

    .line 115
    .local v3, result:I
    packed-switch v2, :pswitch_data_48

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :pswitch_24
    const-string v4, "received_image"

    .line 125
    const/4 v0, 0x0

    .line 128
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_27
    iget-object v5, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    invoke-virtual {v5}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_30} :catch_37

    move-result v3

    .line 133
    if-eqz v0, :cond_36

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 138
    :cond_36
    :goto_36
    return v3

    .line 130
    :catch_37
    move-exception v1

    .line 131
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_41

    .line 133
    if-eqz v0, :cond_36

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_36

    .line 133
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_41
    move-exception v5

    if-eqz v0, :cond_47

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_47
    throw v5

    .line 115
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 59
    sget-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_22
    const-string v0, "vnd.android.cursor.item/vnd.com.sec.android.app.snsimagecache.receivedfile"

    return-object v0

    .line 59
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 72
    sget-object v8, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 73
    .local v2, match:I
    const/4 v6, 0x0

    .line 74
    .local v6, table:Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 75
    .local v4, rowID:J
    const/4 v3, 0x0

    .line 77
    .local v3, resultUri:Ljava/lang/String;
    packed-switch v2, :pswitch_data_5e

    .line 84
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 79
    :pswitch_27
    const-string v6, "received_image"

    .line 87
    const/4 v0, 0x0

    .line 90
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2a
    iget-object v8, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    invoke-virtual {v8}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 91
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_34} :catch_4d

    move-result-wide v4

    .line 92
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_48

    .line 93
    const/4 v3, 0x0

    .line 100
    :goto_3c
    if-eqz v0, :cond_41

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    :cond_41
    :goto_41
    if-eqz v3, :cond_47

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_47
    return-object v7

    .line 95
    :cond_48
    :try_start_48
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_4b} :catch_4d

    move-result-object v3

    goto :goto_3c

    .line 97
    :catch_4d
    move-exception v1

    .line 98
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_57

    .line 100
    if-eqz v0, :cond_41

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_41

    .line 100
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_57
    move-exception v7

    if-eqz v0, :cond_5d

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5d
    throw v7

    .line 77
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_88

    .line 208
    const-string v1, "file://"

    .line 211
    .local v1, filePrefix:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getLATMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 212
    .local v2, lastAccessTimeMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ReceivedFiles"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 217
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 218
    const v4, 0x10000001

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 222
    .local v3, parcelFile:Landroid/os/ParcelFileDescriptor;
    return-object v3

    .line 224
    .end local v3           #parcelFile:Landroid/os/ParcelFileDescriptor;
    :cond_6b
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALID URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePrefix:Ljava/lang/String;
    .end local v2           #lastAccessTimeMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_88
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALID URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 178
    sget-object v2, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 179
    .local v10, match:I
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 181
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    packed-switch v10, :pswitch_data_44

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :pswitch_27
    const-string v2, "received_image"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 195
    .local v8, c:Landroid/database/Cursor;
    :try_start_2e
    iget-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 196
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_3d} :catch_3f

    move-result-object v8

    .line 201
    :goto_3e
    return-object v8

    .line 197
    :catch_3f
    move-exception v9

    .line 198
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_3e

    .line 181
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 144
    sget-object v5, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 145
    .local v2, match:I
    const/4 v4, 0x0

    .line 146
    .local v4, table:Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, result:I
    packed-switch v2, :pswitch_data_48

    .line 155
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :pswitch_24
    const-string v4, "received_image"

    .line 158
    const/4 v0, 0x0

    .line 161
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_27
    iget-object v5, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheContentProvider;->mOpenHelper:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    invoke-virtual {v5}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_30} :catch_37

    move-result v3

    .line 166
    if-eqz v0, :cond_36

    .line 167
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    :cond_36
    :goto_36
    return v3

    .line 163
    :catch_37
    move-exception v1

    .line 164
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_41

    .line 166
    if-eqz v0, :cond_36

    .line 167
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_36

    .line 166
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_41
    move-exception v5

    if-eqz v0, :cond_47

    .line 167
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_47
    throw v5

    .line 148
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method
