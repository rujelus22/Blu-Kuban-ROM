.class public Lcom/google/android/picasasync/PicasaContentProvider;
.super Landroid/content/ContentProvider;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;
    }
.end annotation


# static fields
.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final ALBUM_TYPE_WHERE:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static PROJECTION_CONTENT_URL:[Ljava/lang/String;

.field private static PROJECTION_SCREENNAIL_URL:[Ljava/lang/String;

.field private static PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

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

.field private static final USER_TABLE_NAME:Ljava/lang/String;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->USER_TABLE_NAME:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (SELECT album_id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

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

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    .line 302
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_picasa_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_roaming"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_battery"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "sync_photo_on_mobile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "auto_upload_enabled"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_name"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_type"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "sync_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "video_upload_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

    .line 499
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "content_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->PROJECTION_CONTENT_URL:[Ljava/lang/String;

    .line 500
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "screennail_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->PROJECTION_SCREENNAIL_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 179
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 363
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private cancelImmediateSync(Landroid/net/Uri;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 598
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    .line 600
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid URI: expect /sync_request/<task_ID>"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 604
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

.method private static getItemIdFromUri(Landroid/net/Uri;)J
    .registers 5
    .parameter "uri"

    .prologue
    .line 491
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-wide v1

    .line 494
    :goto_f
    return-wide v1

    .line 492
    :catch_10
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "PicasaContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get id from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-wide/16 v1, -0x1

    goto :goto_f
.end method

.method private static getLastSegmentAsLong(Landroid/net/Uri;J)J
    .registers 9
    .parameter "uri"
    .parameter "defaultValue"

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 609
    .local v2, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_23

    .line 610
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

    .line 618
    .end local p1
    :goto_22
    return-wide p1

    .line 613
    .restart local p1
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, last:Ljava/lang/String;
    :try_start_2f
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_34

    move-result-wide p1

    goto :goto_22

    .line 616
    :catch_34
    move-exception v0

    .line 617
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
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 552
    const-string v1, "task"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, task:Ljava/lang/String;
    const-string v1, "manual_metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 555
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    .line 563
    .end local p1
    :cond_1a
    :goto_1a
    return-object p1

    .line 556
    .restart local p1
    :cond_1b
    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 557
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    goto :goto_1a

    .line 558
    :cond_30
    const-string v1, "immediate_albums"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->requestImmediateSyncOnAlbumList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1a

    .line 560
    :cond_3d
    const-string v1, "immediate_photos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->requestImmediateSyncOnPhotos(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1a
.end method

.method private lookupAlbumCoverUrl(J)Ljava/lang/String;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 504
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 505
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider;->PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 509
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_32

    :try_start_25
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_3f

    move-result v1

    if-eqz v1, :cond_36

    .line 512
    :cond_32
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_35
    return-object v5

    .line 510
    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3f

    move-result-object v5

    .line 512
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_35

    :catchall_3f
    move-exception v1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private lookupContentUrl(JLjava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "id"
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 518
    if-nez p3, :cond_6

    const-string p3, "full"

    .line 520
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 521
    .local v8, context:Landroid/content/Context;
    const-string v1, "full"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider;->PROJECTION_CONTENT_URL:[Ljava/lang/String;

    .line 524
    .local v2, projection:[Ljava/lang/String;
    :goto_14
    invoke-static {v8}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 525
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 529
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3e

    :try_start_31
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_4e

    move-result v1

    if-eqz v1, :cond_45

    .line 532
    :cond_3e
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_41
    return-object v5

    .line 521
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_42
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider;->PROJECTION_SCREENNAIL_URL:[Ljava/lang/String;

    goto :goto_14

    .line 530
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_45
    const/4 v1, 0x0

    :try_start_46
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4e

    move-result-object v5

    .line 532
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_41

    :catchall_4e
    move-exception v1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
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

    .line 348
    if-nez p3, :cond_1b

    .line 349
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, type:Ljava/lang/String;
    const-string v0, "image"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 351
    sget-object p3, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 352
    new-array p4, v2, [Ljava/lang/String;

    .end local p4
    const-string v0, "image/%"

    aput-object v0, p4, v1

    .line 358
    .end local v9           #type:Ljava/lang/String;
    .restart local p4
    :cond_1b
    :goto_1b
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 353
    .end local v8           #limit:Ljava/lang/String;
    .restart local v9       #type:Ljava/lang/String;
    :cond_33
    const-string v0, "video"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 354
    sget-object p3, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 355
    new-array p4, v2, [Ljava/lang/String;

    .end local p4
    const-string v0, "video/%"

    aput-object v0, p4, v1

    .restart local p4
    goto :goto_1b
.end method

.method private queryImmediateSyncResult(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    .line 285
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid URI: expect /sync_request/<task_ID>"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :cond_14
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    .local v3, taskId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/picasasync/ImmediateSync;->getResult(Ljava/lang/String;)I

    move-result v2

    .line 293
    .local v2, result:I
    new-instance v0, Lcom/google/android/picasastore/PicasaMatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "immediate_sync_result"

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 295
    .local v0, cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/picasastore/PicasaMatrixCursor;->newRow()Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;

    .line 296
    return-object v0
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 276
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

    .line 253
    :pswitch_22
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryUsers(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 274
    :goto_26
    return-object v0

    .line 256
    :pswitch_27
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryAlbums(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 259
    :pswitch_2c
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryPostPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 261
    :pswitch_31
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->queryPostAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 263
    :pswitch_36
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 266
    :pswitch_3b
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleUser(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 268
    :pswitch_40
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySingleAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 270
    :pswitch_45
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySinglePhoto(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 272
    :pswitch_4a
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 274
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->queryImmediateSyncResult(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 251
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_36
        :pswitch_45
        :pswitch_27
        :pswitch_40
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4a
        :pswitch_9
        :pswitch_4f
        :pswitch_22
        :pswitch_3b
        :pswitch_9
        :pswitch_2c
        :pswitch_31
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

    .line 415
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryPostAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 394
    const-string v3, "album_type = \'Buzz\'"

    .line 395
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 396
    .local v4, args:[Ljava/lang/String;
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, userId:Ljava/lang/String;
    if-eqz v9, :cond_14

    .line 398
    const-string v3, "album_type = \'Buzz\' AND user_id = ?"

    .line 399
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 401
    .restart local v4       #args:[Ljava/lang/String;
    :cond_14
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryPostPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 407
    new-instance v9, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;

    invoke-direct {v9, p1, p5}, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 408
    .local v9, where:Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    iget-object v3, v9, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selection:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v9, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->sortOrder:Ljava/lang/String;

    iget-object v8, v9, Lcom/google/android/picasasync/PicasaContentProvider$WhereEntry;->sortLimit:Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    new-instance v2, Lcom/google/android/picasastore/PicasaMatrixCursor;

    invoke-direct {v2, p2}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 318
    .local v2, cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    array-length v6, p2

    new-array v1, v6, [Ljava/lang/Object;

    .line 319
    .local v1, columnValues:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 320
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, p2

    .local v4, n:I
    :goto_13
    if-ge v3, v4, :cond_74

    .line 321
    aget-object v0, p2, v3

    .line 322
    .local v0, column:Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 323
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 324
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 320
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 327
    :cond_32
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
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4b

    .line 317
    .end local v0           #column:Ljava/lang/String;
    .end local v1           #columnValues:[Ljava/lang/Object;
    .end local v2           #cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    .end local v3           #i:I
    .end local v4           #n:I
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :catchall_4b
    move-exception v6

    monitor-exit p0

    throw v6

    .line 330
    .restart local v0       #column:Ljava/lang/String;
    .restart local v1       #columnValues:[Ljava/lang/Object;
    .restart local v2       #cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    .restart local v3       #i:I
    .restart local v4       #n:I
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_4e
    :try_start_4e
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

    .line 331
    aget-object v6, v1, v3

    if-nez v6, :cond_2f

    .line 332
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_2f

    .line 335
    .end local v0           #column:Ljava/lang/String;
    :cond_74
    invoke-virtual {v2, v1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_4b

    .line 336
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

    .line 427
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 428
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

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

    .line 421
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 422
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v2, p2

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

    .line 433
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 434
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->USER_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
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

    .line 341
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider;->USER_TABLE_NAME:Ljava/lang/String;

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
    .line 567
    const-string v3, "account"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 570
    .local v1, context:Landroid/content/Context;
    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumListForAllAccounts()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, taskId:Ljava/lang/String;
    :goto_14
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 570
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
    .line 577
    const-string v2, "album_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, albumId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 579
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "album ID missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 581
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
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
    .registers 6

    .prologue
    .line 673
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 675
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 677
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    invoke-direct {p0, v2}, Lcom/google/android/picasasync/PicasaContentProvider;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private updateSettings(Landroid/content/ContentValues;)Z
    .registers 13
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    .line 644
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 645
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 647
    .local v0, changed:Z
    monitor-enter p0

    .line 648
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

    .line 649
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v7, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    .line 650
    sget-object v7, Lcom/google/android/picasasync/PicasaContentProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 653
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

    .line 663
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_56
    move-exception v7

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_56

    throw v7

    .line 656
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

    .line 657
    .local v5, systemKey:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_88

    move-object v6, v8

    .line 658
    .local v6, value:Ljava/lang/String;
    :goto_79
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 659
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 660
    const/4 v0, 0x1

    goto :goto_13

    .line 657
    .end local v6           #value:Ljava/lang/String;
    :cond_88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_79

    .line 663
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #systemKey:Ljava/lang/String;
    :cond_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_59 .. :try_end_92} :catchall_56

    .line 664
    if-eqz v0, :cond_ac

    .line 665
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 666
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 667
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 669
    .end local v1           #context:Landroid/content/Context;
    :cond_ac
    return v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7
    .parameter "context"
    .parameter "info"

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 194
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "photos"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albums"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "posts"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "posts_album"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "users"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albums/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "users/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "sync_request"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "sync_request/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albumcovers/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 593
    :pswitch_9
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

    .line 589
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider;->cancelImmediateSync(Landroid/net/Uri;)I

    move-result v0

    .line 591
    :goto_26
    return v0

    :pswitch_27
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->resetSettings()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_26

    :cond_2f
    const/4 v0, 0x0

    goto :goto_26

    .line 587
    nop

    :pswitch_data_32
    .packed-switch 0x9
        :pswitch_27
        :pswitch_9
        :pswitch_22
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 232
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

    .line 214
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.item"

    .line 230
    :goto_24
    return-object v0

    .line 216
    :pswitch_25
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.album"

    goto :goto_24

    .line 218
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.post"

    goto :goto_24

    .line 220
    :pswitch_2b
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.post_album"

    goto :goto_24

    .line 222
    :pswitch_2e
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.user"

    goto :goto_24

    .line 224
    :pswitch_31
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.item"

    goto :goto_24

    .line 226
    :pswitch_34
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album"

    goto :goto_24

    .line 228
    :pswitch_37
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.user"

    goto :goto_24

    .line 230
    :pswitch_3a
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album_cover"

    goto :goto_24

    .line 212
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_31
        :pswitch_25
        :pswitch_34
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2e
        :pswitch_37
        :pswitch_3a
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 540
    .local v0, statsId:I
    :try_start_17
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_46

    .line 544
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_39

    .line 547
    :catchall_39
    move-exception v1

    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v1

    .line 542
    :pswitch_3e
    :try_start_3e
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->insertSyncRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_39

    move-result-object v1

    .line 547
    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    return-object v1

    .line 540
    :pswitch_data_46
    .packed-switch 0xa
        :pswitch_3e
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 188
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OPEN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v7

    .line 442
    .local v7, statsId:I
    :try_start_1f
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 443
    .local v5, matchType:I
    sparse-switch v5, :sswitch_data_ee

    .line 482
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_41

    .line 485
    .end local v5           #matchType:I
    :catchall_41
    move-exception v8

    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v8

    .line 446
    .restart local v5       #matchType:I
    :sswitch_46
    :try_start_46
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_41

    move-result-object v1

    .line 447
    .local v1, context:Landroid/content/Context;
    const/4 v6, 0x0

    .line 450
    .local v6, redirectUri:Landroid/net/Uri;
    :try_start_4b
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-nez v8, :cond_55

    .line 451
    invoke-static {v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 454
    :cond_55
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    invoke-virtual {v9}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 456
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_41
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_6e} :catch_73

    move-result-object v8

    .line 485
    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    :goto_72
    return-object v8

    .line 457
    :catch_73
    move-exception v2

    .line 458
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_74
    const-string v8, "content_url"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, contentUrl:Ljava/lang/String;
    const-string v8, "w"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_84

    if-eqz v0, :cond_85

    :cond_84
    throw v2

    .line 462
    :cond_85
    const-string v8, "PicasaContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException, look up photo metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaContentProvider;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v3

    .line 466
    .local v3, id:J
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_bd

    .line 467
    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 470
    :cond_bd
    const/16 v8, 0xe

    if-ne v5, v8, :cond_c8

    invoke-direct {p0, v3, v4}, Lcom/google/android/picasasync/PicasaContentProvider;->lookupAlbumCoverUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_c5
    if-nez v0, :cond_d3

    throw v2

    .line 470
    :cond_c8
    const-string v8, "type"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v4, v8}, Lcom/google/android/picasasync/PicasaContentProvider;->lookupContentUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    .line 475
    :cond_d3
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "content_url"

    invoke-virtual {v8, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 478
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_e8
    .catchall {:try_start_74 .. :try_end_e8} :catchall_41

    move-result-object v8

    .line 485
    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_72

    .line 443
    nop

    :sswitch_data_ee
    .sparse-switch
        0x2 -> :sswitch_46
        0xe -> :sswitch_46
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
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, statsId:I
    :try_start_1f
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->incrementQueryResultCount(I)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2e

    .line 245
    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    return-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_2e
    move-exception v2

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

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

    .line 624
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_50

    .line 639
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

    .line 627
    :sswitch_26
    const-string v5, "cache_flag"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 628
    .local v2, cachingFlag:Ljava/lang/Integer;
    if-nez v2, :cond_30

    move v3, v4

    .line 636
    .end local v2           #cachingFlag:Ljava/lang/Integer;
    :cond_2f
    :goto_2f
    return v3

    .line 629
    .restart local v2       #cachingFlag:Ljava/lang/Integer;
    :cond_30
    invoke-static {p1, v6, v7}, Lcom/google/android/picasasync/PicasaContentProvider;->getLastSegmentAsLong(Landroid/net/Uri;J)J

    move-result-wide v0

    .line 630
    .local v0, albumId:J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_2f

    .line 631
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/picasasync/PrefetchHelper;->setAlbumCachingFlag(JI)V

    goto :goto_2f

    .line 636
    .end local v0           #albumId:J
    .end local v2           #cachingFlag:Ljava/lang/Integer;
    :sswitch_48
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/PicasaContentProvider;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_2f

    move v3, v4

    goto :goto_2f

    .line 624
    :sswitch_data_50
    .sparse-switch
        0x4 -> :sswitch_26
        0x9 -> :sswitch_48
    .end sparse-switch
.end method
