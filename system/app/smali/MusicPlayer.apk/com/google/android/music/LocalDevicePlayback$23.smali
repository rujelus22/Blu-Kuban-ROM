.class Lcom/google/android/music/LocalDevicePlayback$23;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->setShuffleMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$5700(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->isUsingPlayQueue()Z
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$5100(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2486
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->shufflePlayQueue(I)V

    .line 2488
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    monitor-enter v1

    .line 2489
    :try_start_29
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_75

    .line 2490
    :try_start_30
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4500(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2491
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "shuffle enabled"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2493
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4600(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/StrictShuffler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/music/StrictShuffler;->setHistorySize(I)V

    .line 2494
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4700(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 2499
    :goto_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_30 .. :try_end_5b} :catchall_72

    .line 2500
    :try_start_5b
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, 0x0

    #calls: Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V
    invoke-static {v0, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3300(Lcom/google/android/music/LocalDevicePlayback;Z)V

    .line 2501
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_75

    .line 2502
    return-void

    .line 2496
    :cond_63
    :try_start_63
    const-string v0, "shuffle disabled"

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2497
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$23;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_5a

    .line 2499
    :catchall_72
    move-exception v0

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_63 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0

    .line 2501
    :catchall_75
    move-exception v0

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_75

    throw v0
.end method
