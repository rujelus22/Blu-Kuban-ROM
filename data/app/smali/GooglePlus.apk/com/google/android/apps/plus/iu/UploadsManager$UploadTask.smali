.class Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;
.super Lcom/google/android/apps/plus/iu/SyncTask;
.source "UploadsManager.java"

# interfaces
.implements Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation


# instance fields
.field protected mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

.field protected mLogName:Ljava/lang/String;

.field protected volatile mRunning:Z

.field protected mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

.field private final mTypePrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "account"
    .parameter "typePrefix"

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    .line 1356
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/iu/SyncTask;-><init>(Ljava/lang/String;)V

    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    .line 1357
    iput-object p3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mTypePrefix:Ljava/lang/String;

    .line 1358
    return-void
.end method

.method private onIncompleteUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Z)Z
    .registers 8
    .parameter "task"
    .parameter "gotIoException"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 1558
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 1559
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_176

    .line 1593
    :pswitch_c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v0

    if-eq v0, v3, :cond_147

    .line 1594
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1595
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state after upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_33
    const/4 v0, 0x5

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong state after upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(ILjava/lang/Throwable;)V

    .line 1608
    :cond_53
    :goto_53
    const/4 v0, 0x0

    monitor-exit v1

    :goto_55
    return v0

    .line 1561
    :pswitch_56
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V

    .line 1562
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1600(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 1563
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onStalled(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Z)V

    .line 1565
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1566
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- STOP stalled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_8f
    monitor-exit v1

    goto :goto_55

    .line 1609
    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_5 .. :try_end_93} :catchall_91

    throw v0

    .line 1570
    :pswitch_94
    :try_start_94
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1700(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1571
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onUnauthorized(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 1573
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1574
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- STOP unauthorized "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_d1
    monitor-exit v1

    goto :goto_55

    .line 1578
    :pswitch_d3
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1700(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1579
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onQuotaReached(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 1581
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1582
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- STOP quota exceeded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_110
    monitor-exit v1

    goto/16 :goto_55

    .line 1586
    :pswitch_113
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V

    .line 1588
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1589
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- STOP cancelled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 1602
    :cond_147
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1603
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- STOP failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catchall {:try_start_94 .. :try_end_174} :catchall_91

    goto/16 :goto_53

    .line 1559
    :pswitch_data_176
    .packed-switch 0x6
        :pswitch_56
        :pswitch_113
        :pswitch_c
        :pswitch_94
        :pswitch_d3
    .end packed-switch
.end method

.method private skipTask(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Landroid/content/SyncStats;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "task"
    .parameter "syncStats"
    .parameter "t"

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/16 v2, 0xb

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    invoke-static {v1, p1, v2, p3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V

    .line 1397
    iget-wide v1, p2, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p2, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 1400
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-wide v2, p1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1100(Lcom/google/android/apps/plus/iu/UploadsManager;J)Z

    .line 1401
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    new-instance v2, Lcom/google/android/apps/plus/iu/UploadedEntry;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/iu/UploadedEntry;-><init>(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->recordResult(Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1200(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;

    move-result-object v0

    .line 1402
    .local v0, result:Lcom/google/android/apps/plus/iu/UploadedEntry;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onTaskDone(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;)V

    .line 1403
    return-void
.end method


# virtual methods
.method public abortSync()V
    .registers 5

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 1672
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    .line 1673
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1674
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_13

    .line 1675
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 1678
    :cond_13
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1679
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- ABORT sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_36
    monitor-exit v1

    .line 1682
    return-void

    .line 1681
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public cancelIfCurrentTaskMatches(J)Z
    .registers 7
    .parameter "taskId"

    .prologue
    .line 1716
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 1717
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    iget-wide v2, v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_16

    .line 1719
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1720
    const/4 v0, 0x1

    monitor-exit v1

    .line 1722
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_15

    .line 1723
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public cancelSync()V
    .registers 5

    .prologue
    .line 1656
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 1657
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    .line 1658
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->stopCurrentTask(I)V

    .line 1659
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_13

    .line 1660
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 1663
    :cond_13
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1664
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- CANCEL sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_36
    monitor-exit v1

    .line 1667
    return-void

    .line 1666
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method protected getNextUpload()Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mTypePrefix:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1800(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundSync()Z
    .registers 2

    .prologue
    .line 1711
    const/4 v0, 0x0

    return v0
.end method

.method public isSyncOnBattery()Z
    .registers 2

    .prologue
    .line 1706
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 1700
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .registers 2

    .prologue
    .line 1694
    const/4 v0, 0x0

    return v0
.end method

.method public isUploadedBefore(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Z
    .registers 15
    .parameter "task"

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1773
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v9

    .line 1774
    .local v9, hash:I
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2200(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1775
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2300()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint_hash=?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1778
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_31

    move v1, v11

    .line 1790
    :goto_30
    return v1

    .line 1782
    :cond_31
    :try_start_31
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1783
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1784
    .local v10, rawData:[B
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/gallery3d/common/Fingerprint;->equals([B)Z
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_50

    move-result v1

    if-eqz v1, :cond_31

    .line 1790
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v12

    goto :goto_30

    .end local v10           #rawData:[B
    :cond_4b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v11

    goto :goto_30

    :catchall_50
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onFileChanged(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/FingerprintHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->invalidate(Ljava/lang/String;)V

    .line 1769
    return-void
.end method

.method public onProgress(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 1753
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    if-eqz v0, :cond_3a

    .line 1754
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1755
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1600(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 1758
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1900(Lcom/google/android/apps/plus/iu/UploadsManager;Z)V

    .line 1759
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    .line 1761
    :cond_3a
    monitor-exit v1

    .line 1762
    return-void

    .line 1761
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method protected onQuotaReached(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 5
    .parameter "task"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1900(Lcom/google/android/apps/plus/iu/UploadsManager;Z)V

    .line 1635
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    .line 1637
    return-void
.end method

.method public onRejected(I)V
    .registers 5
    .parameter "reasonCode"

    .prologue
    .line 1687
    const-string v0, "iu.UploadsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REJECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return-void
.end method

.method protected onStalled(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Z)V
    .registers 6
    .parameter "task"
    .parameter "gotIoException"

    .prologue
    const/4 v2, 0x0

    .line 1640
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1900(Lcom/google/android/apps/plus/iu/UploadsManager;Z)V

    .line 1641
    if-eqz p2, :cond_25

    .line 1642
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->hasNetworkConnectivity(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1643
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/16 v1, 0xf

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    .line 1652
    :goto_1c
    return-void

    .line 1645
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/16 v1, 0xe

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    goto :goto_1c

    .line 1650
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/16 v1, 0xd

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    goto :goto_1c
.end method

.method protected onTaskDone(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;)V
    .registers 6
    .parameter "task"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1624
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    if-eqz p2, :cond_f

    move v0, v1

    :goto_6
    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1900(Lcom/google/android/apps/plus/iu/UploadsManager;Z)V

    .line 1625
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    .line 1626
    return-void

    .line 1624
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onUnauthorized(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 5
    .parameter "task"

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1900(Lcom/google/android/apps/plus/iu/UploadsManager;Z)V

    .line 1630
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v1, 0x0

    const/16 v2, 0xa

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    .line 1631
    return-void
.end method

.method protected onUploadsDone()V
    .registers 1

    .prologue
    .line 1621
    return-void
.end method

.method public final performSync(Landroid/content/SyncResult;)V
    .registers 7
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1362
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v2

    .line 1363
    :try_start_4
    iget-boolean v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    if-nez v1, :cond_a

    .line 1364
    monitor-exit v2

    .line 1393
    :goto_9
    return-void

    .line 1368
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$700(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    .line 1369
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 1371
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->setCurrentUploadTask(Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V
    invoke-static {v1, p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$800(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V

    .line 1372
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_aa

    .line 1374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 1376
    .local v0, statsId:I
    :try_start_33
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1377
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- START syncing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_62
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->performSyncInternal(Landroid/content/SyncResult;)V

    .line 1382
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1383
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- DONE syncing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_33 .. :try_end_94} :catchall_ad

    .line 1386
    :cond_94
    iput-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 1387
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->setCurrentUploadTask(Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V
    invoke-static {v1, v4}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$800(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V

    .line 1388
    iput-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    .line 1391
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "iu.upload"

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->endWithReport(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1372
    .end local v0           #statsId:I
    :catchall_aa
    move-exception v1

    :try_start_ab
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v1

    .line 1386
    .restart local v0       #statsId:I
    :catchall_ad
    move-exception v1

    iput-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 1387
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->setCurrentUploadTask(Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V
    invoke-static {v2, v4}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$800(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V

    .line 1388
    iput-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    .line 1391
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "iu.upload"

    invoke-static {v2, v0, v3}, Lcom/google/android/apps/plus/iu/MetricsUtils;->endWithReport(Landroid/content/Context;ILjava/lang/String;)V

    throw v1
.end method

.method protected performSyncInternal(Landroid/content/SyncResult;)V
    .registers 21
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1406
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 1407
    .local v10, syncStats:Landroid/content/SyncStats;
    const/4 v9, 0x0

    .line 1408
    .local v9, syncAttempt:I
    const-wide/16 v7, 0x3a98

    .line 1410
    .local v7, sleepTime:J
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    if-eqz v14, :cond_4e

    .line 1411
    const/4 v12, 0x0

    .line 1412
    .local v12, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v15

    .line 1415
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->getNextUpload()Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_4f

    .line 1416
    .end local v12           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .local v13, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_start_1b
    monitor-exit v15
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_366

    .line 1418
    if-nez v13, :cond_52

    .line 1419
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 1420
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ STOP syncing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; no more tasks"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onUploadsDone()V

    .line 1554
    .end local v13           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_4e
    :goto_4e
    return-void

    .line 1416
    .restart local v12       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :catchall_4f
    move-exception v14

    :goto_50
    :try_start_50
    monitor-exit v15
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v14

    .line 1425
    .end local v12           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .restart local v13       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_52
    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8e

    .line 1426
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4e

    .line 1427
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ STOP syncing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; account changed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 1436
    :cond_8e
    const/4 v14, 0x7

    if-le v9, v14, :cond_cb

    .line 1437
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_c2

    .line 1438
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ STOP syncing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; no more tries: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_c2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v14}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->skipTask(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Landroid/content/SyncStats;Ljava/lang/Throwable;)V

    .line 1442
    const/4 v9, 0x0

    .line 1443
    goto/16 :goto_7

    .line 1446
    :cond_cb
    add-int/lit8 v9, v9, 0x1

    .line 1447
    const/4 v14, 0x1

    if-le v9, v14, :cond_1a5

    .line 1449
    :try_start_d0
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_11b

    .line 1450
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ SLEEP "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " try: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", task: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_11b
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_d0 .. :try_end_11e} :catch_363

    .line 1457
    :goto_11e
    const-wide/16 v14, 0x2

    mul-long/2addr v7, v14

    .line 1462
    :goto_121
    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isStartedYet()Z

    move-result v14

    if-nez v14, :cond_1a9

    .line 1463
    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setUploadedTime()V

    .line 1467
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->fillRequest(Landroid/content/Context;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Z

    move-result v14

    if-nez v14, :cond_1a9

    .line 1469
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1470
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ RETRY "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " task: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_169} :catch_16b

    goto/16 :goto_7

    .line 1474
    :catch_16b
    move-exception v11

    .line 1475
    .local v11, t:Ljava/lang/Throwable;
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x6

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_19d

    .line 1476
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ STOP syncing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; fill failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_19d
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v11}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->skipTask(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Landroid/content/SyncStats;Ljava/lang/Throwable;)V

    .line 1479
    const/4 v9, 0x0

    .line 1480
    goto/16 :goto_7

    .line 1459
    .end local v11           #t:Ljava/lang/Throwable;
    :cond_1a5
    const-wide/16 v7, 0x3a98

    goto/16 :goto_121

    .line 1485
    :cond_1a9
    const-string v14, "camera-sync"

    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1486
    .local v5, isInstantUpload:Z
    if-eqz v5, :cond_1f2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncCameraSyncStream(Landroid/content/SyncResult;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1f2

    .line 1487
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4e

    .line 1488
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ STOP syncing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; picasa sync canceled"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 1493
    :cond_1f2
    const/4 v6, 0x0

    .line 1496
    .local v6, result:Lcom/google/android/apps/plus/iu/UploadedEntry;
    if-eqz v5, :cond_256

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->isUploadedBefore(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Z

    move-result v14

    if-eqz v14, :cond_256

    .line 1497
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_22e

    .line 1498
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ SKIP duplicate "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " task: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_22e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/16 v15, 0xc

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V
    invoke-static {v14, v13, v15}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1300(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V

    .line 1546
    :cond_237
    :goto_237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-wide v15, v13, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->removeTaskFromDb(J)Z
    invoke-static/range {v14 .. v16}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1100(Lcom/google/android/apps/plus/iu/UploadsManager;J)Z

    .line 1547
    if-nez v6, :cond_247

    .line 1548
    new-instance v6, Lcom/google/android/apps/plus/iu/UploadedEntry;

    .end local v6           #result:Lcom/google/android/apps/plus/iu/UploadedEntry;
    invoke-direct {v6, v13}, Lcom/google/android/apps/plus/iu/UploadedEntry;-><init>(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 1550
    .restart local v6       #result:Lcom/google/android/apps/plus/iu/UploadedEntry;
    :cond_247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->recordResult(Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    invoke-static {v14, v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1200(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;

    .line 1551
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onTaskDone(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;)V

    .line 1552
    const/4 v9, 0x0

    .line 1553
    goto/16 :goto_7

    .line 1503
    :cond_256
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_291

    .line 1504
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ START "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " try: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", task: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_291
    iget-wide v3, v10, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1509
    .local v3, ioeCount:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->doUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    invoke-static {v14, v13, v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1400(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/UploadedEntry;

    move-result-object v6

    .line 1511
    if-nez v6, :cond_2bb

    .line 1512
    iget-wide v14, v10, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v14, v14, v3

    if-lez v14, :cond_2b9

    const/4 v2, 0x1

    .line 1513
    .local v2, gotIoException:Z
    :goto_2a8
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->onIncompleteUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Z)Z

    move-result v14

    if-eqz v14, :cond_237

    .line 1514
    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4e

    goto/16 :goto_7

    .line 1512
    .end local v2           #gotIoException:Z
    :cond_2b9
    const/4 v2, 0x0

    goto :goto_2a8

    .line 1521
    :cond_2bb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v15, 0x4

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V
    invoke-static {v14, v13, v15}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1300(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V

    .line 1522
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v15, v14, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    iput-wide v15, v14, Landroid/content/SyncStats;->numEntries:J

    .line 1523
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v15, v14, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    iput-wide v15, v14, Landroid/content/SyncStats;->numInserts:J

    .line 1527
    const-string v14, "camera-sync"

    iget-object v15, v6, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_330

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    move-object/from16 v0, p1

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->writeToPhotoTable(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;Landroid/content/SyncResult;)Z
    invoke-static {v14, v13, v6, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;Landroid/content/SyncResult;)Z

    move-result v14

    if-nez v14, :cond_330

    .line 1531
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_325

    .line 1532
    const-string v14, "iu.UploadsManager"

    const-string v15, "sync album now: %s, %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v13}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->syncCameraSyncStream(Landroid/content/SyncResult;Ljava/lang/String;)Z

    .line 1539
    :cond_330
    const-string v14, "iu.UploadsManager"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_237

    .line 1540
    const-string v14, "iu.UploadsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+++ DONE "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mLogName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " task: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_237

    .line 1454
    .end local v3           #ioeCount:J
    .end local v5           #isInstantUpload:Z
    .end local v6           #result:Lcom/google/android/apps/plus/iu/UploadedEntry;
    :catch_363
    move-exception v14

    goto/16 :goto_11e

    .line 1416
    :catchall_366
    move-exception v14

    move-object v12, v13

    .end local v13           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .restart local v12       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    goto/16 :goto_50
.end method

.method protected stopCurrentTask(I)V
    .registers 6
    .parameter "stopState"

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mCurrentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 1733
    .local v0, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1734
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCurrentTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_23
    if-nez v0, :cond_26

    .line 1747
    :goto_25
    return-void

    .line 1739
    :cond_26
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v2

    .line 1740
    :try_start_29
    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isCancellable()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1741
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V

    .line 1744
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1746
    :cond_37
    monitor-exit v2

    goto :goto_25

    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method protected syncCameraSyncStream(Landroid/content/SyncResult;Ljava/lang/String;)Z
    .registers 12
    .parameter "syncResult"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 1798
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mSyncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    .line 1799
    .local v2, syncContext:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    invoke-static {v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$700(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    move-result-object v4

    .line 1800
    .local v4, syncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    iget-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v7

    .line 1802
    :try_start_c
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2500(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1803
    const/4 v3, 0x1

    monitor-exit v7

    .line 1841
    :goto_1a
    return v3

    .line 1805
    :cond_1b
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    if-nez v6, :cond_24

    .line 1806
    monitor-exit v7

    goto :goto_1a

    .line 1808
    :catchall_21
    move-exception v6

    monitor-exit v7
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v6

    :cond_24
    :try_start_24
    monitor-exit v7
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 1809
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1810
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sync camera-sync stream for dedup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_4a
    iget-object v6, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1814
    .local v0, authExceptionCount:J
    invoke-virtual {v4, p2}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UserEntry;

    move-result-object v5

    .line 1815
    .local v5, userEntry:Lcom/google/android/apps/plus/iu/UserEntry;
    if-nez v5, :cond_86

    .line 1816
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1817
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no userEntry for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->cancelSync()V

    .line 1821
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1700(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1824
    :cond_86
    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->syncUploadedPhotos(Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;Lcom/google/android/apps/plus/iu/UserEntry;)V

    .line 1825
    iget-object v6, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_c4

    .line 1826
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1827
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need picasa authorization for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->cancelSync()V

    .line 1831
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1700(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 1835
    :cond_c4
    iget-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v7

    .line 1837
    :try_start_c7
    iget-boolean v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->mRunning:Z

    .line 1838
    .local v3, syncDone:Z
    if-eqz v3, :cond_d4

    .line 1839
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2500(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1841
    :cond_d4
    monitor-exit v7

    goto/16 :goto_1a

    .line 1842
    .end local v3           #syncDone:Z
    :catchall_d7
    move-exception v6

    monitor-exit v7
    :try_end_d9
    .catchall {:try_start_c7 .. :try_end_d9} :catchall_d7

    throw v6
.end method
