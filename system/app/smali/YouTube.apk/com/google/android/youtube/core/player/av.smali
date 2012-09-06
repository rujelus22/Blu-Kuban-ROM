.class final Lcom/google/android/youtube/core/player/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/TvAdOverlay;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/TvAdOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/core/player/av;->a:Lcom/google/android/youtube/core/player/TvAdOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/TvAdOverlay;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/av;-><init>(Lcom/google/android/youtube/core/player/TvAdOverlay;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    const-string v0, "Failed to fetch video"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 103
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/av;->a:Lcom/google/android/youtube/core/player/TvAdOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->b(Lcom/google/android/youtube/core/player/TvAdOverlay;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/av;->a:Lcom/google/android/youtube/core/player/TvAdOverlay;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/TvAdOverlay;->a(Lcom/google/android/youtube/core/player/TvAdOverlay;)Lcom/google/android/youtube/core/async/l;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/av;->a:Lcom/google/android/youtube/core/player/TvAdOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->c(Lcom/google/android/youtube/core/player/TvAdOverlay;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
