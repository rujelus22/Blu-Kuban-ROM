.class Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartNextDownloadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 423
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$100(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$200(Lcom/google/android/finsky/download/DownloadQueueImpl;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_22

    .line 489
    :cond_21
    :goto_21
    return-void

    .line 428
    :cond_22
    const/4 v14, 0x0

    .line 429
    .local v14, toStart:Lcom/google/android/finsky/download/InternalDownload;
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 430
    .local v13, toRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 432
    .local v16, urls:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3a
    :goto_3a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_103

    .line 433
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 434
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/download/InternalDownload;

    .line 435
    .local v4, current:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v17

    sget-object v18, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3a

    .line 438
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getMaximumSize()J

    move-result-wide v7

    .line 439
    .local v7, downloadSize:J
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->cachePartitionAvailableSpace()J

    move-result-wide v2

    .line 440
    .local v2, cacheSpace:J
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->dataPartitionAvailableSpace()J

    move-result-wide v5

    .line 441
    .local v5, dataSpace:J
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailableSpace()J

    move-result-wide v9

    .line 443
    .local v9, externalStorageSpace:J
    sget-boolean v17, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v17, :cond_c4

    .line 444
    const-string v17, "b/4503710 : Download size : %f, Cache partition space : %f, Data partition space : %f, External storage space : %f"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    long-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x4980

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    long-to-float v0, v2

    move/from16 v20, v0

    const/high16 v21, 0x4980

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    long-to-float v0, v5

    move/from16 v20, v0

    const/high16 v21, 0x4980

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    long-to-float v0, v9

    move/from16 v20, v0

    const/high16 v21, 0x4980

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    :cond_c4
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getRequestedDestination()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_e6

    .line 453
    cmp-long v17, v9, v7

    if-gez v17, :cond_102

    .line 454
    const/16 v17, 0x1f2

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/google/android/finsky/download/InternalDownload;->setHttpStatus(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto/16 :goto_3a

    .line 465
    :cond_e6
    cmp-long v17, v5, v7

    if-gez v17, :cond_102

    .line 468
    const/16 v17, 0x1f2

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/google/android/finsky/download/InternalDownload;->setHttpStatus(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto/16 :goto_3a

    .line 474
    :cond_102
    move-object v14, v4

    .line 479
    .end local v2           #cacheSpace:J
    .end local v4           #current:Lcom/google/android/finsky/download/InternalDownload;
    .end local v5           #dataSpace:J
    .end local v7           #downloadSize:J
    .end local v9           #externalStorageSpace:J
    .end local v12           #key:Ljava/lang/String;
    :cond_103
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_107
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_123

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 480
    .local v15, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_107

    .line 483
    .end local v15           #url:Ljava/lang/String;
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$100(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;

    move-result-object v17

    if-eqz v17, :cond_21

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;
    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/download/DownloadProgressManager;->cleanup()V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;
    invoke-static/range {v17 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$402(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadProgressManager;

    goto/16 :goto_21
.end method
