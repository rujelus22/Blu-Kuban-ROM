.class final Lcom/google/android/youtube/core/transfer/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/q;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/q;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Landroid/os/Message;)V

    .line 151
    return-void
.end method
