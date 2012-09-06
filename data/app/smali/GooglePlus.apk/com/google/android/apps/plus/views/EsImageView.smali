.class public Lcom/google/android/apps/plus/views/EsImageView;
.super Landroid/widget/ImageView;
.source "EsImageView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$DrawableConsumer;
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnRemoteDrawableChangeListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static sAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static sDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;


# instance fields
.field private mDefaultResourceId:I

.field private mFadeIn:Z

.field private mInvalidated:Z

.field private mLayoutBlocked:Z

.field private mListener:Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;

.field private mLoaded:Z

.field private mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

.field private mRequestTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_11

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 70
    :cond_11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_11

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 79
    :cond_11
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/EsImageView;->updateDefaultResourceId(Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_11

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 90
    :cond_11
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/EsImageView;->updateDefaultResourceId(Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method private fadeIn()V
    .registers 4

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mFadeIn:Z

    if-eqz v0, :cond_30

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_30

    .line 303
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_15

    .line 304
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 306
    :cond_15
    const v0, 0x3c23d70a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setAlpha(F)V

    .line 307
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/views/EsImageView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 309
    :cond_30
    return-void
.end method

.method private onImageLoaded()V
    .registers 5

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLoaded:Z

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 293
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EsImageView;->fadeIn()V

    .line 296
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mListener:Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;

    if-eqz v0, :cond_1c

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mListener:Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;->onImageLoaded(Lcom/google/android/apps/plus/views/EsImageView;)V

    .line 299
    :cond_1c
    return-void
.end method

.method private updateDefaultResourceId(Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "attrs"

    .prologue
    .line 100
    if-eqz p1, :cond_d

    .line 101
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "src"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mDefaultResourceId:I

    .line 103
    :cond_d
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onResume()V

    .line 190
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onStop()V

    .line 199
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    if-eqz v0, :cond_12

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_12

    .line 177
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 180
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    return-void
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    instance-of v0, v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    if-nez v0, :cond_b

    .line 228
    :cond_a
    :goto_a
    return-void

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    check-cast v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->invalidate()V

    goto :goto_a
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 108
    iput-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mListener:Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLoaded:Z

    .line 110
    return-void
.end method

.method public onRemoteImageChanged(Lcom/google/android/apps/plus/content/ImageRequest;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "request"
    .parameter "bitmap"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 242
    :cond_c
    :goto_c
    return-void

    .line 239
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->invalidate()V

    goto :goto_c
.end method

.method public onRemoteImageChanged(Lcom/google/android/apps/plus/content/ImageRequest;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "request"
    .parameter "image"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 256
    :cond_c
    :goto_c
    return-void

    .line 253
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 255
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->invalidate()V

    goto :goto_c
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 210
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerRemoteImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 213
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 202
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 203
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterRemoteImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 206
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    if-eqz v0, :cond_8

    .line 329
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->forceLayout()V

    .line 333
    :goto_7
    return-void

    .line 331
    :cond_8
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_7
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p2, :cond_e

    .line 265
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 268
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    .line 270
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onImageLoaded()V

    .line 272
    :cond_e
    return-void

    .line 268
    :catchall_f
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    throw v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .registers 5
    .parameter "drawable"
    .parameter "loading"

    .prologue
    const/4 v1, 0x0

    .line 279
    if-nez p2, :cond_e

    .line 281
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    .line 284
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    .line 286
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onImageLoaded()V

    .line 288
    :cond_e
    return-void

    .line 284
    :catchall_f
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLayoutBlocked:Z

    throw v0
.end method

.method public setFadeIn(Z)V
    .registers 2
    .parameter "fadeIn"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mFadeIn:Z

    .line 145
    return-void
.end method

.method public setOnImageLoadedListener(Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mListener:Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;

    .line 119
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mLoaded:Z

    if-eqz v0, :cond_9

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onImageLoaded()V

    .line 122
    :cond_9
    return-void
.end method

.method public setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequestTime:J

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 155
    :cond_12
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mInvalidated:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_23

    .line 158
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 167
    :cond_22
    :goto_22
    return-void

    .line 160
    :cond_23
    iget v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mDefaultResourceId:I

    if-eqz v0, :cond_2d

    .line 161
    iget v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mDefaultResourceId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setImageResource(I)V

    goto :goto_22

    .line 163
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 130
    if-eqz p1, :cond_17

    .line 131
    new-instance v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 136
    :goto_16
    return-void

    .line 134
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_16
.end method

.method public startFadeOut(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_26

    .line 313
    sget-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_11

    .line 314
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/EsImageView;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 316
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3c23d70a

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/views/EsImageView;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 318
    :cond_26
    return-void
.end method
