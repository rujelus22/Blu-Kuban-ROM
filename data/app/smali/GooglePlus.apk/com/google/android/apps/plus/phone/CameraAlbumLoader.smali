.class public Lcom/google/android/apps/plus/phone/CameraAlbumLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "CameraAlbumLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/CameraAlbumLoader$PhotoQuery;,
        Lcom/google/android/apps/plus/phone/CameraAlbumLoader$CorrectedMediaStoreColumn;
    }
.end annotation


# static fields
.field protected static final sMediaStoreUri:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->sMediaStoreUri:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected buildMatrixCursor(Landroid/content/Context;[Landroid/database/Cursor;[Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 22
    .parameter "context"
    .parameter "cursorList"
    .parameter "baseUri"

    .prologue
    .line 164
    new-instance v9, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v15, Lcom/google/android/apps/plus/phone/AlbumViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v15}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 168
    .local v9, returnCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :goto_7
    const-wide/16 v10, -0x1

    .line 169
    .local v10, timestamp:J
    const/4 v3, -0x1

    .line 172
    .local v3, cursorIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_b
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v6, v15, :cond_33

    .line 173
    aget-object v1, p2, v6

    .line 174
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 172
    :cond_1a
    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 178
    :cond_1d
    const/4 v15, 0x1

    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    const-wide/16 v4, 0x0

    .line 180
    .local v4, datetaken:J
    :goto_26
    cmp-long v15, v4, v10

    if-lez v15, :cond_1a

    .line 181
    move-wide v10, v4

    .line 182
    move v3, v6

    goto :goto_1a

    .line 178
    .end local v4           #datetaken:J
    :cond_2d
    const/4 v15, 0x1

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_26

    .line 187
    .end local v1           #c:Landroid/database/Cursor;
    :cond_33
    const/4 v15, -0x1

    if-ne v3, v15, :cond_37

    .line 222
    return-object v9

    .line 191
    :cond_37
    aget-object v2, p2, v3

    .line 194
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    :try_start_3a
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 195
    .local v7, id:J
    const/4 v15, 0x2

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, title:Ljava/lang/String;
    aget-object v15, p3, v3

    invoke-static {v15, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 197
    .local v13, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->toVideoDataBytes(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v14

    .line 199
    .local v14, videoDataBytes:[B
    invoke-virtual {v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

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

    invoke-virtual {v15, v14}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    :try_end_b8
    .catchall {:try_start_3a .. :try_end_b8} :catchall_bd

    .line 218
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_7

    .end local v7           #id:J
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    .end local v14           #videoDataBytes:[B
    :catchall_bd
    move-exception v15

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    throw v15
.end method

.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 13

    .prologue
    const/4 v9, 0x2

    .line 123
    const/4 v7, 0x0

    .line 124
    .local v7, watch:Lcom/google/android/apps/plus/util/StopWatch;
    const-string v8, "IUAlbumLoader"

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 125
    new-instance v8, Lcom/google/android/apps/plus/util/StopWatch;

    invoke-direct {v8}, Lcom/google/android/apps/plus/util/StopWatch;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/StopWatch;->start()Lcom/google/android/apps/plus/util/StopWatch;

    move-result-object v7

    .line 126
    const-string v8, "IUAlbumLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "esLoadInBackground: BEGIN thread="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_33
    sget-object v8, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->sMediaStoreUri:[Landroid/net/Uri;

    array-length v8, v8

    new-array v2, v8, [Landroid/database/Cursor;

    .line 132
    .local v2, cursorList:[Landroid/database/Cursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_39
    :try_start_39
    sget-object v8, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->sMediaStoreUri:[Landroid/net/Uri;

    array-length v8, v8

    if-ge v3, v8, :cond_61

    .line 133
    sget-object v8, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->sMediaStoreUri:[Landroid/net/Uri;

    aget-object v8, v8, v3

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->setUri(Landroid/net/Uri;)V

    .line 134
    sget-object v8, Lcom/google/android/apps/plus/phone/CameraAlbumLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->setProjection([Ljava/lang/String;)V

    .line 135
    const-string v8, "corrected_date_taken desc"

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->setSortOrder(Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v2, v3

    .line 137
    aget-object v8, v2, v3

    if-eqz v8, :cond_5e

    .line 138
    aget-object v8, v2, v3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 142
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->sMediaStoreUri:[Landroid/net/Uri;

    invoke-virtual {p0, v8, v2, v9}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;->buildMatrixCursor(Landroid/content/Context;[Landroid/database/Cursor;[Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, returnCursor:Landroid/database/Cursor;
    const-string v8, "IUAlbumLoader"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 145
    const-string v8, "IUAlbumLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "esLoadInBackground: END totalRows="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msec="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/apps/plus/util/StopWatch;->getElapsedMsec()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", thread="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_39 .. :try_end_b0} :catchall_bf

    .line 152
    :cond_b0
    move-object v0, v2

    .local v0, arr$:[Landroid/database/Cursor;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b3
    if-ge v4, v5, :cond_d0

    aget-object v1, v0, v4

    .line 153
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_bc

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3

    .end local v0           #arr$:[Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #returnCursor:Landroid/database/Cursor;
    :catchall_bf
    move-exception v8

    move-object v0, v2

    .restart local v0       #arr$:[Landroid/database/Cursor;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_c3
    if-ge v4, v5, :cond_cf

    aget-object v1, v0, v4

    .line 153
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_cc

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_cf
    throw v8

    .restart local v6       #returnCursor:Landroid/database/Cursor;
    :cond_d0
    return-object v6
.end method
