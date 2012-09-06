.class public Lcom/google/android/apps/plus/phone/CameraPhotoLoader;
.super Lcom/google/android/apps/plus/phone/CameraAlbumLoader;
.source "CameraPhotoLoader.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/Pageable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected buildMatrixCursor(Landroid/content/Context;[Landroid/database/Cursor;[Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 22
    .parameter "context"
    .parameter "cursorList"
    .parameter "baseUri"

    .prologue
    .line 29
    new-instance v9, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v15, Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v15}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 33
    .local v9, returnCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :goto_7
    const-wide/16 v10, -0x1

    .line 34
    .local v10, timestamp:J
    const/4 v3, -0x1

    .line 37
    .local v3, cursorIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_b
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v6, v15, :cond_33

    .line 38
    aget-object v1, p2, v6

    .line 39
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 37
    :cond_1a
    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 43
    :cond_1d
    const/4 v15, 0x1

    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    const-wide/16 v4, 0x0

    .line 45
    .local v4, datetaken:J
    :goto_26
    cmp-long v15, v4, v10

    if-lez v15, :cond_1a

    .line 46
    move-wide v10, v4

    .line 47
    move v3, v6

    goto :goto_1a

    .line 43
    .end local v4           #datetaken:J
    :cond_2d
    const/4 v15, 0x1

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_26

    .line 52
    .end local v1           #c:Landroid/database/Cursor;
    :cond_33
    const/4 v15, -0x1

    if-ne v3, v15, :cond_37

    .line 77
    return-object v9

    .line 56
    :cond_37
    aget-object v2, p2, v3

    .line 59
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    :try_start_3a
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 60
    .local v7, id:J
    const/4 v15, 0x2

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, title:Ljava/lang/String;
    aget-object v15, p3, v3

    invoke-static {v15, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 62
    .local v13, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->toVideoDataBytes(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v14

    .line 64
    .local v14, videoDataBytes:[B
    invoke-virtual {v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    :try_end_80
    .catchall {:try_start_3a .. :try_end_80} :catchall_84

    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .end local v7           #id:J
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    .end local v14           #videoDataBytes:[B
    :catchall_84
    move-exception v15

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    throw v15
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public hasMore()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method
