.class final Lcom/google/android/youtube/app/adapter/by;
.super Lcom/google/android/youtube/app/adapter/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ag;

.field private final b:Lcom/google/android/youtube/core/utils/k;

.field private final c:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

.field private d:Z

.field private e:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    const v0, 0x7f080023

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/adapter/l;-><init>(Landroid/content/Context;I)V

    .line 133
    const-string v0, "imageClient cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/by;->a:Lcom/google/android/youtube/core/b/ag;

    .line 134
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/by;->b:Lcom/google/android/youtube/core/utils/k;

    .line 135
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/by;->c:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/adapter/by;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f00

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 168
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 169
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 171
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    .line 173
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int v5, v2, v5

    .line 179
    mul-int v2, v1, v5

    mul-int v6, v4, v3

    if-le v2, v6, :cond_48

    .line 180
    int-to-float v2, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 181
    int-to-float v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    mul-float/2addr v1, v7

    .line 186
    :goto_3b
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 187
    add-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    return-void

    .line 183
    :cond_48
    int-to-float v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 184
    int-to-float v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    const v3, 0x3eb33333

    mul-float/2addr v1, v3

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_3b
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    :goto_8
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    goto :goto_8

    :cond_16
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/by;->c:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    sget-object v2, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;->LARGE:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/by;->c:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory$ThumbnailSize;

    if-nez v1, :cond_48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/youtube/app/adapter/by;->e:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-lez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/by;->b:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/k;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/app/adapter/by;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/youtube/app/adapter/by;->e:J

    :cond_3c
    iget-boolean v1, p0, Lcom/google/android/youtube/app/adapter/by;->d:Z

    if-eqz v1, :cond_48

    :cond_40
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/by;->a:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p3}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_12

    :cond_48
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/by;->a:Lcom/google/android/youtube/core/b/ag;

    invoke-interface {v1, v0, p3}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_12
.end method
