.class final Lcom/google/android/youtube/core/client/u;
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
    .line 903
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/client/u;-><init>(Lcom/google/android/youtube/core/client/l;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/client/l;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/google/android/youtube/core/client/u;->a:Lcom/google/android/youtube/core/client/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/b;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 903
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/u;->a:Lcom/google/android/youtube/core/client/l;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/l;->a(Lcom/google/android/youtube/core/client/l;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v4, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v2, v3}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_2d
    return-void
.end method