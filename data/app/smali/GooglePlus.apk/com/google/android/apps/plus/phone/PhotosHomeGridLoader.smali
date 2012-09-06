.class public Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PhotosHomeGridLoader.java"


# static fields
.field private static final CAMERA_PHOTO_PROJECTION:[Ljava/lang/String;

.field private static final CAMERA_URI:[Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field private static sRowId:J


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

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

.field private final mOwnerGaiaId:Ljava/lang/String;

.field private final mPhotosHome:Z

.field private final mShowLocalCameraAlbum:Z

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->CAMERA_PHOTO_PROJECTION:[Ljava/lang/String;

    .line 44
    new-array v0, v6, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->CAMERA_URI:[Landroid/net/Uri;

    .line 55
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "photo_count"

    aput-object v1, v0, v3

    const-string v1, "notification_count"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

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

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "userName"
    .parameter "photosHome"
    .parameter "showLocalCameraAlbum"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 112
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 117
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 118
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    .line 120
    iput-boolean p5, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mPhotosHome:Z

    .line 121
    iput-boolean p6, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mShowLocalCameraAlbum:Z

    .line 122
    return-void
.end method

.method private loadAlbumList(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 13
    .parameter "matrixCursor"

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 490
    .local v8, start:J
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 492
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

    .line 495
    .local v6, albumCursor:Landroid/database/Cursor;
    const-string v0, "PhotosHomeLoader"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 496
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

    if-nez v6, :cond_ee

    const-string v0, "N/A"

    :goto_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_53
    if-eqz v6, :cond_5f

    :try_start_55
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5f

    .line 501
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 502
    const/4 v6, 0x0

    .line 504
    :cond_5f
    if-nez v6, :cond_bf

    .line 506
    new-instance v7, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 508
    .local v7, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 509
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbumList()V

    .line 513
    :goto_7b
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 519
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

    .line 522
    const-string v0, "PhotosHomeLoader"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 523
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

    if-nez v6, :cond_12b

    const-string v0, "N/A"

    :goto_b4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v7           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_bf
    if-eqz v6, :cond_c4

    .line 528
    invoke-direct {p0, v6, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->processAlbumCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    :try_end_c4
    .catchall {:try_start_55 .. :try_end_c4} :catchall_100

    .line 531
    :cond_c4
    if-eqz v6, :cond_c9

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_c9
    const-string v0, "PhotosHomeLoader"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 535
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

    .line 538
    :cond_ed
    return-void

    .line 496
    :cond_ee
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_48

    .line 511
    .restart local v7       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_f8
    :try_start_f8
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfileAlbumList(Ljava/lang/String;Z)V
    :try_end_fe
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_100

    goto/16 :goto_7b

    .line 531
    .end local v7           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :catchall_100
    move-exception v0

    if-eqz v6, :cond_106

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_106
    const-string v2, "PhotosHomeLoader"

    invoke-static {v2, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 535
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

    :cond_12a
    throw v0

    .line 523
    .restart local v7       #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_12b
    :try_start_12b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_132
    .catchall {:try_start_12b .. :try_end_132} :catchall_100

    move-result-object v0

    goto :goto_b4
.end method

.method private loadCameraAlbum(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 24
    .parameter "matrixCursor"

    .prologue
    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 585
    .local v12, albumName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 586
    .local v19, localUrl:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 587
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1a
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->CAMERA_URI:[Landroid/net/Uri;

    array-length v3, v3

    if-ge v15, v3, :cond_59

    .line 588
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->CAMERA_URI:[Landroid/net/Uri;

    aget-object v3, v3, v15

    sget-object v4, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->CAMERA_PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "datetaken desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 591
    .local v18, localCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_4a

    :try_start_2f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 593
    .local v16, id:J
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->CAMERA_URI:[Landroid/net/Uri;

    aget-object v3, v3, v15

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_52

    move-result-object v19

    .line 596
    .end local v16           #id:J
    :cond_4a
    if-eqz v18, :cond_4f

    .line 597
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_4f
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    .line 596
    :catchall_52
    move-exception v3

    if-eqz v18, :cond_58

    .line 597
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v3

    .line 602
    .end local v18           #localCursor:Landroid/database/Cursor;
    :cond_59
    if-eqz v19, :cond_81

    .line 604
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Long;

    const/4 v3, 0x0

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v13, v3

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v19, v14, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v14}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 609
    :cond_81
    return-void
.end method

.method private loadPhotosHome(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 13
    .parameter "matrixCursor"

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 446
    .local v8, start:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_HOME_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotosHomeQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sort_order, type, _id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 451
    .local v7, photosHomeCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2b

    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2b

    .line 452
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 453
    const/4 v7, 0x0

    .line 455
    :cond_2b
    if-nez v7, :cond_5a

    .line 457
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 459
    .local v6, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->photosHome()V

    .line 460
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_HOME_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotosHomeQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_order, type, _id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 471
    .end local v6           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_5a
    if-eqz v7, :cond_5f

    .line 472
    invoke-direct {p0, v7, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->processPhotosHomeCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    :try_end_5f
    .catchall {:try_start_21 .. :try_end_5f} :catchall_89

    .line 475
    :cond_5f
    if-eqz v7, :cond_64

    .line 476
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_64
    const-string v0, "PhotosHomeLoader"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 479
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

    .line 482
    :cond_88
    return-void

    .line 475
    :catchall_89
    move-exception v0

    if-eqz v7, :cond_8f

    .line 476
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_8f
    const-string v1, "PhotosHomeLoader"

    invoke-static {v1, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 479
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

    :cond_b3
    throw v0
.end method

.method private loadPhotosOfUser(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 10
    .parameter "matrixCursor"

    .prologue
    const/4 v3, 0x0

    .line 545
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 547
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

    .line 550
    .local v7, userCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2b

    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2b

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 552
    const/4 v7, 0x0

    .line 554
    :cond_2b
    if-nez v7, :cond_53

    .line 556
    new-instance v6, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 558
    .local v6, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 565
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

    .line 568
    .end local v6           #eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_53
    if-eqz v7, :cond_58

    .line 569
    invoke-direct {p0, v7, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->processPhotosOfUserCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5e

    .line 572
    :cond_58
    if-eqz v7, :cond_5d

    .line 573
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 576
    :cond_5d
    return-void

    .line 572
    :catchall_5e
    move-exception v0

    if-eqz v7, :cond_64

    .line 573
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method private static logDelta(J)Ljava/lang/String;
    .registers 9
    .parameter "start"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, p0

    .line 614
    .local v0, delta:J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 615
    .local v2, sb:Ljava/lang/StringBuffer;
    div-long v3, v0, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 616
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    rem-long v3, v0, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 618
    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private processAlbumCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 25
    .parameter "albumCursor"
    .parameter "matrixCursor"

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 349
    .local v20, start:J
    const-wide/16 v15, 0x0

    .line 350
    .local v15, lastAlbumId:J
    const/16 v19, 0x0

    .line 351
    .local v19, rowCount:I
    const-wide/16 v13, 0x0

    .line 352
    .local v13, albumId:J
    const/4 v3, 0x0

    .line 353
    .local v3, count:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 354
    .local v5, timestamp:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 355
    .local v10, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 356
    .local v8, ownerId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 357
    .local v9, streamId:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 358
    .local v12, url:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 360
    .local v11, photoId:[Ljava/lang/Long;
    :cond_15
    :goto_15
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 365
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 366
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-eqz v1, :cond_15

    .line 370
    cmp-long v1, v13, v15

    if-eqz v1, :cond_7a

    .line 371
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-eqz v1, :cond_3f

    .line 373
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 377
    :cond_3f
    move-wide v15, v13

    .line 378
    const/16 v19, 0x0

    .line 379
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    const/4 v3, 0x0

    .line 381
    :goto_4c
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    const/4 v5, 0x0

    .line 383
    :goto_56
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b6

    const/4 v10, 0x0

    .line 385
    :goto_60
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_be

    const/4 v8, 0x0

    .line 387
    :goto_6a
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    const/4 v9, 0x0

    .line 390
    :goto_74
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 391
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 395
    :cond_7a
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ge v0, v1, :cond_15

    .line 399
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ce

    const/16 v18, 0x0

    .line 401
    .local v18, myUrl:Ljava/lang/String;
    :goto_8b
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d7

    const/16 v17, 0x0

    .line 403
    .local v17, myPhotoId:Ljava/lang/Long;
    :goto_96
    aput-object v18, v12, v19

    .line 404
    aput-object v17, v11, v19

    .line 405
    add-int/lit8 v19, v19, 0x1

    .line 406
    goto/16 :goto_15

    .line 379
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

    .line 381
    :cond_aa
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_56

    .line 383
    :cond_b6
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_60

    .line 385
    :cond_be
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6a

    .line 387
    :cond_c6
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_74

    .line 399
    :cond_ce
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_8b

    .line 401
    .restart local v18       #myUrl:Ljava/lang/String;
    :cond_d7
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_96

    .line 409
    .end local v18           #myUrl:Ljava/lang/String;
    :cond_e3
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-eqz v1, :cond_f6

    .line 410
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 415
    :cond_f6
    const-string v1, "PhotosHomeLoader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 416
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

    .line 418
    :cond_11b
    return-void
.end method

.method private processPhotosHomeCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 22
    .parameter "photosHomeCursor"
    .parameter "matrixCursor"

    .prologue
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 234
    .local v16, res:Landroid/content/res/Resources;
    const/4 v13, -0x1

    .line 235
    .local v13, lastType:I
    const/16 v17, 0x0

    .line 236
    .local v17, rowCount:I
    const/16 v18, 0x0

    .line 237
    .local v18, type:Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 238
    .local v3, count:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 239
    .local v4, notifiationCount:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 240
    .local v5, timestamp:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 241
    .local v10, title:Ljava/lang/String;
    const/4 v9, 0x0

    .line 242
    .local v9, streamId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 243
    .local v8, ownerId:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 244
    .local v12, url:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 246
    .local v11, photoId:[Ljava/lang/Long;
    :cond_19
    :goto_19
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 251
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 252
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    .line 256
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_19

    .line 261
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v13, :cond_88

    .line 262
    const/4 v1, -0x1

    if-eq v13, v1, :cond_4c

    .line 264
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 267
    :cond_4c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 268
    const/16 v17, 0x0

    .line 269
    const/4 v8, 0x0

    .line 270
    const/4 v9, 0x0

    .line 271
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a9

    const/4 v3, 0x0

    .line 273
    :goto_5e
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    const/4 v4, 0x0

    .line 276
    :goto_68
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    const/4 v5, 0x0

    .line 278
    :goto_72
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_130

    .line 308
    const v1, 0x7f080094

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 312
    :goto_82
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 313
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Long;

    .line 317
    :cond_88
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ge v0, v1, :cond_19

    .line 321
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10c

    const/4 v15, 0x0

    .line 323
    .local v15, myUrl:Ljava/lang/String;
    :goto_97
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_114

    const/4 v14, 0x0

    .line 325
    .local v14, myPhotoId:Ljava/lang/Long;
    :goto_a1
    aput-object v15, v12, v17

    .line 326
    aput-object v14, v11, v17

    .line 327
    add-int/lit8 v17, v17, 0x1

    .line 328
    goto/16 :goto_19

    .line 271
    .end local v14           #myPhotoId:Ljava/lang/Long;
    .end local v15           #myUrl:Ljava/lang/String;
    :cond_a9
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5e

    .line 273
    :cond_b5
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_68

    .line 276
    :cond_c1
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_72

    .line 280
    :sswitch_cd
    const v1, 0x7f08008f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 283
    const/4 v3, 0x0

    .line 284
    goto :goto_82

    .line 287
    :sswitch_d8
    const v1, 0x7f080090

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 288
    goto :goto_82

    .line 291
    :sswitch_e2
    const v1, 0x7f080091

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    goto :goto_82

    .line 295
    :sswitch_ec
    const v1, 0x7f080092

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 296
    const-string v9, "camera_sync_created"

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v8

    .line 300
    const/4 v3, 0x0

    .line 301
    goto :goto_82

    .line 304
    :sswitch_101
    const v1, 0x7f080093

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 305
    goto/16 :goto_82

    .line 321
    :cond_10c
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_97

    .line 323
    .restart local v15       #myUrl:Ljava/lang/String;
    :cond_114
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_a1

    .line 331
    .end local v15           #myUrl:Ljava/lang/String;
    :cond_120
    const/4 v1, -0x1

    if-eq v13, v1, :cond_12f

    .line 332
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 335
    :cond_12f
    return-void

    .line 278
    :sswitch_data_130
    .sparse-switch
        0x0 -> :sswitch_cd
        0x1 -> :sswitch_d8
        0x2 -> :sswitch_e2
        0x3 -> :sswitch_ec
        0x7fffffff -> :sswitch_101
    .end sparse-switch
.end method

.method private processPhotosOfUserCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 19
    .parameter "userCursor"
    .parameter "matrixCursor"

    .prologue
    .line 424
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 426
    .local v15, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v5, 0x0

    .line 428
    .local v5, timestamp:Ljava/lang/Long;
    :goto_18
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    const/4 v14, 0x0

    .line 430
    .local v14, myUrl:Ljava/lang/String;
    :goto_22
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v13, 0x0

    .line 432
    .local v13, myPhotoId:Ljava/lang/Long;
    :goto_2c
    const v1, 0x7f080095

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v15, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 433
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

    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V

    .line 438
    .end local v5           #timestamp:Ljava/lang/Long;
    .end local v10           #title:Ljava/lang/String;
    .end local v13           #myPhotoId:Ljava/lang/Long;
    .end local v14           #myUrl:Ljava/lang/String;
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_62
    return-void

    .line 426
    .restart local v15       #res:Landroid/content/res/Resources;
    :cond_63
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_18

    .line 428
    .restart local v5       #timestamp:Ljava/lang/Long;
    :cond_6f
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_22

    .line 430
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

.method private writeMatrix(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Long;[Ljava/lang/String;)V
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
    .line 209
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    .line 210
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

    .line 220
    if-eqz p10, :cond_4a

    .line 221
    const/4 v2, 0x0

    .local v2, i:I
    :goto_37
    move-object/from16 v0, p10

    array-length v3, v0

    if-ge v2, v3, :cond_4a

    .line 222
    aget-object v3, p10, v2

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    aget-object v4, p11, v2

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 227
    .end local v2           #i:I
    :cond_4a
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 127
    .local v1, start:J
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 129
    .local v0, returnCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 131
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mPhotosHome:Z

    if-eqz v3, :cond_46

    .line 132
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadPhotosHome(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 133
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mShowLocalCameraAlbum:Z

    if-eqz v3, :cond_1d

    .line 134
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadCameraAlbum(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 139
    :cond_1d
    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadAlbumList(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 142
    :cond_20
    const-string v3, "PhotosHomeLoader"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 143
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

    .line 145
    :cond_45
    return-object v0

    .line 136
    :cond_46
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mUserName:Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 137
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->loadPhotosOfUser(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    goto :goto_1d
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    .line 185
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->onAbandon()V

    .line 190
    return-void
.end method

.method protected onStartLoading()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 152
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    if-nez v2, :cond_3c

    .line 156
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mPhotosHome:Z

    if-eqz v2, :cond_18

    .line 157
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_HOME_URI:Landroid/net/Uri;

    .line 158
    .local v0, notificationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    .end local v0           #notificationUri:Landroid/net/Uri;
    :cond_18
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 167
    .restart local v0       #notificationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->mObserverRegistered:Z

    .line 176
    .end local v0           #notificationUri:Landroid/net/Uri;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->forceLoad()V

    .line 177
    return-void
.end method
