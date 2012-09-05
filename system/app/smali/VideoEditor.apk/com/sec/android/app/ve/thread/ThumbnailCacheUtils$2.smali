.class Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;
.super Ljava/lang/Object;
.source "ThumbnailCacheUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->loadImageThumbs(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isBreakImageLoop:Z

.field private final synthetic val$isImgReload:Z


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->val$isImgReload:Z

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 219
    const-string v4, "date_added DESC"

    .line 221
    .local v4, lSortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 222
    .local v6, mImgCursor:Landroid/database/Cursor;
    :goto_3
    iget-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    if-nez v11, :cond_1c

    .line 418
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 419
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 421
    :cond_15
    if-eqz v6, :cond_1b

    .line 422
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 423
    const/4 v6, 0x0

    .line 425
    :cond_1b
    :goto_1b
    return-void

    .line 224
    :cond_1c
    iget-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->val$isImgReload:Z

    if-eqz v11, :cond_23

    .line 225
    #calls: Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->reloadImageThumbnails()V
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$5()V

    .line 227
    :cond_23
    if-eqz v6, :cond_29

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    const/4 v6, 0x0

    .line 232
    :cond_29
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    if-eqz v11, :cond_1b

    .line 234
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 235
    sget-object v12, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageProj:[Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getVideoFilterString()Ljava/lang/String;

    move-result-object v13

    .line 237
    sget-object v14, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilter:[Ljava/lang/String;

    .line 234
    invoke-static {v11, v12, v13, v14, v4}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    if-eqz v11, :cond_6e

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    if-eqz v11, :cond_6e

    .line 242
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getMyImageContentObs()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 244
    const/4 v13, 0x1

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getMyImageContentObs()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    move-result-object v14

    .line 243
    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    :cond_6e
    if-eqz v6, :cond_7c

    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    if-eqz v11, :cond_7c

    .line 248
    if-eqz v6, :cond_94

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-gtz v11, :cond_94

    .line 250
    :cond_7c
    const-string v11, "startThumbnailCreateThread::run() - cursor null or count is 0"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 251
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 253
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_1b

    .line 254
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    goto :goto_1b

    .line 259
    :cond_94
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 262
    :try_start_9b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9f
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lt v3, v11, :cond_d1

    .line 332
    :cond_a5
    sget-boolean v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageRefresh:Z

    if-eqz v11, :cond_1af

    .line 334
    const/4 v11, 0x0

    sput-boolean v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageRefresh:Z
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_9b .. :try_end_ac} :catch_ae
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9b .. :try_end_ac} :catch_187
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_9b .. :try_end_ac} :catch_1d4
    .catch Landroid/database/StaleDataException; {:try_start_9b .. :try_end_ac} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ac} :catch_224

    goto/16 :goto_3

    .line 350
    .end local v3           #i:I
    :catch_ae
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    .line 353
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 354
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_c4

    .line 355
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 356
    :cond_c4
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 357
    if-eqz v6, :cond_1b

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 266
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v3       #i:I
    :cond_d1
    :try_start_d1
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_a5

    .line 269
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    if-nez v11, :cond_ec

    .line 271
    const-string v11, "Exiting from loadImageThumbsThread as PEA instance is null"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 279
    :cond_ec
    move v8, v3

    .line 280
    .local v8, pos:I
    const/4 v9, 0x0

    .line 282
    .local v9, thumb:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 283
    .local v2, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 285
    .local v7, orignalID:Ljava/lang/Long;
    const-string v11, "_data"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v11, "_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 288
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/ve/data/VideoThumb;

    .line 290
    .local v10, videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    if-nez v10, :cond_11a

    .line 291
    new-instance v10, Lcom/sec/android/app/ve/data/VideoThumb;

    .end local v10           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/android/app/ve/data/VideoThumb;-><init>(Landroid/graphics/Bitmap;ZZ)V

    .line 293
    .restart local v10       #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_11a
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->FindIfJPEG(Ljava/lang/String;)I

    move-result v5

    .line 298
    .local v5, lsupported:I
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    if-eqz v11, :cond_15e

    const/4 v11, 0x1

    if-ne v5, v11, :cond_15e

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->isImageLarger8MP(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_15e

    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15e

    .line 301
    invoke-virtual {v10}, Lcom/sec/android/app/ve/data/VideoThumb;->getRretrieverChecked()Z

    move-result v11

    if-nez v11, :cond_151

    .line 303
    sget-object v12, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_140
    .catch Ljava/lang/IllegalStateException; {:try_start_d1 .. :try_end_140} :catch_ae
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d1 .. :try_end_140} :catch_187
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_d1 .. :try_end_140} :catch_1d4
    .catch Landroid/database/StaleDataException; {:try_start_d1 .. :try_end_140} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_140} :catch_224

    .line 305
    const/4 v11, 0x1

    :try_start_141
    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/data/VideoThumb;->setRretrieverChecked(Z)V

    .line 306
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/sec/android/app/ve/data/VideoThumb;->setId(J)V

    .line 307
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v12
    :try_end_151
    .catchall {:try_start_141 .. :try_end_151} :catchall_184

    .line 312
    :cond_151
    :try_start_151
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_15e

    .line 313
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbFetched(Ljava/lang/String;)V

    .line 318
    :cond_15e
    iget-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->val$isImgReload:Z

    if-eqz v11, :cond_179

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$8()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_179

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$8()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_179

    .line 321
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$8()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_179
    sget-boolean v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageRefresh:Z

    if-nez v11, :cond_a5

    .line 329
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_180
    .catch Ljava/lang/IllegalStateException; {:try_start_151 .. :try_end_180} :catch_ae
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_151 .. :try_end_180} :catch_187
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_151 .. :try_end_180} :catch_1d4
    .catch Landroid/database/StaleDataException; {:try_start_151 .. :try_end_180} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_180} :catch_224

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9f

    .line 303
    :catchall_184
    move-exception v11

    :try_start_185
    monitor-exit v12
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    :try_start_186
    throw v11
    :try_end_187
    .catch Ljava/lang/IllegalStateException; {:try_start_186 .. :try_end_187} :catch_ae
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_186 .. :try_end_187} :catch_187
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_186 .. :try_end_187} :catch_1d4
    .catch Landroid/database/StaleDataException; {:try_start_186 .. :try_end_187} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_187} :catch_224

    .line 363
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #lsupported:I
    .end local v7           #orignalID:Ljava/lang/Long;
    .end local v8           #pos:I
    .end local v9           #thumb:Landroid/graphics/Bitmap;
    .end local v10           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_187
    move-exception v1

    .line 365
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    const-string v11, "startThumbnailCreateThread - UnsupportedOperationException"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 366
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    .line 367
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 368
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_1a2

    .line 369
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 370
    :cond_1a2
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 371
    if-eqz v6, :cond_1b

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 339
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v3       #i:I
    :cond_1af
    :try_start_1af
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_1bd

    .line 340
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 342
    :cond_1bd
    const-string v11, "Coming out of loadingImageThread"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 344
    iget-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->val$isImgReload:Z

    if-eqz v11, :cond_1cf

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$8()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_1cf

    .line 345
    #calls: Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->removeDeletedImageThumbs()V
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$9()V

    .line 346
    :cond_1cf
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z
    :try_end_1d2
    .catch Ljava/lang/IllegalStateException; {:try_start_1af .. :try_end_1d2} :catch_ae
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1af .. :try_end_1d2} :catch_187
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1af .. :try_end_1d2} :catch_1d4
    .catch Landroid/database/StaleDataException; {:try_start_1af .. :try_end_1d2} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1d2} :catch_224

    goto/16 :goto_3

    .line 377
    .end local v3           #i:I
    :catch_1d4
    move-exception v0

    .line 379
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v11, "startThumbnailCreateThread - CursorIndexOutOfBoundsException"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 380
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    .line 381
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 382
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_1ef

    .line 383
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 384
    :cond_1ef
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 385
    if-eqz v6, :cond_1b

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 391
    .end local v0           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1fc
    move-exception v0

    .line 393
    .local v0, e:Landroid/database/StaleDataException;
    const-string v11, "startThumbnailCreateThread - StaleDataException"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 394
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    .line 395
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 396
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_217

    .line 397
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 398
    :cond_217
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 399
    if-eqz v6, :cond_1b

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 401
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 404
    .end local v0           #e:Landroid/database/StaleDataException;
    :catch_224
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/Exception;
    const-string v11, "startThumbnailCreateThread - Exception"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 406
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$2;->isBreakImageLoop:Z

    .line 407
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$6(I)V

    .line 408
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    if-eqz v11, :cond_23f

    .line 409
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$7()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;->onImageThumbCleared(Z)V

    .line 410
    :cond_23f
    sget-object v11, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 411
    if-eqz v6, :cond_1b

    .line 412
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 413
    const/4 v6, 0x0

    goto/16 :goto_1b
.end method
