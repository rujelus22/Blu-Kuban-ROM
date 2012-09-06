.class public interface abstract Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# virtual methods
.method public abstract onHighQualityRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
.end method

.method public abstract onNetworkError(I)V
.end method

.method public abstract onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
.end method

.method public abstract onNewRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
.end method

.method public abstract onNewResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            "Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onPullReceived()V
.end method

.method public abstract onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
.end method

.method public abstract onPushSent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;[B)V
.end method

.method public abstract onSessionReset()V
.end method
