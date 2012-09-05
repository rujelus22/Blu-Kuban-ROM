.class public Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PhotosHomeGridLoader.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field private static sRowId:J


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mHideCirclePhotos:Z

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z

.field private final mPhotosHome:Z

.field private final mUserId:J

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notification_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "owner_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "stream_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id_1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "url_1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "photo_id_2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "url_2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "photo_id_3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "url_3"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "photo_id_4"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "url_4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "photo_id_5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "url_5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZ)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "userId"
    .parameter "userName"
    .parameter "photosHome"
    .parameter "hideCirclePhotos"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 91
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 96
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 97
    iput-wide p3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    .line 98
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    .line 99
    iput-boolean p6, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mPhotosHome:Z

    .line 100
    iput-boolean p7, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mHideCirclePhotos:Z

    .line 101
    return-void
.end method

.method private loadAlbumList(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 13
    .parameter "matrixCursor"

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 452
    .local v8, start:J
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 454
    .local v1, albumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/phone/AlbumViewQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sort_order, timestamp DESC, album_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 457
    .local v6, albumCursor:Landroid/database/Cursor;
    const-string v0, "PhotosHomeLoader"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 458
    const-string v2, "PhotosHomeLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "albumCursor(1): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_f0

    const-string v0, "N/A"

    :goto_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_53
    if-eqz v6, :cond_5f

    :try_start_55
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5f

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 464
    const/4 v6, 0x0

    .line 466
    :cond_5f
    if-nez v6, :cond_c1

    .line 468
    new-instance v7, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 470
    .local v7, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_fa

    .line 471
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbumList()V

    .line 475
    :goto_7d
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 481
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/phone/AlbumViewQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_order, timestamp DESC, album_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 484
    const-string v0, "PhotosHomeLoader"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 485
    const-string v2, "PhotosHomeLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "albumCursor(2): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_12d

    const-string v0, "N/A"

    :goto_b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v7           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_c1
    if-eqz v6, :cond_c6

    .line 490
    invoke-direct {p0, v6, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->processAlbumCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    :try_end_c6
    .catchall {:try_start_55 .. :try_end_c6} :catchall_102

    .line 493
    :cond_c6
    if-eqz v6, :cond_cb

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_cb
    const-string v0, "PhotosHomeLoader"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 497
    const-string v0, "PhotosHomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#loadAlbumList; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->logDelta(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_ef
    return-void

    .line 458
    :cond_f0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_48

    .line 473
    .restart local v7       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_fa
    :try_start_fa
    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    const/4 v0, 0x1

    invoke-virtual {v7, v2, v3, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfileAlbumList(JZ)V
    :try_end_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_102

    goto/16 :goto_7d

    .line 493
    .end local v7           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :catchall_102
    move-exception v0

    if-eqz v6, :cond_108

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_108
    const-string v2, "PhotosHomeLoader"

    invoke-static {v2, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 497
    const-string v2, "PhotosHomeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#loadAlbumList; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->logDelta(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_12c
    throw v0

    .line 485
    .restart local v7       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_12d
    :try_start_12d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_134
    .catchall {:try_start_12d .. :try_end_134} :catchall_102

    move-result-object v0

    goto :goto_b6
.end method

.method private loadPhotosHome(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 13
    .parameter "matrixCursor"

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 408
    .local v8, start:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotosHomeQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "type, _id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 413
    .local v7, photosHomeCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2b

    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2b

    .line 414
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 415
    const/4 v7, 0x0

    .line 417
    :cond_2b
    if-nez v7, :cond_5a

    .line 419
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 421
    .local v6, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->photosHome()V

    .line 422
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotosHomeQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "type, _id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 433
    .end local v6           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_5a
    if-eqz v7, :cond_5f

    .line 434
    invoke-direct {p0, v7, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->processPhotosHomeCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    :try_end_5f
    .catchall {:try_start_21 .. :try_end_5f} :catchall_89

    .line 437
    :cond_5f
    if-eqz v7, :cond_64

    .line 438
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_64
    const-string v0, "PhotosHomeLoader"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 441
    const-string v0, "PhotosHomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#loadPhotosHome; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->logDelta(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_88
    return-void

    .line 437
    :catchall_89
    move-exception v0

    if-eqz v7, :cond_8f

    .line 438
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_8f
    const-string v1, "PhotosHomeLoader"

    invoke-static {v1, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 441
    const-string v1, "PhotosHomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#loadPhotosHome; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->logDelta(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_b3
    throw v0
.end method

.method private loadPhotosOfUser(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 10
    .parameter "matrixCursor"

    .prologue
    const/4 v3, 0x0

    .line 507
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 509
    .local v1, userUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotosOfUserQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 512
    .local v7, userCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2b

    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2b

    .line 513
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 514
    const/4 v7, 0x0

    .line 516
    :cond_2b
    if-nez v7, :cond_53

    .line 518
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 520
    .local v6, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    invoke-virtual {v6, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(J)V

    .line 521
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 527
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotosOfUserQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 530
    .end local v6           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_53
    if-eqz v7, :cond_58

    .line 531
    invoke-direct {p0, v7, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->processPhotosOfUserCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5e

    .line 534
    :cond_58
    if-eqz v7, :cond_5d

    .line 535
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 538
    :cond_5d
    return-void

    .line 534
    :catchall_5e
    move-exception v0

    if-eqz v7, :cond_64

    .line 535
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_64
    throw v0
.end method

.method private static logDelta(J)Ljava/lang/String;
    .registers 9
    .parameter "start"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, p0

    .line 543
    .local v0, delta:J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    .local v2, sb:Ljava/lang/StringBuffer;
    div-long v3, v0, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 545
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    rem-long v3, v0, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 547
    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private processAlbumCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 25
    .parameter "albumCursor"
    .parameter "matrixCursor"

    .prologue
    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 311
    .local v20, start:J
    const-wide/16 v15, 0x0

    .line 312
    .local v15, lastAlbumId:J
    const/16 v19, 0x0

    .line 313
    .local v19, rowCount:I
    const-wide/16 v13, 0x0

    .line 314
    .local v13, albumId:J
    const/4 v3, 0x0

    .line 315
    .local v3, count:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 316
    .local v5, timestamp:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 317
    .local v10, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 318
    .local v8, ownerId:Ljava/lang/Long;
    const/4 v9, 0x0

    .line 319
    .local v9, streamId:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 320
    .local v12, url:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 322
    .local v11, photoId:[Ljava/lang/Long;
    :cond_15
    :goto_15
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 327
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 328
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-eqz v1, :cond_15

    .line 332
    cmp-long v1, v13, v15

    if-eqz v1, :cond_7a

    .line 333
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-eqz v1, :cond_3f

    .line 335
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 339
    :cond_3f
    move-wide v15, v13

    .line 340
    const/16 v19, 0x0

    .line 341
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    const/4 v3, 0x0

    .line 343
    :goto_4c
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    const/4 v5, 0x0

    .line 345
    :goto_56
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b6

    const/4 v10, 0x0

    .line 347
    :goto_60
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_be

    const/4 v8, 0x0

    .line 349
    :goto_6a
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v9, 0x0

    .line 352
    :goto_74
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 353
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 357
    :cond_7a
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ge v0, v1, :cond_15

    .line 361
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d2

    const/16 v18, 0x0

    .line 363
    .local v18, myUrl:Ljava/lang/String;
    :goto_8b
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_db

    const/16 v17, 0x0

    .line 365
    .local v17, myPhotoId:Ljava/lang/Long;
    :goto_96
    aput-object v18, v12, v19

    .line 366
    aput-object v17, v11, v19

    .line 367
    add-int/lit8 v19, v19, 0x1

    .line 368
    goto/16 :goto_15

    .line 341
    .end local v17           #myPhotoId:Ljava/lang/Long;
    .end local v18           #myUrl:Ljava/lang/String;
    :cond_9e
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4c

    .line 343
    :cond_aa
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_56

    .line 345
    :cond_b6
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_60

    .line 347
    :cond_be
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_6a

    .line 349
    :cond_ca
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_74

    .line 361
    :cond_d2
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_8b

    .line 363
    .restart local v18       #myUrl:Ljava/lang/String;
    :cond_db
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_96

    .line 371
    .end local v18           #myUrl:Ljava/lang/String;
    :cond_e7
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-eqz v1, :cond_fa

    .line 372
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 377
    :cond_fa
    const-string v1, "PhotosHomeLoader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 378
    const-string v1, "PhotosHomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#processAlbumCursor; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->logDelta(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_11f
    return-void
.end method

.method private processPhotosHomeCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 22
    .parameter "photosHomeCursor"
    .parameter "matrixCursor"

    .prologue
    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 205
    .local v16, res:Landroid/content/res/Resources;
    const/4 v13, -0x1

    .line 206
    .local v13, lastType:I
    const/16 v17, 0x0

    .line 207
    .local v17, rowCount:I
    const/16 v18, 0x0

    .line 208
    .local v18, type:Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 209
    .local v3, count:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 210
    .local v4, notifiationCount:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 211
    .local v5, timestamp:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 212
    .local v10, title:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 213
    .local v12, url:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 215
    .local v11, photoId:[Ljava/lang/Long;
    :cond_17
    :goto_17
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 220
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 221
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    .line 225
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mHideCirclePhotos:Z

    if-eqz v1, :cond_3b

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_17

    .line 229
    :cond_3b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v13, :cond_8c

    .line 230
    const/4 v1, -0x1

    if-eq v13, v1, :cond_52

    .line 232
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 236
    :cond_52
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 237
    const/16 v17, 0x0

    .line 238
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v3, 0x0

    .line 240
    :goto_62
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/4 v4, 0x0

    .line 243
    :goto_6c
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c5

    const/4 v5, 0x0

    .line 245
    :goto_76
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_122

    .line 269
    const v1, 0x7f070072

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 273
    :goto_86
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 274
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 278
    :cond_8c
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ge v0, v1, :cond_17

    .line 282
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_fb

    const/4 v15, 0x0

    .line 284
    .local v15, myUrl:Ljava/lang/String;
    :goto_9b
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_103

    const/4 v14, 0x0

    .line 286
    .local v14, myPhotoId:Ljava/lang/Long;
    :goto_a5
    aput-object v15, v12, v17

    .line 287
    aput-object v14, v11, v17

    .line 288
    add-int/lit8 v17, v17, 0x1

    .line 289
    goto/16 :goto_17

    .line 238
    .end local v14           #myPhotoId:Ljava/lang/Long;
    .end local v15           #myUrl:Ljava/lang/String;
    :cond_ad
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_62

    .line 240
    :cond_b9
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_6c

    .line 243
    :cond_c5
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_76

    .line 247
    :pswitch_d1
    const v1, 0x7f07006e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    const/4 v3, 0x0

    .line 251
    goto :goto_86

    .line 254
    :pswitch_dc
    const v1, 0x7f07006f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 255
    goto :goto_86

    .line 258
    :pswitch_e6
    const v1, 0x7f070070

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 259
    goto :goto_86

    .line 262
    :pswitch_f0
    const v1, 0x7f070071

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 265
    const/4 v3, 0x0

    .line 266
    goto :goto_86

    .line 282
    :cond_fb
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_9b

    .line 284
    .restart local v15       #myUrl:Ljava/lang/String;
    :cond_103
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_a5

    .line 292
    .end local v15           #myUrl:Ljava/lang/String;
    :cond_10f
    const/4 v1, -0x1

    if-eq v13, v1, :cond_120

    .line 293
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 297
    :cond_120
    return-void

    .line 245
    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_dc
        :pswitch_e6
        :pswitch_f0
    .end packed-switch
.end method

.method private processPhotosOfUserCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 19
    .parameter "userCursor"
    .parameter "matrixCursor"

    .prologue
    .line 386
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 388
    .local v15, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v5, 0x0

    .line 390
    .local v5, timestamp:Ljava/lang/Long;
    :goto_18
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    const/4 v14, 0x0

    .line 392
    .local v14, myUrl:Ljava/lang/String;
    :goto_22
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v13, 0x0

    .line 394
    .local v13, myPhotoId:Ljava/lang/Long;
    :goto_2c
    const v1, 0x7f070073

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v15, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, title:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v12, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 400
    .end local v5           #timestamp:Ljava/lang/Long;
    .end local v10           #title:Ljava/lang/String;
    .end local v13           #myPhotoId:Ljava/lang/Long;
    .end local v14           #myUrl:Ljava/lang/String;
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_62
    return-void

    .line 388
    .restart local v15       #res:Landroid/content/res/Resources;
    :cond_63
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_18

    .line 390
    .restart local v5       #timestamp:Ljava/lang/Long;
    :cond_6f
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_22

    .line 392
    .restart local v14       #myUrl:Ljava/lang/String;
    :cond_77
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_2c
.end method

.method private writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V
    .registers 19
    .parameter "cursor"
    .parameter "count"
    .parameter "notificationCount"
    .parameter "timestamp"
    .parameter "type"
    .parameter "albumId"
    .parameter "ownerId"
    .parameter "streamId"
    .parameter "title"
    .parameter "photoId"
    .parameter "url"

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    .line 183
    .local v1, builder:Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    sget-wide v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->sRowId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    sput-wide v5, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->sRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 193
    const/4 v2, 0x0

    .local v2, i:I
    :goto_35
    move-object/from16 v0, p10

    array-length v3, v0

    if-ge v2, v3, :cond_48

    .line 194
    aget-object v3, p10, v2

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    aget-object v4, p11, v2

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 198
    :cond_48
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    .local v1, start:J
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 108
    .local v0, returnCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mPhotosHome:Z

    if-eqz v3, :cond_3b

    .line 109
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadPhotosHome(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 113
    :cond_12
    :goto_12
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadAlbumList(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 115
    const-string v3, "PhotosHomeLoader"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 116
    const-string v3, "PhotosHomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#loadInBackGround; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->logDelta(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_3a
    return-object v0

    .line 110
    :cond_3b
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadPhotosOfUser(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    goto :goto_12
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    .line 158
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->onAbandon()V

    .line 163
    return-void
.end method

.method protected onStartLoading()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    if-nez v2, :cond_3c

    .line 129
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mPhotosHome:Z

    if-eqz v2, :cond_18

    .line 130
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    .line 131
    .local v0, notificationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    .end local v0           #notificationUri:Landroid/net/Uri;
    :cond_18
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .restart local v0       #notificationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    .line 149
    .end local v0           #notificationUri:Landroid/net/Uri;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->forceLoad()V

    .line 150
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3
    .parameter "userName"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->forceLoad()V

    .line 173
    :cond_b
    return-void
.end method
