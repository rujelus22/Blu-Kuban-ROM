.class final Lcom/google/android/youtube/app/ui/bg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 214
    :cond_5
    :goto_5
    return-void

    .line 190
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->b(Lcom/google/android/youtube/app/ui/bd;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->c(Lcom/google/android/youtube/app/ui/bd;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->d(Lcom/google/android/youtube/app/ui/bd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 198
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->e(Lcom/google/android/youtube/app/ui/bd;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->f(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->f(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v0, v1, :cond_76

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v0, v1, :cond_76

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v0, v1, :cond_5

    .line 209
    :cond_76
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->h(Lcom/google/android/youtube/app/ui/bd;)V

    goto :goto_5

    .line 188
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_24
    .end packed-switch
.end method
