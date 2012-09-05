.class public Lcom/google/android/music/Worker;
.super Landroid/os/Handler;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/Worker$ThreadLooper;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/music/Worker$ThreadLooper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/Worker$ThreadLooper;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/google/android/music/Worker$ThreadLooper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 52
    return-void
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/music/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 36
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 5
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
