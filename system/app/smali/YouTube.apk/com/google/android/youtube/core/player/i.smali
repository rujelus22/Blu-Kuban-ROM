.class final Lcom/google/android/youtube/core/player/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/f;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/f;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 192
    :goto_5
    return-void

    .line 179
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/player/f;->a(Lcom/google/android/youtube/core/player/f;J)V

    goto :goto_5

    .line 182
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/f;->a()V

    goto :goto_5

    .line 185
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/f;->a(Lcom/google/android/youtube/core/player/f;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/f;->b(Lcom/google/android/youtube/core/player/f;)V

    goto :goto_5

    .line 189
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/f;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/f;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_5

    .line 177
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_14
        :pswitch_25
        :pswitch_6
        :pswitch_1a
    .end packed-switch
.end method
