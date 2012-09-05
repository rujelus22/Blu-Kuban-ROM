.class Lcom/cooliris/media/MediaFeed$1;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/MediaFeed;

.field final synthetic val$copyMediaBuckets:Ljava/util/ArrayList;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$mGridLayer:Lcom/cooliris/media/GridLayer;

.field final synthetic val$numBuckets:I

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/cooliris/media/MediaFeed;Ljava/util/ArrayList;IILcom/cooliris/media/GridLayer;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    iput-object p2, p0, Lcom/cooliris/media/MediaFeed$1;->val$copyMediaBuckets:Ljava/util/ArrayList;

    iput p3, p0, Lcom/cooliris/media/MediaFeed$1;->val$operation:I

    iput p4, p0, Lcom/cooliris/media/MediaFeed$1;->val$numBuckets:I

    iput-object p5, p0, Lcom/cooliris/media/MediaFeed$1;->val$mGridLayer:Lcom/cooliris/media/GridLayer;

    iput-object p6, p0, Lcom/cooliris/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/MediaFeed$1;->val$copyMediaBuckets:Ljava/util/ArrayList;

    .line 328
    .local v9, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaFeed$1;->val$operation:I

    if-nez v14, :cond_168

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    iget-object v15, v14, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/4 v14, 0x4

    invoke-virtual {v15, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, allDelete:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_26
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaFeed$1;->val$numBuckets:I

    if-ge v5, v14, :cond_97

    .line 335
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaBucket;

    .line 336
    .local v2, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v12, v2, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 337
    .local v12, set:Lcom/cooliris/media/MediaSet;
    iget-object v7, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 338
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v12, :cond_44

    if-nez v7, :cond_44

    .line 340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v14, v12}, Lcom/cooliris/media/MediaFeed;->removeMediaSet(Lcom/cooliris/media/MediaSet;)V

    .line 334
    :cond_41
    :goto_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 341
    :cond_44
    if-eqz v12, :cond_41

    if-eqz v7, :cond_41

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$100(Lcom/cooliris/media/MediaFeed;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaClustering;

    .line 347
    .local v3, clustering:Lcom/cooliris/media/MediaClustering;
    const/4 v8, 0x0

    .local v8, j:I
    :goto_57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_78

    .line 348
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaItem;

    .line 349
    .local v6, item:Lcom/cooliris/media/MediaItem;
    if-eqz v6, :cond_75

    iget-object v14, v6, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v14, :cond_75

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #calls: Lcom/cooliris/media/MediaFeed;->removeItemFromMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V
    invoke-static {v14, v6, v12}, Lcom/cooliris/media/MediaFeed;->access$200(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V

    .line 354
    if-eqz v3, :cond_75

    .line 355
    invoke-virtual {v3, v6}, Lcom/cooliris/media/MediaClustering;->removeItemFromClustering(Lcom/cooliris/media/MediaItem;)V

    .line 347
    :cond_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 360
    .end local v6           #item:Lcom/cooliris/media/MediaItem;
    :cond_78
    if-eqz v3, :cond_7d

    .line 361
    invoke-virtual {v3}, Lcom/cooliris/media/MediaClustering;->clear()V

    .line 363
    :cond_7d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$100(Lcom/cooliris/media/MediaFeed;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v12}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v14

    if-nez v14, :cond_41

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v14, v12}, Lcom/cooliris/media/MediaFeed;->removeMediaSet(Lcom/cooliris/media/MediaSet;)V

    .line 366
    const/4 v1, 0x1

    goto :goto_41

    .line 371
    .end local v2           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v3           #clustering:Lcom/cooliris/media/MediaClustering;
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v8           #j:I
    .end local v12           #set:Lcom/cooliris/media/MediaSet;
    :cond_97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;

    move-result-object v14

    if-eqz v14, :cond_b7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaFeed$1;->val$operation:I

    if-nez v14, :cond_b7

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v9, v0}, Lcom/cooliris/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    .line 374
    :cond_b7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->val$mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    invoke-virtual {v14}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v14

    if-eqz v14, :cond_dd

    if-eqz v1, :cond_dd

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    invoke-virtual {v14}, Lcom/cooliris/media/Gallery;->finish()V

    .line 379
    :cond_dd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    const/4 v15, 0x1

    #setter for: Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z
    invoke-static {v14, v15}, Lcom/cooliris/media/MediaFeed;->access$402(Lcom/cooliris/media/MediaFeed;Z)Z

    .line 382
    const/4 v13, 0x0

    .line 383
    .local v13, sleepCnt:I
    :goto_ee
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$400(Lcom/cooliris/media/MediaFeed;)Z

    move-result v14

    if-nez v14, :cond_fc

    const/16 v14, 0x32

    if-le v13, v14, :cond_109

    .line 385
    :cond_fc
    const-wide/16 v14, 0x64

    :try_start_fe
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_fe .. :try_end_101} :catch_104

    .line 386
    add-int/lit8 v13, v13, 0x1

    goto :goto_ee

    .line 387
    :catch_104
    move-exception v4

    .line 388
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ee

    .line 391
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->val$mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14, v1}, Lcom/cooliris/media/GridLayer;->afterDeleteReflush(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    iget-object v15, v14, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/16 v14, 0xa

    invoke-virtual {v15, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_167

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v14

    if-eqz v14, :cond_167

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f06004e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 426
    .end local v1           #allDelete:Z
    .end local v5           #i:I
    .end local v13           #sleepCnt:I
    :cond_167
    :goto_167
    return-void

    .line 398
    :cond_168
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaFeed$1;->val$operation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_167

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;

    move-result-object v14

    if-eqz v14, :cond_167

    .line 403
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 404
    .local v10, numBuckets:I
    const/4 v11, 0x0

    .line 405
    .local v11, numTotalItems:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_17f
    if-ge v5, v10, :cond_197

    .line 406
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaBucket;

    .line 407
    .restart local v2       #bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v12, v2, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 408
    .restart local v12       #set:Lcom/cooliris/media/MediaSet;
    iget-object v7, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 409
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v12, :cond_194

    if-eqz v7, :cond_194

    .line 410
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v11, v14

    .line 405
    :cond_194
    add-int/lit8 v5, v5, 0x1

    goto :goto_17f

    .line 414
    .end local v2           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v12           #set:Lcom/cooliris/media/MediaSet;
    :cond_197
    const/16 v14, 0xc

    if-le v11, v14, :cond_1e8

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    iget-object v15, v14, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/4 v14, 0x5

    invoke-virtual {v15, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/MediaFeed$1;->val$operation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v9, v0}, Lcom/cooliris/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    iget-object v15, v14, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/16 v14, 0xa

    invoke-virtual {v15, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_167

    .line 422
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/MediaFeed$1;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;
    invoke-static {v14}, Lcom/cooliris/media/MediaFeed;->access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/MediaFeed$1;->val$operation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v9, v0}, Lcom/cooliris/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    goto/16 :goto_167
.end method
