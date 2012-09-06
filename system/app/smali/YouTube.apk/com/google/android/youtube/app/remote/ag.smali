.class final Lcom/google/android/youtube/app/remote/ag;
.super Lcom/android/athome/picker/media/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/ab;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-direct {p0}, Lcom/android/athome/picker/media/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/ab;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/ag;-><init>(Lcom/google/android/youtube/app/remote/ab;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->e(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_65

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->f(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    if-ne v0, v1, :cond_65

    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_65

    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->i()I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 293
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 295
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/ab;->h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 297
    :cond_51
    add-int/2addr v0, p2

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/remote/at;->a(I)V

    .line 303
    :cond_65
    return-void
.end method

.method public final b(Ljava/lang/Object;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->e(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_5a

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->f(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    if-ne v0, v1, :cond_5a

    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_5a

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/remote/at;->i()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    :cond_51
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ag;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/remote/at;->a(I)V

    .line 317
    :cond_5a
    return-void
.end method
