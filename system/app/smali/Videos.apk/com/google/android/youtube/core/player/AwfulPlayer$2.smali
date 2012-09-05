.class Lcom/google/android/youtube/core/player/AwfulPlayer$2;
.super Landroid/os/Handler;
.source "AwfulPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/AwfulPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/AwfulPlayer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 181
    :goto_5
    return-void

    .line 168
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #calls: Lcom/google/android/youtube/core/player/AwfulPlayer;->doDownloadProgress(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$200(Lcom/google/android/youtube/core/player/AwfulPlayer;J)V

    goto :goto_5

    .line 171
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->doPrepare()V

    goto :goto_5

    .line 174
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #calls: Lcom/google/android/youtube/core/player/AwfulPlayer;->listenPlaybackProgress()V
    invoke-static {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$300(Lcom/google/android/youtube/core/player/AwfulPlayer;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #calls: Lcom/google/android/youtube/core/player/AwfulPlayer;->doPlaybackProgress()V
    invoke-static {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$400(Lcom/google/android/youtube/core/player/AwfulPlayer;)V

    goto :goto_5

    .line 178
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_5

    .line 166
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_14
        :pswitch_25
        :pswitch_6
        :pswitch_1a
    .end packed-switch
.end method
