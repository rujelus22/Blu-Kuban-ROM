.class Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;
.super Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;
.source "MediaStoreMediaStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaStoreRow"
.end annotation


# instance fields
.field private photoQueried:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;JLjava/lang/String;J[B)V
    .registers 27
    .parameter
    .parameter "id"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "videoDataBytes"

    .prologue
    .line 190
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->this$0:Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    .line 191
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mBaseContentUri:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-wide/from16 v8, p5

    move-object/from16 v16, p4

    move-object/from16 v18, p7

    invoke-direct/range {v2 .. v18}, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;-><init>(JIILjava/lang/Integer;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;Lcom/android/gallery3d/common/Fingerprint;[B)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;JLjava/lang/String;J[BLcom/google/android/apps/plus/phone/MediaStoreMediaStream$1;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;-><init>(Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;JLjava/lang/String;J[B)V

    return-void
.end method

.method private queryPhotoData()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 260
    iput-boolean v12, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->photoQueried:Z

    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v9

    .line 263
    .local v9, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v9, :cond_c

    .line 294
    :cond_b
    :goto_b
    return-void

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->this$0:Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 270
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 271
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v9}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, streamId:Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 274
    .local v11, uri:Landroid/net/Uri;
    invoke-static {v11, v6}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v13

    const-string v0, "owner_id"

    aput-object v0, v2, v12

    .line 278
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->this$0:Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 280
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_b

    .line 282
    :try_start_4d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 283
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_61

    .line 284
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mPhotoId:J

    .line 286
    :cond_61
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 287
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mOwnerId:J
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_73

    .line 291
    :cond_6f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_73
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getFingerprint()Lcom/android/gallery3d/common/Fingerprint;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mFingerprint:Lcom/android/gallery3d/common/Fingerprint;

    if-nez v0, :cond_43

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->this$0:Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getFingerprintUri()Landroid/net/Uri;

    move-result-object v1

    .line 237
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mLocalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 238
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->this$0:Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 240
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 241
    .local v6, bytes:[B
    if-eqz v7, :cond_3c

    .line 243
    :try_start_2e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 244
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_46

    move-result-object v6

    .line 247
    :cond_39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_3c
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v0, v6}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mFingerprint:Lcom/android/gallery3d/common/Fingerprint;

    .line 252
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #bytes:[B
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mFingerprint:Lcom/android/gallery3d/common/Fingerprint;

    return-object v0

    .line 247
    .restart local v1       #queryUri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #bytes:[B
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_46
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getOwnerId()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mOwnerId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->photoQueried:Z

    if-eqz v0, :cond_13

    .line 223
    :cond_c
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mOwnerId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 226
    :goto_12
    return-object v0

    .line 225
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->queryPhotoData()V

    .line 226
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mOwnerId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_12
.end method

.method public getPhotoId()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mPhotoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->photoQueried:Z

    if-eqz v0, :cond_13

    .line 211
    :cond_c
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mPhotoId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 214
    :goto_12
    return-object v0

    .line 213
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->queryPhotoData()V

    .line 214
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;->mPhotoId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_12
.end method
