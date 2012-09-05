.class Lcom/google/android/music/MusicPlaybackService$16;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$fromUserAction:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean p2, p0, Lcom/google/android/music/MusicPlaybackService$16;->val$fromUserAction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1598
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_6a

    move-result v0

    if-nez v0, :cond_17

    .line 1614
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1616
    :goto_16
    return-void

    .line 1601
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3900(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-ne v0, v1, :cond_75

    .line 1602
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_6a

    .line 1603
    :try_start_26
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    #calls: Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$4000(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 1604
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->dumpPastPresentAndFuture()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4100(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1605
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-gez v0, :cond_54

    .line 1606
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v2, v0}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1608
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_26 .. :try_end_55} :catchall_67

    .line 1612
    :cond_55
    :goto_55
    :try_start_55
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService$16;->val$fromUserAction:Z

    const/4 v2, 0x1

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrent(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;ZZ)V
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_6a

    .line 1614
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_16

    .line 1608
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 1614
    :catchall_6a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1609
    :cond_75
    :try_start_75
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-gez v0, :cond_55

    .line 1610
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I
    :try_end_83
    .catchall {:try_start_75 .. :try_end_83} :catchall_6a

    goto :goto_55
.end method
