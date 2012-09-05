.class Lcom/sec/android/app/videoplayer/view/VideoListView$15;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->startThumbnailCreateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 37

    .prologue
    .line 1419
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v31, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I
    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$900(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getAllVideoThumbnails(I)Landroid/database/Cursor;

    move-result-object v8

    .line 1420
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->getThumbnailHashmap()Ljava/util/HashMap;

    move-result-object v23

    .line 1421
    .local v23, thumbHashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/videoplayer/util/VideoThumb;>;"
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->getVideoThumbList()Ljava/util/ArrayList;

    move-result-object v29

    .line 1423
    .local v29, videoThumbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoThumb;>;"
    const/4 v15, -0x1

    .line 1424
    .local v15, initStartPos:I
    const/16 v19, -0x1

    .line 1425
    .local v19, rightBoundaryPos:I
    const/16 v16, -0x1

    .line 1426
    .local v16, leftBoundaryPos:I
    const/16 v27, -0x1

    .line 1427
    .local v27, uiUpdateStartPos:I
    const/16 v26, -0x1

    .line 1428
    .local v26, uiUpdateEndPos:I
    const/16 v25, -0x1

    .line 1429
    .local v25, totalItemCount:I
    const/16 v20, 0x0

    .line 1430
    .local v20, rightDone:Z
    const/16 v17, 0x0

    .line 1433
    .local v17, leftDone:Z
    if-eqz v8, :cond_35

    if-eqz v23, :cond_35

    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v30

    if-gtz v30, :cond_43

    .line 1434
    :cond_35
    const-string v30, "VideoListView"

    const-string v31, "startThumbnailThread() - cursor null or count is 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    if-eqz v8, :cond_42

    .line 1437
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1438
    const/4 v8, 0x0

    .line 1706
    :cond_42
    :goto_42
    return-void

    .line 1443
    :cond_43
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->createCachedBitmapsFolder()V

    .line 1445
    :goto_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2300(Lcom/sec/android/app/videoplayer/view/VideoListView;)Z

    move-result v30

    if-nez v30, :cond_25e

    .line 1446
    const-class v31, Lcom/sec/android/app/videoplayer/view/VideoListView;

    monitor-enter v31

    .line 1448
    :try_start_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2200(Lcom/sec/android/app/videoplayer/view/VideoListView;)Z

    move-result v30

    if-eqz v30, :cond_247

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2202(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z

    .line 1450
    const/16 v17, 0x0

    .line 1451
    const/16 v20, 0x0

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v27

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v32

    add-int v26, v30, v32

    .line 1455
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 1457
    move/from16 v0, v27

    add-int/lit16 v0, v0, -0xc8

    move/from16 v16, v0

    .line 1458
    move/from16 v0, v26

    add-int/lit16 v0, v0, 0xc8

    move/from16 v19, v0

    .line 1460
    if-gez v16, :cond_a8

    .line 1461
    const/16 v16, 0x0

    .line 1463
    :cond_a8
    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_b0

    .line 1464
    add-int/lit8 v19, v25, -0x1

    .line 1466
    :cond_b0
    move/from16 v0, v26

    move/from16 v1, v19

    if-le v0, v1, :cond_127

    .line 1467
    move/from16 v26, v19

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v32

    sub-int v32, v26, v32

    div-int/lit8 v32, v32, 0x2

    add-int v15, v30, v32

    .line 1472
    :goto_d2
    const/4 v12, 0x0

    .line 1473
    .local v12, i:I
    :goto_d3
    move/from16 v0, v16

    if-le v0, v12, :cond_148

    .line 1474
    invoke-interface {v8, v12}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_da
    .catchall {:try_start_55 .. :try_end_da} :catchall_145

    .line 1475
    const/4 v11, 0x0

    .line 1477
    .local v11, filePath:Ljava/lang/String;
    :try_start_db
    const-string v30, "_data"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_e8
    .catchall {:try_start_db .. :try_end_e8} :catchall_145
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_db .. :try_end_e8} :catch_140

    move-result-object v11

    .line 1481
    :goto_e9
    if-eqz v11, :cond_124

    .line 1482
    :try_start_eb
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 1483
    .local v28, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v28, :cond_11f

    .line 1484
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1485
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_11d

    .line 1486
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1487
    const/4 v5, 0x0

    .line 1488
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailCreateThread() - remove item in the out of left boundary, index : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_11d
    const/16 v28, 0x0

    .line 1492
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_11f
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    .end local v28           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_124
    add-int/lit8 v12, v12, 0x1

    .line 1495
    goto :goto_d3

    .line 1470
    .end local v11           #filePath:Ljava/lang/String;
    .end local v12           #i:I
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int v15, v30, v32

    goto :goto_d2

    .line 1478
    .restart local v11       #filePath:Ljava/lang/String;
    .restart local v12       #i:I
    :catch_140
    move-exception v9

    .line 1479
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v9}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_e9

    .line 1691
    .end local v9           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v11           #filePath:Ljava/lang/String;
    .end local v12           #i:I
    :catchall_145
    move-exception v30

    monitor-exit v31
    :try_end_147
    .catchall {:try_start_eb .. :try_end_147} :catchall_145

    throw v30

    .line 1497
    .restart local v12       #i:I
    :cond_148
    add-int/lit8 v12, v19, 0x1

    .line 1498
    :goto_14a
    add-int/lit8 v30, v25, -0x1

    move/from16 v0, v30

    if-le v0, v12, :cond_1a5

    .line 1499
    :try_start_150
    invoke-interface {v8, v12}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_145

    .line 1500
    const/4 v11, 0x0

    .line 1502
    .restart local v11       #filePath:Ljava/lang/String;
    :try_start_154
    const-string v30, "_data"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_161
    .catchall {:try_start_154 .. :try_end_161} :catchall_145
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_154 .. :try_end_161} :catch_1a0

    move-result-object v11

    .line 1506
    :goto_162
    if-eqz v11, :cond_19d

    .line 1507
    :try_start_164
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 1508
    .restart local v28       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v28, :cond_198

    .line 1509
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1510
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_196

    .line 1511
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1512
    const/4 v5, 0x0

    .line 1513
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailCreateThread() - remove item in the out of right boundary, index : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_196
    const/16 v28, 0x0

    .line 1517
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_198
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v28           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_19d
    add-int/lit8 v12, v12, 0x1

    .line 1520
    goto :goto_14a

    .line 1503
    :catch_1a0
    move-exception v9

    .line 1504
    .restart local v9       #e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v9}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_162

    .line 1522
    .end local v9           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v11           #filePath:Ljava/lang/String;
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2402(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static {v0, v15}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2502(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1525
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - thread reset"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - int start position:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - UI start & end position:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - left & right boundary position:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-interface {v8, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1533
    .end local v12           #i:I
    :cond_247
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    .line 1534
    .local v18, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2300(Lcom/sec/android/app/videoplayer/view/VideoListView;)Z

    move-result v30

    if-nez v30, :cond_25d

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_275

    .line 1535
    :cond_25d
    monitor-exit v31
    :try_end_25e
    .catchall {:try_start_164 .. :try_end_25e} :catchall_145

    .line 1694
    .end local v18           #position:I
    :cond_25e
    :goto_25e
    if-eqz v8, :cond_264

    .line 1695
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1696
    const/4 v8, 0x0

    .line 1699
    :cond_264
    if-eqz v23, :cond_268

    .line 1700
    const/16 v23, 0x0

    .line 1702
    :cond_268
    if-eqz v29, :cond_26c

    .line 1703
    const/16 v29, 0x0

    .line 1705
    :cond_26c
    const-string v30, "VideoListView"

    const-string v31, "startThumbnailThread() - thread ended"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 1537
    .restart local v18       #position:I
    :cond_275
    const/16 v22, 0x0

    .line 1538
    .local v22, thumb:Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    .line 1539
    .local v24, thumbSrc:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 1540
    .restart local v11       #filePath:Ljava/lang/String;
    const/4 v13, -0x1

    .line 1543
    .local v13, id:I
    :try_start_27b
    const-string v30, "_data"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1544
    const-string v30, "_id"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_296
    .catchall {:try_start_27b .. :try_end_296} :catchall_145
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_27b .. :try_end_296} :catch_436

    move-result v13

    .line 1549
    :goto_297
    :try_start_297
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 1551
    .restart local v28       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-nez v28, :cond_2b0

    .line 1552
    new-instance v28, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .end local v28           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v11}, Lcom/sec/android/app/videoplayer/util/VideoThumb;-><init>(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    .line 1555
    .restart local v28       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_2b0
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getRretrieverChecked()Z

    move-result v30

    if-nez v30, :cond_572

    .line 1556
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - set thumbnail"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v14, -0x1

    .line 1559
    .local v14, index:I
    const/4 v10, 0x0

    .line 1561
    .local v10, fileName:Ljava/lang/String;
    if-eqz v11, :cond_2d5

    .line 1562
    const/16 v30, 0x2f

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 1564
    add-int/lit8 v30, v14, 0x1

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1567
    :cond_2d5
    invoke-static {v13, v10}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->getCacheBitmapFilePath(ILjava/lang/String;)Ljava/lang/String;
    :try_end_2d8
    .catchall {:try_start_297 .. :try_end_2d8} :catchall_145

    move-result-object v6

    .line 1571
    .local v6, cacheFilePath:Ljava/lang/String;
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_2e3

    .line 1572
    :try_start_2df
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2e2
    .catchall {:try_start_2df .. :try_end_2e2} :catchall_145
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_2e2} :catch_459
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2df .. :try_end_2e2} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_2df .. :try_end_2e2} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2df .. :try_end_2e2} :catch_4c1

    move-result-object v24

    .line 1578
    :cond_2e3
    :goto_2e3
    if-nez v24, :cond_4f4

    .line 1579
    :try_start_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2600(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/media/MediaMetadataRetriever;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2600(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/media/MediaMetadataRetriever;

    move-result-object v30

    const/16 v32, 0x17b

    const/16 v33, 0xe7

    const/16 v34, 0x1

    const/16 v35, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2600(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/media/MediaMetadataRetriever;

    move-result-object v30

    const-wide/32 v32, 0xe4e1c0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1584
    if-eqz v24, :cond_483

    .line 1585
    const/16 v30, 0x17b

    const/16 v32, 0xe7

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 1589
    :goto_33c
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_4b4

    if-eqz v22, :cond_4b4

    .line 1590
    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->saveBitmapCacheFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 1602
    :goto_349
    if-eqz v24, :cond_350

    .line 1603
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 1604
    const/16 v24, 0x0

    .line 1607
    :cond_350
    monitor-enter v23
    :try_end_351
    .catchall {:try_start_2e5 .. :try_end_351} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e5 .. :try_end_351} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_2e5 .. :try_end_351} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e5 .. :try_end_351} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_351} :catch_522

    .line 1608
    const/16 v30, 0x1

    :try_start_353
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->setRretrieverChecked(Z)V

    .line 1609
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 1610
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    monitor-exit v23
    :try_end_369
    .catchall {:try_start_353 .. :try_end_369} :catchall_546

    .line 1613
    :try_start_369
    monitor-enter v29
    :try_end_36a
    .catchall {:try_start_369 .. :try_end_36a} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_369 .. :try_end_36a} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_369 .. :try_end_36a} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_369 .. :try_end_36a} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_36a} :catch_522

    .line 1614
    :try_start_36a
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    monitor-exit v29
    :try_end_372
    .catchall {:try_start_36a .. :try_end_372} :catchall_549

    .line 1632
    :goto_372
    :try_start_372
    sget v30, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    const/16 v32, 0x2

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_54c

    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_54c

    move/from16 v0, v18

    move/from16 v1, v26

    if-gt v0, v1, :cond_54c

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v30

    new-instance v32, Lcom/sec/android/app/videoplayer/view/VideoListView$15$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView$15$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView$15;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1641
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - for fast UI update!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    .end local v6           #cacheFilePath:Ljava/lang/String;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v14           #index:I
    :cond_3ad
    :goto_3ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v21

    .line 1659
    .local v21, tempPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2408(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    .line 1661
    if-nez v17, :cond_3f5

    if-nez v20, :cond_3f5

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    rem-int/lit8 v30, v30, 0x2

    if-nez v30, :cond_57f

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v33, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v33

    add-int v32, v32, v33

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2502(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1669
    :cond_3f5
    :goto_3f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_5a4

    .line 1670
    const/16 v17, 0x1

    .line 1675
    :cond_407
    :goto_407
    if-eqz v17, :cond_5b8

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    add-int/lit8 v32, v21, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2502(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v19

    if-le v0, v1, :cond_5e7

    .line 1678
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - right done after left!! finish!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    monitor-exit v31

    goto/16 :goto_25e

    .line 1545
    .end local v21           #tempPos:I
    .end local v28           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catch_436
    move-exception v7

    .line 1546
    .local v7, ciobe:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "cursor - "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_457
    .catchall {:try_start_372 .. :try_end_457} :catchall_145

    goto/16 :goto_297

    .line 1574
    .end local v7           #ciobe:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v6       #cacheFilePath:Ljava/lang/String;
    .restart local v10       #fileName:Ljava/lang/String;
    .restart local v14       #index:I
    .restart local v28       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catch_459
    move-exception v9

    .line 1575
    .local v9, e:Ljava/lang/Exception;
    :try_start_45a
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45d
    .catchall {:try_start_45a .. :try_end_45d} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45a .. :try_end_45d} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_45a .. :try_end_45d} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45a .. :try_end_45d} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_45a .. :try_end_45d} :catch_522

    goto/16 :goto_2e3

    .line 1616
    .end local v9           #e:Ljava/lang/Exception;
    :catch_45f
    move-exception v9

    .line 1617
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_460
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - IllegalArgumentException occured:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_481
    .catchall {:try_start_460 .. :try_end_481} :catchall_145

    goto/16 :goto_372

    .line 1587
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_483
    :try_start_483
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - thumbSrc is Null!!!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48e
    .catchall {:try_start_483 .. :try_end_48e} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_483 .. :try_end_48e} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_483 .. :try_end_48e} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_483 .. :try_end_48e} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_48e} :catch_522

    goto/16 :goto_33c

    .line 1619
    :catch_490
    move-exception v9

    .line 1620
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_491
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - RuntimeException occured:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4b2
    .catchall {:try_start_491 .. :try_end_4b2} :catchall_145

    goto/16 :goto_372

    .line 1592
    .end local v9           #e:Ljava/lang/RuntimeException;
    :cond_4b4
    :try_start_4b4
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - invalid id. don\'t save cached bitmap."

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4bf
    .catchall {:try_start_4b4 .. :try_end_4bf} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b4 .. :try_end_4bf} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_4b4 .. :try_end_4bf} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4b4 .. :try_end_4bf} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_4b4 .. :try_end_4bf} :catch_522

    goto/16 :goto_349

    .line 1622
    :catch_4c1
    move-exception v9

    .line 1623
    .local v9, e:Ljava/lang/OutOfMemoryError;
    :try_start_4c2
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - OutOfMemoryError occured:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2302(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z
    :try_end_4f2
    .catchall {:try_start_4c2 .. :try_end_4f2} :catchall_145

    goto/16 :goto_372

    .line 1595
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :cond_4f4
    :try_start_4f4
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - bitmap has loaded from file."

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    if-eqz v24, :cond_515

    .line 1597
    const/16 v30, 0x17b

    const/16 v32, 0xe7

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    goto/16 :goto_349

    .line 1599
    :cond_515
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() from file - thumbSrc is Null!!!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_520
    .catchall {:try_start_4f4 .. :try_end_520} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f4 .. :try_end_520} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_4f4 .. :try_end_520} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f4 .. :try_end_520} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_4f4 .. :try_end_520} :catch_522

    goto/16 :goto_349

    .line 1626
    :catch_522
    move-exception v9

    .line 1627
    .local v9, e:Ljava/lang/Exception;
    :try_start_523
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - Exception occured:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_544
    .catchall {:try_start_523 .. :try_end_544} :catchall_145

    goto/16 :goto_372

    .line 1611
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_546
    move-exception v30

    :try_start_547
    monitor-exit v23
    :try_end_548
    .catchall {:try_start_547 .. :try_end_548} :catchall_546

    :try_start_548
    throw v30
    :try_end_549
    .catchall {:try_start_548 .. :try_end_549} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_548 .. :try_end_549} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_548 .. :try_end_549} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_548 .. :try_end_549} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_548 .. :try_end_549} :catch_522

    .line 1615
    :catchall_549
    move-exception v30

    :try_start_54a
    monitor-exit v29
    :try_end_54b
    .catchall {:try_start_54a .. :try_end_54b} :catchall_549

    :try_start_54b
    throw v30
    :try_end_54c
    .catchall {:try_start_54b .. :try_end_54c} :catchall_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54b .. :try_end_54c} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_54b .. :try_end_54c} :catch_490
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54b .. :try_end_54c} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_54b .. :try_end_54c} :catch_522

    .line 1642
    :cond_54c
    :try_start_54c
    sget v30, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    const/16 v32, 0x2

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_3ad

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v30

    new-instance v32, Lcom/sec/android/app/videoplayer/view/VideoListView$15$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView$15$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView$15;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3ad

    .line 1654
    .end local v6           #cacheFilePath:Ljava/lang/String;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v14           #index:I
    :cond_572
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - already exist"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3ad

    .line 1665
    .restart local v21       #tempPos:I
    :cond_57f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v33, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v33

    sub-int v32, v32, v33

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2502(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    goto/16 :goto_3f5

    .line 1671
    :cond_5a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v19

    if-le v0, v1, :cond_407

    .line 1672
    const/16 v20, 0x1

    goto/16 :goto_407

    .line 1681
    :cond_5b8
    if-eqz v20, :cond_5e7

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    add-int/lit8 v32, v21, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2502(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_5e7

    .line 1684
    const-string v30, "VideoListView"

    const-string v32, "startThumbnailThread() - left done after right!! finish!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    monitor-exit v31

    goto/16 :goto_25e

    .line 1689
    :cond_5e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1690
    const-string v30, "VideoListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startThumbnailThread() - mNextPoint:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-object/from16 v33, v0

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    monitor-exit v31
    :try_end_61d
    .catchall {:try_start_54c .. :try_end_61d} :catchall_145

    goto/16 :goto_46
.end method
