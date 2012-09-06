.class final Lcom/google/android/youtube/core/ui/k;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/j;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/ui/j;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_9

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/k;->a:Lcom/google/android/youtube/core/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/j;->f()V

    .line 103
    :cond_9
    return-void
.end method
