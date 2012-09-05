.class Lcom/google/android/music/MusicPlaybackService$15;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$medialist:Lcom/google/android/music/medialist/SongList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$15;->val$medialist:Lcom/google/android/music/medialist/SongList;

    iput p3, p0, Lcom/google/android/music/MusicPlaybackService$15;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$15;->val$medialist:Lcom/google/android/music/medialist/SongList;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$3302(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 1563
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$15;->val$medialist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1564
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$15;->val$position:I

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1565
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$3402(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1566
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v1, -0x1

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$3502(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1567
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$802(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 1569
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    .line 1570
    :try_start_42
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1571
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1572
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_6b

    .line 1574
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3800(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1575
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1700(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1579
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$15$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$15$1;-><init>(Lcom/google/android/music/MusicPlaybackService$15;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1588
    return-void

    .line 1572
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0
.end method
