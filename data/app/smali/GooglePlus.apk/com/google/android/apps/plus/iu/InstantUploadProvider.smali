.class public Lcom/google/android/apps/plus/iu/InstantUploadProvider;
.super Landroid/content/ContentProvider;
.source "InstantUploadProvider.java"


# static fields
.field private static final SETTINGS_LOCK:Ljava/lang/Object;

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

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 96
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTINGS_LOCK:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    .line 184
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_type"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "auto_upload_enabled"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "video_upload_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_roaming"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_battery"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "instant_share_eventid"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "instant_share_endtime"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "sync_photo_on_mobile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 103
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method private cancelSingleUpload(Landroid/net/Uri;)I
    .registers 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 318
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    sget-object v5, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, p1, v5}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    .line 323
    :goto_10
    return v3

    .line 321
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 322
    .local v1, id:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelTask(J)V

    move v3, v4

    .line 323
    goto :goto_10
.end method

.method private cancelUploadAll(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 278
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelUploadExistingPhotos(Ljava/lang/String;)V

    .line 282
    :cond_13
    return-void
.end method

.method private cancelUploads(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 302
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 305
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 306
    .local v7, count:I
    :goto_e
    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 307
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 308
    .local v9, id:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelTask(J)V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_30

    .line 309
    add-int/lit8 v7, v7, 0x1

    .line 310
    goto :goto_e

    .line 313
    .end local v9           #id:J
    :cond_2c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v7

    :catchall_30
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static disableInstantShare(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTINGS_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 346
    :try_start_7
    const-string v1, "com.google.android.picasasync.instant_share_eventid"

    .line 348
    .local v1, systemKey:Ljava/lang/String;
    const-string v2, "com.google.android.picasasync.instant_share_eventid"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    monitor-exit v3

    .line 350
    return-void

    .line 349
    .end local v1           #systemKey:Ljava/lang/String;
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v2
.end method

.method private queryInstantUploadStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 3
    .parameter "uri"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstantUploadStatus()Landroid/database/Cursor;

    move-result-object v0

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
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 177
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

    .line 161
    :pswitch_22
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    :goto_2e
    return-object v0

    .line 164
    :pswitch_2f
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2e

    .line 167
    :pswitch_3c
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2e

    .line 169
    :pswitch_43
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2e

    .line 171
    :pswitch_4a
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2e

    .line 173
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->queryUploadAllStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2e

    .line 175
    :pswitch_54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->queryInstantUploadStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2e

    .line 159
    nop

    :pswitch_data_5a
    .packed-switch 0x5
        :pswitch_22
        :pswitch_3c
        :pswitch_2f
        :pswitch_43
        :pswitch_4f
        :pswitch_9
        :pswitch_4a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_54
    .end packed-switch
.end method

.method private querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 204
    sget-object v7, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTINGS_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 205
    :try_start_3
    new-instance v2, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-direct {v2, p2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 206
    .local v2, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    array-length v6, p2

    new-array v1, v6, [Ljava/lang/Object;

    .line 207
    .local v1, columnValues:[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 208
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, p2

    .local v4, n:I
    :goto_15
    if-ge v3, v4, :cond_76

    .line 209
    aget-object v0, p2, v3

    .line 210
    .local v0, column:Ljava/lang/String;
    sget-object v6, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 211
    sget-object v6, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 212
    sget-object v6, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 208
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 215
    :cond_34
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown column: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 225
    .end local v0           #column:Ljava/lang/String;
    .end local v1           #columnValues:[Ljava/lang/Object;
    .end local v2           #cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .end local v3           #i:I
    .end local v4           #n:I
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :catchall_4d
    move-exception v6

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v6

    .line 218
    .restart local v0       #column:Ljava/lang/String;
    .restart local v1       #columnValues:[Ljava/lang/Object;
    .restart local v2       #cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .restart local v3       #i:I
    .restart local v4       #n:I
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_50
    :try_start_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.google.android.picasasync."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 219
    aget-object v6, v1, v3

    if-nez v6, :cond_31

    .line 220
    sget-object v6, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_31

    .line 223
    .end local v0           #column:Ljava/lang/String;
    :cond_76
    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 224
    monitor-exit v7
    :try_end_7a
    .catchall {:try_start_50 .. :try_end_7a} :catchall_4d

    return-object v2
.end method

.method private querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "tableName"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 237
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 238
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getUploadsDatabaseHelper()Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "_id=?"

    move-object v1, p1

    move-object v2, p3

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
    .line 244
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getUploadAllStatus(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "tableName"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 230
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, limit:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getUploadsDatabaseHelper()Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, v5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private resetSettings()Z
    .registers 6

    .prologue
    .line 390
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

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

    .line 392
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 394
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private updateSettings(Landroid/content/ContentValues;)Z
    .registers 14
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 354
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 355
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 357
    .local v0, changed:Z
    sget-object v10, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTINGS_LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 358
    :try_start_d
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 359
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v8, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 360
    sget-object v8, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 363
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown setting: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 381
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_58
    move-exception v8

    monitor-exit v10
    :try_end_5a
    .catchall {:try_start_d .. :try_end_5a} :catchall_58

    throw v8

    .line 366
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5b
    :try_start_5b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.google.android.picasasync."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, systemKey:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8a

    move-object v4, v9

    .line 368
    .local v4, newValue:Ljava/lang/String;
    :goto_7b
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, oldValue:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 370
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    const/4 v0, 0x1

    goto :goto_15

    .line 367
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #oldValue:Ljava/lang/String;
    :cond_8a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7b

    .line 378
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #systemKey:Ljava/lang/String;
    :cond_93
    if-eqz v0, :cond_9c

    .line 379
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettings()V

    .line 381
    :cond_9c
    monitor-exit v10
    :try_end_9d
    .catchall {:try_start_5b .. :try_end_9d} :catchall_58

    .line 382
    if-eqz v0, :cond_ad

    .line 383
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V

    .line 384
    sget-object v8, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 386
    :cond_ad
    return v0
.end method

.method private uploadAll(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 273
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->uploadExistingPhotos(Ljava/lang/String;)V

    .line 275
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7
    .parameter "context"
    .parameter "info"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 113
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "uploads"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_records"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_all"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "iu"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "uploads/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_records/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 297
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

    .line 288
    :pswitch_23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->cancelUploads(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 295
    :cond_27
    :goto_27
    return v0

    .line 290
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->cancelSingleUpload(Landroid/net/Uri;)I

    move-result v0

    goto :goto_27

    .line 292
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->cancelUploadAll(Landroid/net/Uri;)V

    goto :goto_27

    .line 295
    :pswitch_31
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->resetSettings()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    .line 286
    nop

    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_23
        :pswitch_28
        :pswitch_a
        :pswitch_a
        :pswitch_2d
        :pswitch_a
        :pswitch_31
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 140
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

    .line 128
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.iu.upload"

    .line 138
    :goto_24
    return-object v0

    .line 130
    :pswitch_25
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.iu.upload_record"

    goto :goto_24

    .line 132
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.iu.upload_all"

    goto :goto_24

    .line 134
    :pswitch_2b
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.iu.iu"

    goto :goto_24

    .line 136
    :pswitch_2e
    const-string v0, "vnd.android.cursor.item/vnd.google.android.apps.plus.iu.upload"

    goto :goto_24

    .line 138
    :pswitch_31
    const-string v0, "vnd.android.cursor.item/vnd.google.android.apps.plus.iu.upload_record"

    goto :goto_24

    .line 126
    :pswitch_data_34
    .packed-switch 0x5
        :pswitch_22
        :pswitch_2e
        :pswitch_25
        :pswitch_31
        :pswitch_28
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, statsId:I
    :try_start_17
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_60

    .line 265
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

    .line 268
    :catchall_39
    move-exception v3

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    throw v3

    .line 258
    :sswitch_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->createNew(Landroid/content/ContentValues;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/iu/UploadsManager;->addManualUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)J

    move-result-wide v0

    .line 260
    .local v0, id:J
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->getUploadUri(J)Landroid/net/Uri;
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_39

    move-result-object v3

    .line 268
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    .end local v0           #id:J
    :goto_55
    return-object v3

    .line 262
    :sswitch_56
    :try_start_56
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->uploadAll(Landroid/content/ContentValues;)V

    .line 263
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadAllUri:Landroid/net/Uri;
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_39

    .line 268
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    goto :goto_55

    .line 256
    nop

    :sswitch_data_60
    .sparse-switch
        0x5 -> :sswitch_3e
        0x9 -> :sswitch_56
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 147
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

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, statsId:I
    :try_start_1b
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->incrementQueryResultCount(I)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    .line 153
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    return-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_2a
    move-exception v2

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 333
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

    .line 330
    :pswitch_22
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29

    .line 328
    :pswitch_data_2c
    .packed-switch 0xb
        :pswitch_22
    .end packed-switch
.end method
