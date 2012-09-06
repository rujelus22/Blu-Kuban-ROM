.class final Lcom/google/android/youtube/core/player/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1084
    const-string v0, "error retrieving subtitle tracks"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->e(Lcom/google/android/youtube/core/player/Director;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0034

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1084
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->e(Lcom/google/android/youtube/core/player/Director;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0034

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    :goto_15
    return-void

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/Director;->f(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    if-nez v1, :cond_3e

    new-instance v1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    const-string v2, ""

    iget-object v3, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/Director;->e(Lcom/google/android/youtube/core/player/Director;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(Ljava/util/List;)V

    goto :goto_15
.end method
