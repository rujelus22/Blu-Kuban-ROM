.class final Lcom/google/android/youtube/app/remote/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/ab;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ac;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/ab;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/ac;-><init>(Lcom/google/android/youtube/app/remote/ab;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_47

    .line 346
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ac;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->f(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ac;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v2

    if-ne v0, v2, :cond_4b

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ac;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v2, :cond_4b

    .line 350
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ac;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->i()I

    move-result v0

    .line 352
    :goto_2d
    const-string v2, "RemoteDialogVolumeAdjust"

    .line 353
    sub-int v3, v0, v3

    .line 354
    if-eq v0, v1, :cond_49

    .line 355
    if-lez v3, :cond_42

    .line 356
    const-string v0, "RemoteDialogVolumeUp"

    .line 361
    :goto_37
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ac;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->i(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_41
    return v0

    .line 357
    :cond_42
    if-gez v3, :cond_49

    .line 358
    const-string v0, "RemoteDialogVolumeDown"

    goto :goto_37

    .line 364
    :cond_47
    const/4 v0, 0x0

    goto :goto_41

    :cond_49
    move-object v0, v2

    goto :goto_37

    :cond_4b
    move v0, v1

    goto :goto_2d
.end method
