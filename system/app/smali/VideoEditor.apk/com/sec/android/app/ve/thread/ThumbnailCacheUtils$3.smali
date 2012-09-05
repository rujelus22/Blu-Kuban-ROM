.class Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;
.super Ljava/lang/Object;
.source "ThumbnailCacheUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->loadVideoThumbs(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isBreakVideoLoop:Z

.field private final synthetic val$isReload:Z


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->val$isReload:Z

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 445
    const-string v15, "date_added DESC"

    .line 447
    .local v15, lSortOrder:Ljava/lang/String;
    const/4 v11, 0x0

    .line 449
    .local v11, lCursor:Landroid/database/Cursor;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    move/from16 v21, v0

    if-nez v21, :cond_21

    .line 709
    if-eqz v11, :cond_11

    .line 710
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 711
    const/4 v11, 0x0

    .line 713
    :cond_11
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_20

    .line 714
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 715
    :cond_20
    :goto_20
    return-void

    .line 451
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->val$isReload:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2c

    .line 452
    #calls: Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->reloadVideoThumbnails()V
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$10()V

    .line 454
    :cond_2c
    if-eqz v11, :cond_32

    .line 456
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 457
    const/4 v11, 0x0

    .line 459
    :cond_32
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    if-eqz v21, :cond_20

    .line 462
    sget-object v21, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 463
    sget-object v22, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoProj:[Ljava/lang/String;

    .line 464
    const/16 v23, 0x0

    .line 465
    const/16 v24, 0x0

    .line 462
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v15}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 468
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    if-eqz v21, :cond_7e

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    if-eqz v21, :cond_7e

    .line 470
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getContentObsInstance()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 471
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 472
    const/16 v23, 0x1

    .line 473
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getContentObsInstance()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    move-result-object v24

    .line 471
    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 476
    :cond_7e
    if-eqz v11, :cond_8c

    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    if-eqz v21, :cond_8c

    .line 477
    if-eqz v11, :cond_a7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v21

    if-gtz v21, :cond_a7

    .line 479
    :cond_8c
    const-string v21, "startThumbnailCreateThread::run() - cursor null or count is 0"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 480
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 483
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_20

    .line 484
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    goto/16 :goto_20

    .line 491
    :cond_a7
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 492
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "This is inside loadVideos and coutn is -->"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 496
    :try_start_c4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    const/4 v5, 0x0

    .line 500
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_c9
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_105

    .line 614
    :cond_d1
    sget-boolean v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z

    if-eqz v21, :cond_37e

    .line 616
    const/16 v21, 0x0

    sput-boolean v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z
    :try_end_d9
    .catch Ljava/lang/IllegalStateException; {:try_start_c4 .. :try_end_d9} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c4 .. :try_end_d9} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_c4 .. :try_end_d9} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_c4 .. :try_end_d9} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d9} :catch_3c0

    goto/16 :goto_3

    .line 632
    .end local v5           #count:I
    .end local v10           #i:I
    :catch_db
    move-exception v6

    .line 634
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v21, "startThumbnailCreateThread - IllegalStateException"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 636
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    .line 637
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 638
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_fd

    .line 639
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 640
    :cond_fd
    if-eqz v11, :cond_20

    .line 641
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 642
    const/4 v11, 0x0

    goto/16 :goto_20

    .line 502
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #count:I
    .restart local v10       #i:I
    :cond_105
    :try_start_105
    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v21

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d1

    .line 505
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v21

    if-nez v21, :cond_124

    .line 507
    const-string v21, "Exiting from loadVideoThumbsThread as PEA instance is null"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 509
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 510
    const/4 v11, 0x0

    goto/16 :goto_20

    .line 515
    :cond_124
    move/from16 v19, v10

    .line 516
    .local v19, pos:I
    const/4 v4, 0x0

    .line 518
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 519
    .local v9, filePath:Ljava/lang/String;
    const/16 v18, 0x0

    .line 523
    .local v18, orignalID:Ljava/lang/Long;
    const-string v21, "_data"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 524
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 525
    const-string v21, "duration"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 527
    .local v12, lDuration:J
    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/ve/data/VideoThumb;

    .line 528
    .local v20, videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    const-string v21, ".avi"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".AVI"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 529
    const-string v21, ".k3g"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".K3G"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 530
    const-string v21, ".ak3g"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".AK3G"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 531
    const-string v21, ".skm"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".SKM"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 532
    const-string v21, ".sktm"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".SKTM"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 533
    const-string v21, ".wmv"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".WMV"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 534
    const-string v21, ".wma"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".WMA"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    .line 535
    const-string v21, ".asf"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_202

    const-string v21, ".ASF"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_212

    .line 537
    :cond_202
    const-string v21, "This file is getting ignored as not supported by engine"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 604
    :cond_207
    :goto_207
    sget-boolean v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z

    if-nez v21, :cond_d1

    .line 610
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 500
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c9

    .line 541
    :cond_212
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetCodecFileProperties(Ljava/lang/String;)I

    move-result v14

    .line 543
    .local v14, lIsSupported:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_207

    .line 545
    if-nez v20, :cond_22f

    .line 546
    new-instance v20, Lcom/sec/android/app/ve/data/VideoThumb;

    .end local v20           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/sec/android/app/ve/data/VideoThumb;-><init>(Landroid/graphics/Bitmap;ZZ)V

    .line 551
    .restart local v20       #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_22f
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_23e

    .line 554
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbFetched(Ljava/lang/String;)V

    .line 557
    :cond_23e
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/ve/data/VideoThumb;->getRretrieverChecked()Z
    :try_end_241
    .catch Ljava/lang/IllegalStateException; {:try_start_105 .. :try_end_241} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_105 .. :try_end_241} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_105 .. :try_end_241} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_105 .. :try_end_241} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_241} :catch_3c0

    move-result v21

    if-nez v21, :cond_279

    .line 562
    const/16 v21, 0x3

    :try_start_246
    move/from16 v0, v21

    invoke-static {v9, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_24b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_246 .. :try_end_24b} :catch_2dc
    .catch Ljava/lang/IllegalStateException; {:try_start_246 .. :try_end_24b} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_246 .. :try_end_24b} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_246 .. :try_end_24b} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_246 .. :try_end_24b} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_24b} :catch_3c0

    move-result-object v4

    .line 576
    :goto_24c
    :try_start_24c
    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->copyBitmapLocally(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 578
    .local v16, localbitmap:Landroid/graphics/Bitmap;
    sget-object v22, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    monitor-enter v22
    :try_end_253
    .catch Ljava/lang/IllegalStateException; {:try_start_24c .. :try_end_253} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_24c .. :try_end_253} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_24c .. :try_end_253} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_24c .. :try_end_253} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_253} :catch_3c0

    .line 581
    const/16 v21, 0x1

    :try_start_255
    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/ve/data/VideoThumb;->setRretrieverChecked(Z)V

    .line 582
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/data/VideoThumb;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 583
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/app/ve/data/VideoThumb;->setDuration(J)V

    .line 584
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/ve/data/VideoThumb;->setId(J)V

    .line 585
    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    monitor-exit v22
    :try_end_279
    .catchall {:try_start_255 .. :try_end_279} :catchall_34c

    .line 590
    .end local v16           #localbitmap:Landroid/graphics/Bitmap;
    :cond_279
    :try_start_279
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_288

    .line 593
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 596
    :cond_288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->val$isReload:Z

    move/from16 v21, v0

    if-eqz v21, :cond_207

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$13()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_207

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$13()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_207

    .line 599
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$13()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_279 .. :try_end_2ab} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_279 .. :try_end_2ab} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_279 .. :try_end_2ab} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_279 .. :try_end_2ab} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_2ab} :catch_3c0

    goto/16 :goto_207

    .line 646
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #count:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #lDuration:J
    .end local v14           #lIsSupported:I
    .end local v18           #orignalID:Ljava/lang/Long;
    .end local v19           #pos:I
    .end local v20           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_2ad
    move-exception v8

    .line 648
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    const-string v21, "startThumbnailCreateThread - UnsupportedOperationException"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 650
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    .line 651
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 652
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_2cf

    .line 653
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 654
    :cond_2cf
    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 655
    if-eqz v11, :cond_20

    .line 656
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 657
    const/4 v11, 0x0

    goto/16 :goto_20

    .line 563
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #count:I
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v12       #lDuration:J
    .restart local v14       #lIsSupported:I
    .restart local v18       #orignalID:Ljava/lang/Long;
    .restart local v19       #pos:I
    .restart local v20       #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_2dc
    move-exception v6

    .line 564
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :try_start_2dd
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Got out of memory loadVideoThumbs createVideoThumbnail"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 566
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 567
    .local v17, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x8

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2fe
    .catch Ljava/lang/IllegalStateException; {:try_start_2dd .. :try_end_2fe} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2dd .. :try_end_2fe} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2dd .. :try_end_2fe} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_2dd .. :try_end_2fe} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2fe} :catch_3c0

    .line 570
    :try_start_2fe
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_303
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2fe .. :try_end_303} :catch_306
    .catch Ljava/lang/IllegalStateException; {:try_start_2fe .. :try_end_303} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2fe .. :try_end_303} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2fe .. :try_end_303} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_2fe .. :try_end_303} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_303} :catch_3c0

    move-result-object v4

    goto/16 :goto_24c

    .line 571
    :catch_306
    move-exception v7

    .line 572
    .local v7, e1:Ljava/lang/OutOfMemoryError;
    :try_start_307
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Got out of memory loadVideoThumbs decodeFile"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_31b
    .catch Ljava/lang/IllegalStateException; {:try_start_307 .. :try_end_31b} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_307 .. :try_end_31b} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_307 .. :try_end_31b} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_307 .. :try_end_31b} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_31b} :catch_3c0

    goto/16 :goto_24c

    .line 662
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .end local v7           #e1:Ljava/lang/OutOfMemoryError;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #lDuration:J
    .end local v14           #lIsSupported:I
    .end local v17           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v18           #orignalID:Ljava/lang/Long;
    .end local v19           #pos:I
    .end local v20           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_31d
    move-exception v6

    .line 664
    .local v6, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v21, "startThumbnailCreateThread - CursorIndexOutOfBoundsException"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 666
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    .line 667
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 668
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_33f

    .line 669
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 670
    :cond_33f
    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 671
    if-eqz v11, :cond_20

    .line 672
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 673
    const/4 v11, 0x0

    goto/16 :goto_20

    .line 578
    .end local v6           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #count:I
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v12       #lDuration:J
    .restart local v14       #lIsSupported:I
    .restart local v16       #localbitmap:Landroid/graphics/Bitmap;
    .restart local v18       #orignalID:Ljava/lang/Long;
    .restart local v19       #pos:I
    .restart local v20       #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catchall_34c
    move-exception v21

    :try_start_34d
    monitor-exit v22
    :try_end_34e
    .catchall {:try_start_34d .. :try_end_34e} :catchall_34c

    :try_start_34e
    throw v21
    :try_end_34f
    .catch Ljava/lang/IllegalStateException; {:try_start_34e .. :try_end_34f} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_34e .. :try_end_34f} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_34e .. :try_end_34f} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_34e .. :try_end_34f} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_34f} :catch_3c0

    .line 677
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #count:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #lDuration:J
    .end local v14           #lIsSupported:I
    .end local v16           #localbitmap:Landroid/graphics/Bitmap;
    .end local v18           #orignalID:Ljava/lang/Long;
    .end local v19           #pos:I
    .end local v20           #videoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_34f
    move-exception v6

    .line 679
    .local v6, e:Landroid/database/StaleDataException;
    const-string v21, "startThumbnailCreateThread - StaleDataException"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 681
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    .line 682
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 683
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_371

    .line 684
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 685
    :cond_371
    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 686
    if-eqz v11, :cond_20

    .line 687
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 688
    const/4 v11, 0x0

    goto/16 :goto_20

    .line 622
    .end local v6           #e:Landroid/database/StaleDataException;
    .restart local v5       #count:I
    .restart local v10       #i:I
    :cond_37e
    :try_start_37e
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_38d

    .line 623
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 625
    :cond_38d
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Coming out of loading Video Thread and count is -->"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->val$isReload:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3b6

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$13()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_3b6

    .line 627
    #calls: Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->removeDeletedVideoThumbs()V
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$14()V

    .line 628
    :cond_3b6
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z
    :try_end_3be
    .catch Ljava/lang/IllegalStateException; {:try_start_37e .. :try_end_3be} :catch_db
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_37e .. :try_end_3be} :catch_2ad
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_37e .. :try_end_3be} :catch_31d
    .catch Landroid/database/StaleDataException; {:try_start_37e .. :try_end_3be} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_37e .. :try_end_3be} :catch_3c0

    goto/16 :goto_3

    .line 691
    .end local v5           #count:I
    .end local v10           #i:I
    :catch_3c0
    move-exception v6

    .line 693
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "startThumbnailCreateThread - Exception"

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 695
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$3;->isBreakVideoLoop:Z

    .line 696
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$11(I)V

    .line 697
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    if-eqz v21, :cond_3e2

    .line 698
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$12()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;->onVideoThumbCleared(Z)V

    .line 699
    :cond_3e2
    sget-object v21, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 700
    if-eqz v11, :cond_20

    .line 701
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 702
    const/4 v11, 0x0

    goto/16 :goto_20
.end method
