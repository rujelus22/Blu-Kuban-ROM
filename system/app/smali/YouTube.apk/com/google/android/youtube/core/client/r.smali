.class final Lcom/google/android/youtube/core/client/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/i;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/l;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/client/l;)V
    .registers 3
    .parameter

    .prologue
    .line 890
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/client/r;-><init>(Lcom/google/android/youtube/core/client/l;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/client/l;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 890
    iput-object p1, p0, Lcom/google/android/youtube/core/client/r;->a:Lcom/google/android/youtube/core/client/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/b;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 890
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/r;->a:Lcom/google/android/youtube/core/client/l;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/l;->a(Lcom/google/android/youtube/core/client/l;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v3, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v1, v2}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
