.class final Lcom/google/android/youtube/core/async/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/ag;

.field private final b:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ag;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "originalCallback cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/g;

    .line 54
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_HLS:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/youtube/core/model/Stream;->getMatchingStream(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;ZLjava/util/Set;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/g;

    new-instance v1, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v1}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/g;

    new-instance v2, Lcom/google/android/youtube/core/model/u;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/model/u;-><init>(Lcom/google/android/youtube/core/model/Stream;)V

    invoke-interface {v1, p1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20

    :cond_2c
    iget-boolean v1, p2, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v1, :cond_74

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->DECLARED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    if-eq v1, v2, :cond_3c

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$ThreeDSource;->UPLOADED:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    if-ne v1, v2, :cond_74

    :cond_3c
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/ag;->a(Lcom/google/android/youtube/core/async/ag;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/ag;->a(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v0, 0x1

    move v2, v0

    :goto_50
    if-eqz v2, :cond_76

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/ag;->b(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    move-object v1, v0

    :goto_5b
    if-eqz v2, :cond_80

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/ag;->d(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    :goto_65
    if-nez v1, :cond_89

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/g;

    new-instance v1, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v1}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_20

    :cond_74
    move v2, v0

    goto :goto_50

    :cond_76
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/ag;->c(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    move-object v1, v0

    goto :goto_5b

    :cond_80
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/ag;->e(Lcom/google/android/youtube/core/async/ag;Ljava/util/Set;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    goto :goto_65

    :cond_89
    new-instance v2, Lcom/google/android/youtube/core/model/u;

    invoke-direct {v2, v1, v0}, Lcom/google/android/youtube/core/model/u;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20
.end method
