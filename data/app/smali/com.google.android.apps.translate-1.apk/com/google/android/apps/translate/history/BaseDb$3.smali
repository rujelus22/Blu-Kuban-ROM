.class Lcom/google/android/apps/translate/history/BaseDb$3;
.super Ljava/lang/Thread;
.source "BaseDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseDb;->saveIntoDbAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseDb;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseDb;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private iterate()Z
    .registers 6

    .prologue
    .line 562
    const-wide/16 v1, 0x1388

    :try_start_2
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/history/BaseDb$3;->sleep(J)V

    .line 563
    iget-object v2, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_37

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, totalWaitedTimeMs:I
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    iget-boolean v1, v1, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    if-nez v1, :cond_1e

    const v1, 0x186a0

    if-ge v0, v1, :cond_1e

    .line 566
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 567
    add-int/lit16 v0, v0, 0x1388

    goto :goto_9

    .line 570
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    iget-boolean v1, v1, Lcom/google/android/apps/translate/history/BaseDb;->mMemoryDirty:Z

    if-nez v1, :cond_2c

    .line 572
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/apps/translate/history/BaseDb;->mFlusherThread:Ljava/lang/Thread;

    .line 573
    const/4 v1, 0x0

    monitor-exit v2

    .line 580
    .end local v0           #totalWaitedTimeMs:I
    :goto_2b
    return v1

    .line 575
    .restart local v0       #totalWaitedTimeMs:I
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_34

    .line 576
    :try_start_2d
    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseDb$3;->this$0:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/BaseDb;->saveIntoDb()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_32} :catch_37

    .line 580
    .end local v0           #totalWaitedTimeMs:I
    :goto_32
    const/4 v1, 0x1

    goto :goto_2b

    .line 575
    .restart local v0       #totalWaitedTimeMs:I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_37} :catch_37

    .line 577
    .end local v0           #totalWaitedTimeMs:I
    :catch_37
    move-exception v1

    goto :goto_32
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/translate/history/BaseDb$3;->iterate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    return-void
.end method
