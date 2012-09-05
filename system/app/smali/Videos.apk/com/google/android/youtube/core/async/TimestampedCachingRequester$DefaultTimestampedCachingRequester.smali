.class final Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester;
.super Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
.source "TimestampedCachingRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultTimestampedCachingRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/async/TimestampedCachingRequester",
        "<TR;TR;TE;>;"
    }
.end annotation


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
            "<TR;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/utils/Clock;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester<TR;TE;>;"
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TR;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)V

    .line 140
    return-void
.end method


# virtual methods
.method protected toKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester$DefaultTimestampedCachingRequester<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    return-object p1
.end method
