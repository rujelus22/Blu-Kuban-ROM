.class Lcom/google/android/music/LocalDevicePlayback$17;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->open(Lcom/google/android/music/dl/ContentIdentifier;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$playOnSuccess:Z

.field final synthetic val$songId:Lcom/google/android/music/dl/ContentIdentifier;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-object p2, p0, Lcom/google/android/music/LocalDevicePlayback$17;->val$songId:Lcom/google/android/music/dl/ContentIdentifier;

    iput-boolean p3, p0, Lcom/google/android/music/LocalDevicePlayback$17;->val$playOnSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .registers 5
    .parameter "skipToNext"

    .prologue
    .line 1992
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open MusicId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$17;->val$songId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onPlaybackFailure()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$200(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1994
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4108(Lcom/google/android/music/LocalDevicePlayback;)I

    .line 1995
    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$4100(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3b

    .line 1996
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->tryNext()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$5400(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1998
    :cond_3b
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$4102(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 2002
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2003
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->onOpenComplete()V

    .line 2005
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->val$playOnSuccess:Z

    if-eqz v0, :cond_22

    .line 2008
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$17;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    .line 2010
    :cond_22
    return-void
.end method
