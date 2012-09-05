.class Lcom/google/android/music/MusicPlaybackService$22;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2346
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    monitor-enter v1

    .line 2347
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_43

    .line 2348
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3900(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_31

    .line 2349
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "shuffle enabled"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2350
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v3

    #calls: Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V
    invoke-static {v0, v3}, Lcom/google/android/music/MusicPlaybackService;->access$4000(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 2355
    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_40

    .line 2356
    :try_start_29
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    #calls: Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$2900(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 2357
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_43

    .line 2358
    return-void

    .line 2352
    :cond_31
    :try_start_31
    const-string v0, "shuffle disabled"

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2353
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$22;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_28

    .line 2355
    :catchall_40
    move-exception v0

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_40

    :try_start_42
    throw v0

    .line 2357
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_43

    throw v0
.end method
