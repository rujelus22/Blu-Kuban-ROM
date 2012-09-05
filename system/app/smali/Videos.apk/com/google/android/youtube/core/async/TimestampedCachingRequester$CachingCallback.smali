.class Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;
.super Ljava/lang/Object;
.source "TimestampedCachingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final targetCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TK;TE;>.CachingCallback;"
    .local p2, targetCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 116
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TK;TE;>.CachingCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 126
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TK;TE;>.CachingCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    #getter for: Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;
    invoke-static {v0}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->access$100(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;)Lcom/google/android/youtube/core/cache/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->toKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    #getter for: Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->clock:Lcom/google/android/youtube/core/utils/Clock;
    invoke-static {v3}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->access$000(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;)Lcom/google/android/youtube/core/utils/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method
