.class Lcom/google/android/music/MusicPlaybackService$17;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->open(Lcom/google/android/music/dl/ContentIdentifier;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$playOnSuccess:Z

.field final synthetic val$songId:Lcom/google/android/music/dl/ContentIdentifier;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$songId:Lcom/google/android/music/dl/ContentIdentifier;

    iput-boolean p3, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$playOnSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .registers 5
    .parameter "skipToNext"

    .prologue
    .line 1812
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open MusicId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$songId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.playbackfailed"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3408(Lcom/google/android/music/MusicPlaybackService;)I

    .line 1815
    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3400(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3d

    .line 1816
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->tryNext()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4200(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1818
    :cond_3d
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$3402(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1822
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1823
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.asyncopencomplete"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1825
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$playOnSuccess:Z

    if-eqz v0, :cond_22

    .line 1826
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    .line 1828
    :cond_22
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->updateNotification()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2200(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1829
    return-void
.end method
