.class final Lcom/google/android/youtube/core/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/j;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/j;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/b/j;)V
    .registers 2
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/youtube/core/b/s;->a:Lcom/google/android/youtube/core/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/b/j;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/b/s;-><init>(Lcom/google/android/youtube/core/b/j;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/b/s;->a:Lcom/google/android/youtube/core/b/j;

    invoke-static {v2}, Lcom/google/android/youtube/core/b/j;->a(Lcom/google/android/youtube/core/b/j;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v4, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v2, v3}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_31
    return-void
.end method
