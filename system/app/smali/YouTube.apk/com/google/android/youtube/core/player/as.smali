.class final Lcom/google/android/youtube/core/player/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/ThumbnailOverlay;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "videoId cannot be null or empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/as;->b:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading playerview thumbnail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->a(Lcom/google/android/youtube/core/player/ThumbnailOverlay;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->a(Lcom/google/android/youtube/core/player/ThumbnailOverlay;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/as;->b:Ljava/lang/String;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/as;->a:Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->setVisibility(I)V

    :cond_21
    return-void
.end method
