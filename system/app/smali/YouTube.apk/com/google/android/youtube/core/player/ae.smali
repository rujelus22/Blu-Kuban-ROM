.class final Lcom/google/android/youtube/core/player/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/player/ad;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/ad;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ae;->b:Lcom/google/android/youtube/core/player/ad;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 117
    const-string v0, "error retrieving subtitle tracks"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 117
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/ae;->b:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->a(Lcom/google/android/youtube/core/player/ad;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ae;->b:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->b(Lcom/google/android/youtube/core/player/ad;)V

    :cond_19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/ae;->b:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v4}, Lcom/google/android/youtube/core/player/ad;->a(Lcom/google/android/youtube/core/player/ad;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v2, :cond_35

    move-object v2, v0

    :cond_35
    iget-object v4, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/ae;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    :goto_56
    if-eqz v0, :cond_7b

    new-instance v1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v1, v0, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/ae;->b:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->d(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/client/ah;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ae;->b:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/ad;->c(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ah;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/g;)V

    :goto_6c
    return-void

    :cond_6d
    if-nez v1, :cond_9f

    const-string v4, "en"

    iget-object v5, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    :goto_79
    move-object v1, v0

    goto :goto_1e

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    goto :goto_6c

    :cond_9f
    move-object v0, v1

    goto :goto_79

    :cond_a1
    move-object v0, v2

    goto :goto_56
.end method
