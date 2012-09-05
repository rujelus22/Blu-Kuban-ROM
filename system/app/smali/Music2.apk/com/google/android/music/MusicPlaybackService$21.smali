.class Lcom/google/android/music/MusicPlaybackService$21;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->next(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2197
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean p2, p0, Lcom/google/android/music/MusicPlaybackService$21;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v2, 0xc8

    const/4 v3, 0x2

    .line 2201
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v0

    if-gtz v0, :cond_20

    .line 2202
    const-string v0, "MediaPlaybackService"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_157

    .line 2269
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2271
    :goto_1f
    return-void

    .line 2208
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-ltz v0, :cond_3b

    .line 2209
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2211
    :cond_3b
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_51

    .line 2212
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 2215
    :cond_51
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3900(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_162

    .line 2216
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1
    :try_end_61
    .catchall {:try_start_20 .. :try_end_61} :catchall_157

    .line 2217
    :try_start_61
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v0

    if-le v0, v2, :cond_78

    .line 2218
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    #calls: Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$4000(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 2220
    :cond_78
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_cc

    .line 2222
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_b5

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->val$force:Z

    if-nez v0, :cond_b5

    .line 2224
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4500(Lcom/google/android/music/MusicPlaybackService;)V

    .line 2225
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 2226
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.playbackcomplete"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.playstatechanged"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 2228
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_61 .. :try_end_aa} :catchall_154

    .line 2269
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1f

    .line 2229
    :cond_b5
    :try_start_b5
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-eq v0, v3, :cond_c1

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->val$force:Z

    if-eqz v0, :cond_eb

    .line 2230
    :cond_c1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    #calls: Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V
    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$4000(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 2240
    :cond_cc
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_115

    .line 2241
    const-string v0, "MediaPlaybackService"

    const-string v2, "Failed to fill future in next()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_b5 .. :try_end_e0} :catchall_154

    .line 2269
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1f

    .line 2236
    :cond_eb
    :try_start_eb
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shouldn\'t be here, repeat mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_eb .. :try_end_10a} :catchall_154

    .line 2269
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1f

    .line 2244
    :cond_115
    :try_start_115
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

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

    .line 2245
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->dumpPastPresentAndFuture()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4100(Lcom/google/android/music/MusicPlaybackService;)V

    .line 2246
    monitor-exit v1
    :try_end_131
    .catchall {:try_start_115 .. :try_end_131} :catchall_154

    .line 2264
    :cond_131
    :goto_131
    :try_start_131
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3800(Lcom/google/android/music/MusicPlaybackService;)V

    .line 2265
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/MusicPlaybackService;->stop(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$4400(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 2266
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$802(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 2267
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService$21;->val$force:Z

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1700(Lcom/google/android/music/MusicPlaybackService;Z)V
    :try_end_149
    .catchall {:try_start_131 .. :try_end_149} :catchall_157

    .line 2269
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1f

    .line 2246
    :catchall_154
    move-exception v0

    :try_start_155
    monitor-exit v1
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    :try_start_156
    throw v0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_157

    .line 2269
    :catchall_157
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 2248
    :cond_162
    :try_start_162
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1ba

    .line 2250
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_1a6

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->val$force:Z

    if-nez v0, :cond_1a6

    .line 2252
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4500(Lcom/google/android/music/MusicPlaybackService;)V

    .line 2253
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 2254
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.playbackcomplete"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.playstatechanged"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    :try_end_19b
    .catchall {:try_start_162 .. :try_end_19b} :catchall_157

    .line 2269
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1f

    .line 2257
    :cond_1a6
    :try_start_1a6
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-eq v0, v3, :cond_1b2

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->val$force:Z

    if-eqz v0, :cond_131

    .line 2258
    :cond_1b2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I

    goto/16 :goto_131

    .line 2261
    :cond_1ba
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$21;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1008(Lcom/google/android/music/MusicPlaybackService;)I
    :try_end_1bf
    .catchall {:try_start_1a6 .. :try_end_1bf} :catchall_157

    goto/16 :goto_131
.end method
