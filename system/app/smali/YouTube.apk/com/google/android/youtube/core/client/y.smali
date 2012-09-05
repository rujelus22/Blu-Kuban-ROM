.class final Lcom/google/android/youtube/core/client/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/i;


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/client/y;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 161
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
    .line 161
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v1, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/ArtistBundle;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v4, v5}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_25
    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/ArtistBundle;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/ArtistBundle;->mixTape:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v4, v5}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_46
    return-void
.end method
