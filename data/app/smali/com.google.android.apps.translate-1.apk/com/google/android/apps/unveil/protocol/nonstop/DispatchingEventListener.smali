.class public final Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;
.super Ljava/lang/Object;
.source "DispatchingEventListener.java"

# interfaces
.implements Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    return-void
.end method

.method private trimListeners()V
    .registers 5

    .prologue
    .line 33
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 36
    .local v2, listeners:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 37
    .local v1, listener:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-nez v1, :cond_6

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 41
    .end local v1           #listener:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #listeners:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_1e
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public onHighQualityRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 6
    .parameter "metadata"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 124
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 125
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 126
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onHighQualityRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V

    goto :goto_9

    .line 129
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onNetworkError(I)V
    .registers 6
    .parameter "statusCode"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 135
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 136
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 137
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onNetworkError(I)V

    goto :goto_9

    .line 140
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 6
    .parameter "previewFrame"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 102
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 103
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 104
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    goto :goto_9

    .line 107
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onNewRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 6
    .parameter "metadata"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 112
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 113
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 114
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 115
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onNewRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V

    goto :goto_9

    .line 118
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onNewResults(Ljava/util/List;)V
    .registers 6
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
    .line 89
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 90
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 91
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 92
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 93
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onNewResults(Ljava/util/List;)V

    goto :goto_9

    .line 96
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onPullReceived()V
    .registers 5

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 79
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 80
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 81
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 82
    invoke-interface {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onPullReceived()V

    goto :goto_9

    .line 85
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 6
    .parameter "metadata"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 57
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 58
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 59
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 60
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V

    goto :goto_9

    .line 63
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onPushSent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;[B)V
    .registers 7
    .parameter "metadata"
    .parameter "cachedJpeg"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 46
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 47
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 48
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 49
    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onPushSent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;[B)V

    goto :goto_9

    .line 52
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method

.method public onSessionReset()V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->trimListeners()V

    .line 68
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 69
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;

    .line 70
    .local v1, l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    if-eqz v1, :cond_9

    .line 71
    invoke-interface {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;->onSessionReset()V

    goto :goto_9

    .line 74
    .end local v1           #l:Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;>;"
    :cond_21
    return-void
.end method
