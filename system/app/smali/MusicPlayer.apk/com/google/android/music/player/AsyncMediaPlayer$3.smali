.class Lcom/google/android/music/player/AsyncMediaPlayer$3;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/player/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/player/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncMediaPlayer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$500(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") OnError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 787
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;
    invoke-static {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$400(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyOpenComplete()V

    .line 788
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;
    invoke-static {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$400(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlaybackFailure()V

    .line 795
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    const/16 v3, 0xe

    #calls: Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V
    invoke-static {v2, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$200(Lcom/google/android/music/player/AsyncMediaPlayer;I)V

    .line 796
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 797
    .local v0, audioSessionId:I
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$000(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/player/CompatMediaPlayer;->release()V

    .line 801
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    new-instance v3, Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-direct {v3}, Lcom/google/android/music/player/CompatMediaPlayer;-><init>()V

    #setter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;
    invoke-static {v2, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$002(Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/player/CompatMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;

    .line 802
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$000(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$600(Lcom/google/android/music/player/AsyncMediaPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/music/player/CompatMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 804
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->setAudioSessionId(I)V

    .line 806
    packed-switch p2, :pswitch_data_a8

    .line 810
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v1, 0x0

    :pswitch_a7
    return v1

    .line 806
    :pswitch_data_a8
    .packed-switch 0x64
        :pswitch_a7
    .end packed-switch
.end method
