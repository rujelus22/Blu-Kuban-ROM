.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;
.super Ljava/lang/Object;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PosterityRequestsHandler"
.end annotation


# instance fields
.field private listenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private posterityResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPosterityResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 6
    .parameter "posterityResponse"

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "onPosterityResponse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->posterityResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->listenerReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1f

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;

    .line 63
    .local v0, listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;
    if-eqz v0, :cond_20

    .line 64
    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;->onPosterityResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 69
    .end local v0           #listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;
    :cond_1f
    :goto_1f
    return-void

    .line 66
    .restart local v0       #listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->listenerReference:Ljava/lang/ref/WeakReference;

    goto :goto_1f
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->listenerReference:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->posterityResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    .line 49
    return-void
.end method

.method public setListener(Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->listenerReference:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->posterityResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    if-eqz v0, :cond_10

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->posterityResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    invoke-interface {p1, v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestListener;->onPosterityResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 56
    :cond_10
    return-void
.end method
