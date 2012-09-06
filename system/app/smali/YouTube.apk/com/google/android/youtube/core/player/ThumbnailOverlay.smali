.class public Lcom/google/android/youtube/core/player/ThumbnailOverlay;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/b/ag;

.field private c:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method static synthetic a(Lcom/google/android/youtube/core/player/ThumbnailOverlay;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->c:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->c:Lcom/google/android/youtube/core/model/Video;

    .line 51
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->setVisibility(I)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->c:Lcom/google/android/youtube/core/model/Video;

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->a:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/youtube/core/player/as;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/core/player/as;-><init>(Lcom/google/android/youtube/core/player/ThumbnailOverlay;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->b:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/b/ag;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 47
    return-void
.end method
