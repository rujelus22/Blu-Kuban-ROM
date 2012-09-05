.class Lcom/google/android/music/AsyncMediaPlayer$3;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncMediaPlayer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v2}, Lcom/google/android/music/AsyncMediaPlayer;->access$300(Lcom/google/android/music/AsyncMediaPlayer;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") OnError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 729
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    const-string v2, "com.android.music.asyncopencomplete"

    #calls: Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/music/AsyncMediaPlayer;->access$400(Lcom/google/android/music/AsyncMediaPlayer;Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    const-string v2, "com.android.music.playbackfailed"

    #calls: Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/music/AsyncMediaPlayer;->access$400(Lcom/google/android/music/AsyncMediaPlayer;Ljava/lang/String;)V

    .line 731
    packed-switch p2, :pswitch_data_9a

    .line 743
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v0, 0x0

    :goto_6f
    return v0

    .line 733
    :pswitch_70
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    const/4 v2, 0x2

    #calls: Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V
    invoke-static {v1, v2}, Lcom/google/android/music/AsyncMediaPlayer;->access$500(Lcom/google/android/music/AsyncMediaPlayer;I)V

    .line 734
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/google/android/music/AsyncMediaPlayer;->access$600(Lcom/google/android/music/AsyncMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 738
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/google/android/music/AsyncMediaPlayer;->access$602(Lcom/google/android/music/AsyncMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 739
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/google/android/music/AsyncMediaPlayer;->access$600(Lcom/google/android/music/AsyncMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/AsyncMediaPlayer;->access$700(Lcom/google/android/music/AsyncMediaPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    goto :goto_6f

    .line 731
    nop

    :pswitch_data_9a
    .packed-switch 0x64
        :pswitch_70
    .end packed-switch
.end method
