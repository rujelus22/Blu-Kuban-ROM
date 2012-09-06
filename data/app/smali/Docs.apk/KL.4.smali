.class public LKL;
.super Landroid/os/Handler;
.source "ScrubBar.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, LKL;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    .line 339
    :cond_4
    :goto_4
    return-void

    .line 326
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, LKL;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 331
    const-string v0, "ScrubBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 332
    const-string v0, "ScrubBar"

    const-string v1, "done waiting..."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1f
    iget-object v0, p0, LKL;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;Z)Z

    .line 336
    iget-object v0, p0, LKL;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, LKL;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    iget-object v1, p0, LKL;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;I)V

    goto :goto_4
.end method
