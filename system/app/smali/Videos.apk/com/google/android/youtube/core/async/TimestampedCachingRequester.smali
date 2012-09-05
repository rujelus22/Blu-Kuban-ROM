.class public abstract Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
.super Ljava/lang/Object;
.source "TimestampedCachingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester;,
        Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private final target:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field private final timeToLive:J


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)V
    .registers 6
    .parameter
    .parameter
    .parameter "clock"
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/utils/Clock;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TK;TE;>;"
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;

    .line 75
    iput-object p2, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    .line 76
    iput-object p3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 77
    iput-wide p4, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->timeToLive:J

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;)Lcom/google/android/youtube/core/utils/Clock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->clock:Lcom/google/android/youtube/core/utils/Clock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;)Lcom/google/android/youtube/core/cache/Cache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;

    return-object v0
.end method

.method public static create(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
    .registers 11
    .parameter
    .parameter
    .parameter "clock"
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TR;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/utils/Clock;",
            "J)",
            "Lcom/google/android/youtube/core/async/TimestampedCachingRequester",
            "<TR;TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TR;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    const-string v0, "cache may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "clock may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2e

    const-wide v0, 0x9a7ec800L

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2e

    const/4 v0, 0x1

    :goto_1f
    const-string v1, "time to live must be >=0 and <= 2592000000"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)V

    return-object v0

    .line 52
    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TK;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iget-wide v3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->timeToLive:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_31

    .line 91
    iget-object v3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->toKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/youtube/core/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Timestamped;

    .line 92
    .local v0, cached:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<TE;>;"
    iget-object v3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v1

    .line 93
    .local v1, currentTime:J
    if-eqz v0, :cond_31

    iget-wide v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_31

    iget-wide v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    iget-wide v5, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->timeToLive:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-ltz v3, :cond_31

    .line 97
    iget-object v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    invoke-interface {p2, p1, v3}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .end local v0           #cached:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<TE;>;"
    .end local v1           #currentTime:J
    :goto_30
    return-void

    .line 101
    :cond_31
    iget-object v3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    if-eqz v3, :cond_40

    .line 104
    iget-object v3, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    new-instance v4, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;

    invoke-direct {v4, p0, p2}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;-><init>(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v3, p1, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_30

    .line 107
    :cond_40
    new-instance v3, Lcom/google/android/youtube/core/async/NotFoundException;

    invoke-direct {v3}, Lcom/google/android/youtube/core/async/NotFoundException;-><init>()V

    invoke-interface {p2, p1, v3}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_30
.end method

.method protected abstract toKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TK;"
        }
    .end annotation
.end method
