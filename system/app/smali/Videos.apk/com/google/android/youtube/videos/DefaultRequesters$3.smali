.class Lcom/google/android/youtube/videos/DefaultRequesters$3;
.super Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
.source "DefaultRequesters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DefaultRequesters;->newPurchaseRequestCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/Requester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/async/TimestampedCachingRequester",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Ljava/lang/String;",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DefaultRequesters;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DefaultRequesters;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 437
    .local p2, x0:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p3, x1:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/Purchase;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/DefaultRequesters$3;->this$0:Lcom/google/android/youtube/videos/DefaultRequesters;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic toKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/DefaultRequesters$3;->toKey(Lcom/google/android/youtube/core/model/Purchase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toKey(Lcom/google/android/youtube/core/model/Purchase;)Ljava/lang/String;
    .registers 3
    .parameter "request"

    .prologue
    .line 441
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    return-object v0
.end method
