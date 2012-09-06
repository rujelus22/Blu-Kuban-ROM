.class public Lcom/google/android/apps/unveil/protocol/nonstop/SimpleEventListener;
.super Ljava/lang/Object;
.source "SimpleEventListener.java"

# interfaces
.implements Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHighQualityRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 40
    return-void
.end method

.method public onNetworkError(I)V
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 43
    return-void
.end method

.method public onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 2
    .parameter "previewFrame"

    .prologue
    .line 34
    return-void
.end method

.method public onNewRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 37
    return-void
.end method

.method public onNewResults(Ljava/util/List;)V
    .registers 2
    .parameter
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

    .prologue
    .line 31
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    return-void
.end method

.method public onPullReceived()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 22
    return-void
.end method

.method public onPushSent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;[B)V
    .registers 3
    .parameter "metadata"
    .parameter "cachedJpeg"

    .prologue
    .line 19
    return-void
.end method

.method public onSessionReset()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method
