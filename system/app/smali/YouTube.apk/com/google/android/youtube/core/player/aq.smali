.class final Lcom/google/android/youtube/core/player/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/youtube/core/player/ap;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/ap;ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aq;->c:Lcom/google/android/youtube/core/player/ap;

    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/aq;->a:Z

    iput-object p3, p0, Lcom/google/android/youtube/core/player/aq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
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

    .line 132
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->a:Z

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->c:Lcom/google/android/youtube/core/player/ap;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ap;->a(Lcom/google/android/youtube/core/player/ap;)V

    :cond_15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/aq;->a:Z

    if-eqz v4, :cond_2d

    if-nez v2, :cond_2d

    move-object v2, v0

    :cond_2d
    iget-object v4, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/aq;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    :goto_4e
    if-eqz v0, :cond_73

    new-instance v1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v1, v0, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->c:Lcom/google/android/youtube/core/player/ap;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ap;->c(Lcom/google/android/youtube/core/player/ap;)Lcom/google/android/youtube/core/b/al;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aq;->c:Lcom/google/android/youtube/core/player/ap;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/ap;->b(Lcom/google/android/youtube/core/player/ap;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/al;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/l;)V

    :goto_64
    return-void

    :cond_65
    if-nez v1, :cond_91

    const-string v4, "en"

    iget-object v5, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    :goto_71
    move-object v1, v0

    goto :goto_1a

    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    goto :goto_64

    :cond_91
    move-object v0, v1

    goto :goto_71

    :cond_93
    move-object v0, v2

    goto :goto_4e
.end method
