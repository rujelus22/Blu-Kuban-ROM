.class Lcom/google/android/music/LocalDevicePlayback$16$1;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/LocalDevicePlayback$16;

.field final synthetic val$currentPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

.field final synthetic val$next:Lcom/google/android/music/player/AsyncMediaPlayer;

.field final synthetic val$nextpos:I


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback$16;Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/player/AsyncMediaPlayer;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$16;

    iput-object p2, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$currentPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    iput-object p3, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$next:Lcom/google/android/music/player/AsyncMediaPlayer;

    iput p4, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$nextpos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .registers 2
    .parameter "skipToNext"

    .prologue
    .line 1952
    return-void
.end method

.method public onSuccess()V
    .registers 4

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$currentPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$16;

    iget-object v2, v2, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    .line 1960
    :try_start_c
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$16;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$next:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v1, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->setNextPlayer(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    .line 1961
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$16;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget v2, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$nextpos:I

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayPos:I
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1702(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1962
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$16;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$16$1;->val$next:Lcom/google/android/music/player/AsyncMediaPlayer;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/AsyncMediaPlayer;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_2c

    .line 1967
    :cond_2b
    :goto_2b
    return-void

    .line 1963
    :catch_2c
    move-exception v0

    .line 1964
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "@@@@@"

    const-string v2, "failed to set next: "

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method
