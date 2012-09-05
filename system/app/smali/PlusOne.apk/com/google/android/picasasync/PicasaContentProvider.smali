.class public Lcom/google/android/picasasync/PicasaContentProvider;
.super Landroid/content/ContentProvider;
.source "PicasaContentProvider.java"


# static fields
.field private static final ALBUM_TYPE_WHERE:Ljava/lang/String;

.field private static final SETTING_DEFAULTS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTING_DEPRECATED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPLOAD_RECORD_TABLE:Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE:Ljava/lang/String;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (SELECT album_id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 213
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    .line 362
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "auto_upload_enabled"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_picasa_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "video_upload_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_roaming"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_battery"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "sync_photo_on_mobile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 221
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method private cancelImmediateSync(Landroid/net/Uri;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 611
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 612
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    .line 613
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid URI: expect /sync_request/<task_ID>"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    :cond_14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 617
    .local v1, taskId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/picasasync/ImmediateSync;->cancelTask(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    :goto_28
    return v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private cancelSingleUpload(Landroid/net/Uri;)I
    .registers 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 637
    sget-object v3, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    sget-object v5, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, p1, v5}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 638
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    .line 642
    :goto_10
    return v3

    .line 640
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 641
    .local v1, id:J
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->cancelTask(J)V

    move v3, v4

    .line 642
    goto :goto_10
.end method

.method private cancelUploadAll(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 585
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 587
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/picasasync/UploadsManager;->cancelUploadExistingPhotos(Ljava/lang/String;)V

    .line 589
    :cond_13
    return-void
.end method

.method private cancelUploads(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 621
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasasync/PicasaContentProvider;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 624
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 625
    .local v7, count:I
    :goto_e
    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 626
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 627
    .local v9, id:J
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/google/android/picasasync/UploadsManager;->cancelTask(J)V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_30

    .line 628
    add-int/lit8 v7, v7, 0x1

    .line 629
    goto :goto_e

    .line 632
    .end local v9           #id:J
    :cond_2c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v7

    :catchall_30
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getLastSegmentAsLong(Landroid/net/Uri;J)J
    .registers 9
    .parameter "uri"
    .parameter "defaultValue"

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 647
    .local v2, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_23

    .line 648
    const-string v3, "PicasaContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local p1
    :goto_22
    return-wide p1

    .line 651
    .restart local p1
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 653
    .local v1, last:Ljava/lang/String;
    :try_start_2f
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_34

    move-result-wide p1

    goto :goto_22

    .line 654
    :catch_34
    move-exception v0

    .line 655
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "PicasaContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pasre fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method private insertSyncRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 544
    const-string v1, "task"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, task:Ljava/lang/String;
    const-string v1, "manual_metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 547
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    .line 557
    .end local p1
    :cond_1a
    :goto_1a
    return-object p1

    .line 548
    .restart local p1
    :cond_1b
    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 549
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    goto :goto_1a

    .line 550
    :cond_30
    const-string v1, "new_photo_upload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 551
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    goto :goto_1a

    .line 552
    :cond_46
    const-string v1, "immediate_albums"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->requestImmediateSyncOnAlbumList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1a

    .line 554
    :cond_53
    const-string v1, "immediate_photos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->requestImmediateSyncOnPhotos(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1a
.end method

.method private queryAlbums(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    if-nez p3, :cond_1b

    .line 424
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, type:Ljava/lang/String;
    const-string v0, "image"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 426
    sget-object p3, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 427
    new-array p4, v2, [Ljava/lang/String;

    .end local p4
    const-string v0, "image/%"

    aput-object v0, p4, v1

    .line 433
    .end local v9           #type:Ljava/lang/String;
    .restart local p4
    :cond_1b
    :goto_1b
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 428
    .end local v8           #limit:Ljava/lang/String;
    .restart local v9       #type:Ljava/lang/String;
    :cond_37
    const-string v0, "video"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 429
    sget-object p3, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 430
    new-array p4, v2, [Ljava/lang/String;

    .end local p4
    const-string v0, "video/%"

    aput-object v0, p4, v1

    .restart local p4
    goto :goto_1b
.end method

.method private queryFingerprint(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "contentUris"

    .prologue
    .line 401
    const-string v7, "1"

    const-string v8, "force_recalculate"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 402
    .local v4, forceRecalculate:Z
    new-instance v1, Lcom/google/android/picasasync/PicasaMatrixCursor;

    invoke-direct {v1, p2}, Lcom/google/android/picasasync/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 403
    .local v1, cursor:Lcom/google/android/picasasync/PicasaMatrixCursor;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadsManager;->getFingerprintManager()Lcom/google/android/picasasync/FingerprintManager;

    move-result-object v3

    .line 404
    .local v3, fm:Lcom/google/android/picasasync/FingerprintManager;
    array-length v7, p2

    new-array v0, v7, [Ljava/lang/Object;

    .line 405
    .local v0, columnValues:[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    array-length v6, p2

    .local v6, n:I
    :goto_22
    if-ge v5, v6, :cond_37

    .line 406
    aget-object v7, p2, v5

    invoke-virtual {v3, v7, v4}, Lcom/google/android/picasasync/FingerprintManager;->getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    .line 407
    .local v2, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v2, :cond_32

    const/4 v7, 0x0

    :goto_2d
    aput-object v7, v0, v5

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 407
    :cond_32
    invoke-virtual {v2}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v7

    goto :goto_2d

    .line 409
    .end local v2           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_37
    invoke-virtual {v1, v0}, Lcom/google/android/picasasync/PicasaMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 410
    return-object v1
.end method

.method private queryImmediateSyncResult(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    .line 343
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 344
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    .line 345
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid URI: expect /sync_request/<task_ID>"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 349
    :cond_14
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 351
    .local v3, taskId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/picasasync/ImmediateSync;->getResult(Ljava/lang/String;)I

    move-result v2

    .line 353
    .local v2, result:I
    new-instance v0, Lcom/google/android/picasasync/PicasaMatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "immediate_sync_result"

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Lcom/google/android/picasasync/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 355
    .local v0, cursor:Lcom/google/android/picasasync/PicasaMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaMatrixCursor;->newRow()Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;

    .line 356
    return-object v0
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    .line 336
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_22
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryUsers(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 334
    :goto_26
    return-object v0

    .line 306
    :pswitch_27
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryAlbums(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 309
    :pswitch_2c
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 312
    :pswitch_31
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasasync/PicasaContentProvider;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 315
    :pswitch_3e
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasasync/PicasaContentProvider;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 318
    :pswitch_4b
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->queryFingerprint(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 320
    :pswitch_50
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleUser(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 322
    :pswitch_55
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 324
    :pswitch_5a
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySinglePhoto(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 326
    :pswitch_5f
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 328
    :pswitch_66
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 330
    :pswitch_6d
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 332
    :pswitch_72
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->queryUploadAllStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 334
    :pswitch_77
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->queryImmediateSyncResult(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 301
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_5a
        :pswitch_27
        :pswitch_55
        :pswitch_31
        :pswitch_5f
        :pswitch_3e
        :pswitch_66
        :pswitch_72
        :pswitch_4b
        :pswitch_6d
        :pswitch_9
        :pswitch_77
        :pswitch_22
        :pswitch_50
    .end packed-switch
.end method

.method private queryPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 441
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 377
    monitor-enter p0

    :try_start_1
    new-instance v2, Lcom/google/android/picasasync/PicasaMatrixCursor;

    invoke-direct {v2, p2}, Lcom/google/android/picasasync/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 378
    .local v2, cursor:Lcom/google/android/picasasync/PicasaMatrixCursor;
    array-length v6, p2

    new-array v1, v6, [Ljava/lang/Object;

    .line 379
    .local v1, columnValues:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 380
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v6, "PicasaContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "querySettings: defaults: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, p2

    .local v4, n:I
    :goto_2d
    if-ge v3, v4, :cond_8e

    .line 382
    aget-object v0, p2, v3

    .line 383
    .local v0, column:Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 384
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 385
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 381
    :cond_49
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 388
    :cond_4c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown column: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_65

    .line 377
    .end local v0           #column:Ljava/lang/String;
    .end local v1           #columnValues:[Ljava/lang/Object;
    .end local v2           #cursor:Lcom/google/android/picasasync/PicasaMatrixCursor;
    .end local v3           #i:I
    .end local v4           #n:I
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :catchall_65
    move-exception v6

    monitor-exit p0

    throw v6

    .line 391
    .restart local v0       #column:Ljava/lang/String;
    .restart local v1       #columnValues:[Ljava/lang/Object;
    .restart local v2       #cursor:Lcom/google/android/picasasync/PicasaMatrixCursor;
    .restart local v3       #i:I
    .restart local v4       #n:I
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_68
    :try_start_68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.google.android.picasasync."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 392
    aget-object v6, v1, v3

    if-nez v6, :cond_49

    .line 393
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_49

    .line 396
    .end local v0           #column:Ljava/lang/String;
    :cond_8e
    invoke-virtual {v2, v1}, Lcom/google/android/picasasync/PicasaMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_68 .. :try_end_91} :catchall_65

    .line 397
    monitor-exit p0

    return-object v2
.end method

.method private querySingleAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 474
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 475
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private querySinglePhoto(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 467
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 468
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "tableName"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 488
    const-string v3, "_id=? AND uid in (?,0)"

    .line 489
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 491
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->getUploadsDatabaseHelper()Lcom/google/android/picasasync/UploadsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private querySingleUser(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 481
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 482
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryUploadAllStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 4
    .parameter "uri"

    .prologue
    .line 497
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/picasasync/UploadsManager;->getUploadStatus(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "tableName"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 449
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, limit:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 451
    const-string p4, "uid in (?,0)"

    .line 452
    const/4 v0, 0x1

    new-array p5, v0, [Ljava/lang/String;

    .end local p5
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v0

    .line 461
    .restart local p5
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->getUploadsDatabaseHelper()Lcom/google/android/picasasync/UploadsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 454
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid in (?,0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 455
    if-nez p5, :cond_6c

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 458
    .local v9, newArgs:[Ljava/lang/String;
    :goto_5d
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 459
    move-object p5, v9

    goto :goto_1c

    .line 455
    .end local v9           #newArgs:[Ljava/lang/String;
    :cond_6c
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    invoke-static {p5, v0}, Lcom/android/gallery3d/common/Utils;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_5d
.end method

.method private queryUsers(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 415
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private requestImmediateSyncOnAlbumList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 561
    const-string v3, "account"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 564
    .local v1, context:Landroid/content/Context;
    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumListForAllAccounts()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, taskId:Ljava/lang/String;
    :goto_14
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 564
    .end local v2           #taskId:Ljava/lang/String;
    :cond_21
    invoke-static {v1}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumListForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14
.end method

.method private requestImmediateSyncOnPhotos(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 571
    const-string v2, "album_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, albumId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 573
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "album ID missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, taskId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private resetSettings()Z
    .registers 5

    .prologue
    .line 712
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_f

    .line 714
    .end local v1           #key:Ljava/lang/String;
    :cond_1f
    invoke-direct {p0, v2}, Lcom/google/android/picasasync/PicasaContentProvider;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private updateSettings(Landroid/content/ContentValues;)Z
    .registers 13
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 683
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 685
    .local v0, changed:Z
    monitor-enter p0

    .line 686
    :try_start_b
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 687
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v7, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    .line 688
    sget-object v7, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 691
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown setting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 701
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_56
    move-exception v7

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_56

    throw v7

    .line 694
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_59
    :try_start_59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.google.android.picasasync."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 695
    .local v5, systemKey:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_88

    move-object v6, v8

    .line 696
    .local v6, value:Ljava/lang/String;
    :goto_79
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 697
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 698
    const/4 v0, 0x1

    goto :goto_13

    .line 695
    .end local v6           #value:Ljava/lang/String;
    :cond_88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_79

    .line 701
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #systemKey:Ljava/lang/String;
    :cond_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_59 .. :try_end_92} :catchall_56

    .line 702
    if-eqz v0, :cond_b3

    .line 703
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 704
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 705
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettings()V

    .line 706
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 708
    .end local v1           #context:Landroid/content/Context;
    :cond_b3
    return v0
.end method

.method private uploadAll(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 580
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/picasasync/UploadsManager;->uploadExistingPhotos(Ljava/lang/String;)V

    .line 582
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7
    .parameter "context"
    .parameter "info"

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 234
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "photos"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albums"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "users"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "uploads"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_records"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_all"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "fingerprint"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albums/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "users/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "uploads/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "sync_request"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "sync_request/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_records/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albumcovers/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 593
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 606
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :pswitch_23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaContentProvider;->cancelUploads(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 604
    :cond_27
    :goto_27
    return v0

    .line 597
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->cancelSingleUpload(Landroid/net/Uri;)I

    move-result v0

    goto :goto_27

    .line 599
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->cancelUploadAll(Landroid/net/Uri;)V

    goto :goto_27

    .line 602
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->cancelImmediateSync(Landroid/net/Uri;)I

    move-result v0

    goto :goto_27

    .line 604
    :pswitch_36
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->resetSettings()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    .line 593
    :pswitch_data_3e
    .packed-switch 0x5
        :pswitch_23
        :pswitch_28
        :pswitch_a
        :pswitch_a
        :pswitch_2d
        :pswitch_a
        :pswitch_36
        :pswitch_a
        :pswitch_31
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 282
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.item"

    .line 280
    :goto_24
    return-object v0

    .line 260
    :pswitch_25
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.album"

    goto :goto_24

    .line 262
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.user"

    goto :goto_24

    .line 264
    :pswitch_2b
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.upload"

    goto :goto_24

    .line 266
    :pswitch_2e
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.upload_record"

    goto :goto_24

    .line 268
    :pswitch_31
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.upload_all"

    goto :goto_24

    .line 270
    :pswitch_34
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.item"

    goto :goto_24

    .line 272
    :pswitch_37
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album"

    goto :goto_24

    .line 274
    :pswitch_3a
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.user"

    goto :goto_24

    .line 276
    :pswitch_3d
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.upload"

    goto :goto_24

    .line 278
    :pswitch_40
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.upload_record"

    goto :goto_24

    .line 280
    :pswitch_43
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album_cover"

    goto :goto_24

    .line 256
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_22
        :pswitch_34
        :pswitch_25
        :pswitch_37
        :pswitch_2b
        :pswitch_3d
        :pswitch_2e
        :pswitch_40
        :pswitch_31
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_28
        :pswitch_3a
        :pswitch_43
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 525
    .local v2, statsId:I
    :try_start_17
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_7e

    .line 536
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_39

    .line 539
    :catchall_39
    move-exception v3

    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    throw v3

    .line 527
    :sswitch_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {p2, v4}, Lcom/google/android/picasasync/UploadTaskEntry;->createNew(Landroid/content/ContentValues;I)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/picasasync/UploadsManager;->addTask(Lcom/google/android/picasasync/UploadTaskEntry;)J

    move-result-wide v0

    .line 529
    .local v0, id:J
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/google/android/picasasync/PicasaFacade;->getUploadUri(J)Landroid/net/Uri;
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_39

    move-result-object v3

    .line 539
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    .end local v0           #id:J
    :goto_61
    return-object v3

    .line 531
    :sswitch_62
    :try_start_62
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->uploadAll(Landroid/content/ContentValues;)V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getUploadAllUri()Landroid/net/Uri;
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_39

    move-result-object v3

    .line 539
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_61

    .line 534
    :sswitch_75
    :try_start_75
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->insertSyncRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_39

    move-result-object v3

    .line 539
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_61

    .line 525
    nop

    :sswitch_data_7e
    .sparse-switch
        0x5 -> :sswitch_3e
        0x9 -> :sswitch_62
        0xc -> :sswitch_75
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 228
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 506
    .local v0, statsId:I
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_62

    .line 514
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3d

    .line 517
    :catchall_3d
    move-exception v1

    invoke-static {v0}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    throw v1

    .line 508
    :sswitch_42
    :try_start_42
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaStore;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasasync/PicasaStore;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_3d

    move-result-object v1

    .line 517
    invoke-static {v0}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    :goto_51
    return-object v1

    .line 511
    :sswitch_52
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaStore;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasasync/PicasaStore;->openAlbumCover(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_3d

    move-result-object v1

    .line 517
    invoke-static {v0}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_51

    .line 506
    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_42
        0x10 -> :sswitch_52
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, statsId:I
    :try_start_1b
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 292
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->incrementQueryResultCount(I)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    .line 295
    invoke-static {v1}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    return-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_2a
    move-exception v2

    invoke-static {v1}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 662
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_50

    .line 677
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 665
    :sswitch_26
    const-string v5, "cache_flag"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 666
    .local v2, cachingFlag:Ljava/lang/Integer;
    if-nez v2, :cond_30

    move v3, v4

    .line 674
    .end local v2           #cachingFlag:Ljava/lang/Integer;
    :cond_2f
    :goto_2f
    return v3

    .line 667
    .restart local v2       #cachingFlag:Ljava/lang/Integer;
    :cond_30
    invoke-static {p1, v6, v7}, Lcom/google/android/picasasync/PicasaContentProvider;->getLastSegmentAsLong(Landroid/net/Uri;J)J

    move-result-wide v0

    .line 668
    .local v0, albumId:J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_2f

    .line 669
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/picasasync/PrefetchHelper;->setAlbumCachingFlag(JI)V

    goto :goto_2f

    .line 674
    .end local v0           #albumId:J
    .end local v2           #cachingFlag:Ljava/lang/Integer;
    :sswitch_48
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_2f

    move v3, v4

    goto :goto_2f

    .line 662
    :sswitch_data_50
    .sparse-switch
        0x4 -> :sswitch_26
        0xb -> :sswitch_48
    .end sparse-switch
.end method
