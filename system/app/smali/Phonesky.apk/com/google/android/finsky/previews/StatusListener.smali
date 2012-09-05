.class public abstract Lcom/google/android/finsky/previews/StatusListener;
.super Ljava/lang/Object;
.source "StatusListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public error()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public paused()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public playing()V
    .registers 1

    .prologue
    .line 18
    return-void
.end method

.method public prepared()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public preparing()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public queueChanged(I)V
    .registers 2
    .parameter "newSize"

    .prologue
    .line 65
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method

.method public unrolling()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method
