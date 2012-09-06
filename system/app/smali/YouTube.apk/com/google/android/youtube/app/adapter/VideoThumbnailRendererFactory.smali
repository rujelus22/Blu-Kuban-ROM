.class public final Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/adapter/by;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/youtube/app/adapter/by;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/by;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a:Lcom/google/android/youtube/app/adapter/by;

    .line 60
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const-string v0, "thumbnailSize cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;)Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const-string v0, "networkStatus cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;)Lcom/google/android/youtube/app/adapter/by;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a:Lcom/google/android/youtube/app/adapter/by;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 3
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/youtube/app/adapter/bz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/bz;-><init>(Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method
