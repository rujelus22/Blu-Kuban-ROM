.class public final Lcom/google/android/youtube/core/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Iterator;)Lcom/google/android/youtube/core/model/MusicVideo;
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    .line 50
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-wide v3, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-static {}, Lcom/google/android/youtube/core/async/Optional$Null;->instance()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v0

    new-instance v5, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-static {v2}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/util/Iterator;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v7, v1, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    new-instance v7, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v7, v1, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v0, v7}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/util/Iterator;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v0

    move-object v1, v0

    goto :goto_20

    :cond_44
    invoke-interface {p3, v0, v5}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20

    :cond_48
    return-void
.end method
