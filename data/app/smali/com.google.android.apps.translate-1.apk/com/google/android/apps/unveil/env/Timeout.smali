.class public Lcom/google/android/apps/unveil/env/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;
    }
.end annotation


# static fields
.field public static final MSG_TIMEOUT:I = 0x1


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final milliseconds:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;I)V
    .registers 4
    .parameter "callback"
    .parameter "milliseconds"

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/unveil/env/Timeout;-><init>(Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;IZ)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;IZ)V
    .registers 5
    .parameter "callback"
    .parameter "milliseconds"
    .parameter "start"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/apps/unveil/env/Timeout$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/env/Timeout$1;-><init>(Lcom/google/android/apps/unveil/env/Timeout;Lcom/google/android/apps/unveil/env/Timeout$TimeoutCallback;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/Timeout;->handler:Landroid/os/Handler;

    .line 53
    iput p2, p0, Lcom/google/android/apps/unveil/env/Timeout;->milliseconds:I

    .line 54
    if-eqz p3, :cond_11

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Timeout;->reset()V

    .line 57
    :cond_11
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Timeout;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Timeout;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Timeout;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/Timeout;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/env/Timeout;->milliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 62
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Timeout;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    return-void
.end method
