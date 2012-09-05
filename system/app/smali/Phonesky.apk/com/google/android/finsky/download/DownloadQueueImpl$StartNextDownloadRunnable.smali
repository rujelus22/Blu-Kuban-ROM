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
    .line 547
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 551
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$200(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_22

    .line 622
    :cond_21
    :goto_21
    return-void

    .line 556
    :cond_22
    const/4 v15, 0x0

    .line 557
    .local v15, toStart:Lcom/google/android/finsky/download/InternalDownload;
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 558
    .local v14, toRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 560
    .local v17, urls:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3a
    :goto_3a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_133

    .line 561
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 562
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/download/InternalDownload;

    .line 563
    .local v4, current:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {v14, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v18

    sget-object v19, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3a

    .line 566
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getSize()J

    move-result-wide v7

    .line 567
    .local v7, downloadSize:J
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->cachePartitionAvailableSpace()J

    move-result-wide v2

    .line 568
    .local v2, cacheSpace:J
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->dataPartitionAvailableSpace()J

    move-result-wide v5

    .line 569
    .local v5, dataSpace:J
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailableSpace()J

    move-result-wide v9

    .line 571
    .local v9, externalStorageSpace:J
    sget-boolean v18, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v18, :cond_c4

    .line 572
    const-string v18, "b/4503710 : Download size : %f, Cache partition space : %f, Data partition space : %f, External storage space : %f"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    long-to-float v0, v7

    move/from16 v21, v0

    const/high16 v22, 0x4980

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    long-to-float v0, v2

    move/from16 v21, v0

    const/high16 v22, 0x4980

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    long-to-float v0, v5

    move/from16 v21, v0

    const/high16 v22, 0x4980

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    long-to-float v0, v9

    move/from16 v21, v0

    const/high16 v22, 0x4980

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :cond_c4
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getRequestedDestination()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_100

    .line 581
    cmp-long v18, v9, v7

    if-gez v18, :cond_132

    .line 582
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v18

    if-eqz v18, :cond_fe

    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    .line 584
    .local v13, packageName:Ljava/lang/String;
    :goto_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$500(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/utils/Notifier;

    move-result-object v18

    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Lcom/google/android/finsky/utils/Notifier;->showExternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto/16 :goto_3a

    .line 582
    .end local v13           #packageName:Ljava/lang/String;
    :cond_fe
    const/4 v13, 0x0

    goto :goto_dc

    .line 596
    :cond_100
    cmp-long v18, v5, v7

    if-gez v18, :cond_132

    .line 599
    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v18

    if-eqz v18, :cond_125

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$500(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/utils/Notifier;

    move-result-object v18

    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v4}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/android/finsky/utils/Notifier;->showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto/16 :goto_3a

    .line 607
    :cond_132
    move-object v15, v4

    .line 612
    .end local v2           #cacheSpace:J
    .end local v4           #current:Lcom/google/android/finsky/download/InternalDownload;
    .end local v5           #dataSpace:J
    .end local v7           #downloadSize:J
    .end local v9           #externalStorageSpace:J
    .end local v12           #key:Ljava/lang/String;
    :cond_133
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_137
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_155

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 613
    .local v16, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_137

    .line 616
    .end local v16           #url:Ljava/lang/String;
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$200(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    if-nez v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$600(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;

    move-result-object v18

    if-eqz v18, :cond_21

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$600(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/download/DownloadProgressManager;->cleanup()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;
    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$602(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadProgressManager;

    goto/16 :goto_21
.end method
