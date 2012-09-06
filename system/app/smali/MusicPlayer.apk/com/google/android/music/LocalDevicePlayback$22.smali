.class Lcom/google/android/music/LocalDevicePlayback$22;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->next(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2311
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-boolean p2, p0, Lcom/google/android/music/LocalDevicePlayback$22;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2315
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-boolean v2, p0, Lcom/google/android/music/LocalDevicePlayback$22;->val$force:Z

    const/4 v3, 0x0

    #calls: Lcom/google/android/music/LocalDevicePlayback;->getNextPlayPosition(ZZ)I
    invoke-static {v1, v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$5300(Lcom/google/android/music/LocalDevicePlayback;ZZ)I

    move-result v0

    .line 2317
    .local v0, nextPlayPos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 2320
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1302(Lcom/google/android/music/LocalDevicePlayback;Z)Z

    .line 2321
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/LocalDevicePlayback;->onPlaybackComplete()V

    .line 2322
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/LocalDevicePlayback;->onPlayStateChanged()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_59

    .line 2345
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2347
    :goto_25
    return-void

    .line 2329
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v1

    if-ltz v1, :cond_64

    .line 2330
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2331
    :goto_41
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_64

    .line 2332
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_26 .. :try_end_58} :catchall_59

    goto :goto_41

    .line 2345
    .end local v0           #nextPlayPos:I
    :catchall_59
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 2336
    .restart local v0       #nextPlayPos:I
    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->saveBookmarkIfNeeded()V
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$4900(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 2337
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$5600(Lcom/google/android/music/LocalDevicePlayback;Z)V

    .line 2338
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 2339
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v2, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v1, v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 2342
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v1, v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 2343
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-boolean v2, p0, Lcom/google/android/music/LocalDevicePlayback$22;->val$force:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPrepareToPlaySync(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$5000(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V
    :try_end_8a
    .catchall {:try_start_64 .. :try_end_8a} :catchall_59

    .line 2345
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$22;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_25
.end method
