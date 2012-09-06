.class final Lcom/google/android/youtube/app/b/a/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/a/i;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/b/a/i;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/b/a/i;Landroid/os/Looper;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/b/a/j;-><init>(Lcom/google/android/youtube/app/b/a/i;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 113
    :cond_5
    :goto_5
    return-void

    .line 102
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a/i;->a(Lcom/google/android/youtube/app/b/a/i;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a/i;->a(Lcom/google/android/youtube/app/b/a/i;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    const/4 v2, 0x1

    const/16 v3, -0x3eb

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_5

    .line 108
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a/i;->b(Lcom/google/android/youtube/app/b/a/i;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a/i;->b(Lcom/google/android/youtube/app/b/a/i;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/j;->a:Lcom/google/android/youtube/app/b/a/i;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto :goto_5

    .line 100
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1d
    .end packed-switch
.end method
