.class public Lcom/google/android/apps/plus/views/OneUpBackgroundView;
.super Landroid/view/View;
.source "OneUpBackgroundView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;
    }
.end annotation


# static fields
.field private static sDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mDoFullLayout:Z

.field private mHasSeenImage:Z

.field private mListener:Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;

.field private mMakeVicHappy:Z

.field private mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

.field private mRect:Landroid/graphics/Rect;

.field private mTypeName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_FULL_BLEED_ONEUP:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMakeVicHappy:Z

    .line 58
    sget-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_18

    .line 59
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 61
    :cond_18
    return-void

    .line 32
    :cond_19
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private fitToHeight(IIII)V
    .registers 10
    .parameter "bmpWidth"
    .parameter "bmpHeight"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x0

    .line 246
    const/high16 v2, 0x3f80

    int-to-float v3, p4

    mul-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 247
    .local v0, aspectWidth:I
    sub-int v2, p3, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 248
    .local v1, offset:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    add-int v3, v1, v0

    invoke-virtual {v2, v1, v4, v3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    return-void
.end method

.method private fitToWidth(IIII)V
    .registers 10
    .parameter "bmpWidth"
    .parameter "bmpHeight"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x0

    .line 240
    const/high16 v2, 0x3f80

    int-to-float v3, p3

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 241
    .local v0, aspectHeight:I
    sub-int v2, p4, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 242
    .local v1, offset:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    add-int v3, v1, v0

    invoke-virtual {v2, v4, v1, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    return-void
.end method

.method private makeBestFitRect()V
    .registers 7

    .prologue
    .line 213
    iget-object v5, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    if-nez v5, :cond_b

    .line 214
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    .line 217
    :cond_b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v5, :cond_2c

    .line 218
    iget-object v5, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/MediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2c

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 221
    .local v2, bmpWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 222
    .local v1, bmpHeight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getMeasuredWidth()I

    move-result v4

    .line 223
    .local v4, viewWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getMeasuredHeight()I

    move-result v3

    .line 224
    .local v3, viewHeight:I
    if-le v2, v1, :cond_2d

    .line 225
    invoke-direct {p0, v2, v1, v4, v3}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->fitToWidth(IIII)V

    .line 237
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bmpHeight:I
    .end local v2           #bmpWidth:I
    .end local v3           #viewHeight:I
    .end local v4           #viewWidth:I
    :cond_2c
    :goto_2c
    return-void

    .line 226
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bmpHeight:I
    .restart local v2       #bmpWidth:I
    .restart local v3       #viewHeight:I
    .restart local v4       #viewWidth:I
    :cond_2d
    if-ge v2, v1, :cond_33

    .line 227
    invoke-direct {p0, v2, v1, v4, v3}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->fitToHeight(IIII)V

    goto :goto_2c

    .line 229
    :cond_33
    if-ge v4, v3, :cond_39

    .line 230
    invoke-direct {p0, v2, v1, v4, v3}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->fitToWidth(IIII)V

    goto :goto_2c

    .line 232
    :cond_39
    invoke-direct {p0, v2, v1, v4, v3}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->fitToHeight(IIII)V

    goto :goto_2c
.end method

.method private startFadeIn()V
    .registers 4

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_26

    .line 205
    sget-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_11

    .line 206
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 208
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 210
    :cond_26
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;)V
    .registers 8
    .parameter "url"
    .parameter "typeName"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "listener"

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_f

    .line 66
    const v0, 0x3a83126f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->setAlpha(F)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mHasSeenImage:Z

    .line 70
    :cond_f
    iput-object p1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mUrl:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mTypeName:Ljava/lang/String;

    .line 72
    iput p3, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    .line 73
    iput p4, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    .line 74
    iput-object p5, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mListener:Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->requestLayout()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->invalidate()V

    .line 77
    return-void
.end method

.method public makeVicHappy(Z)V
    .registers 3
    .parameter "happy"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMakeVicHappy:Z

    if-eq v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDoFullLayout:Z

    .line 81
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMakeVicHappy:Z

    .line 82
    return-void

    .line 80
    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 87
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 88
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 93
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 94
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MediaImage;->refreshIfInvalidated()V

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_32

    .line 178
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mHasSeenImage:Z

    if-nez v1, :cond_2a

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mListener:Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;

    if-eqz v1, :cond_1d

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mListener:Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;->onBackgroundViewLoaded(Lcom/google/android/apps/plus/views/OneUpBackgroundView;)V

    .line 183
    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mHasSeenImage:Z

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->startFadeIn()V

    .line 186
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMakeVicHappy:Z

    if-eqz v1, :cond_2a

    .line 187
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->makeBestFitRect()V

    .line 190
    :cond_2a
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_32
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 110
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 112
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMakeVicHappy:Z

    if-eqz v1, :cond_62

    .line 113
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->makeBestFitRect()V

    .line 127
    :goto_a
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDoFullLayout:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mTypeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 129
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDoFullLayout:Z

    .line 131
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMakeVicHappy:Z

    if-eqz v1, :cond_10d

    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v7

    .line 133
    .local v7, screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9c

    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9c

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    .line 161
    :goto_47
    new-instance v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mTypeName:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 166
    .end local v7           #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    .local v0, req:Lcom/google/android/apps/plus/content/MediaImageRequest;
    :goto_55
    new-instance v1, Lcom/google/android/apps/plus/views/MediaImage;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/plus/views/MediaImage;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/content/MediaImageRequest;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MediaImage;->invalidate()V

    .line 169
    .end local v0           #req:Lcom/google/android/apps/plus/content/MediaImageRequest;
    :cond_61
    return-void

    .line 115
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getMeasuredWidth()I

    move-result v9

    .line 116
    .local v9, viewWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getMeasuredHeight()I

    move-result v8

    .line 117
    .local v8, viewHeight:I
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    div-int/lit8 v2, v9, 0x4

    if-lt v1, v2, :cond_76

    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    div-int/lit8 v2, v8, 0x4

    if-ge v1, v2, :cond_91

    .line 118
    :cond_76
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    sub-int v1, v9, v1

    div-int/lit8 v10, v1, 0x2

    .line 119
    .local v10, xOffset:I
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    sub-int v1, v8, v1

    div-int/lit8 v11, v1, 0x2

    .line 120
    .local v11, yOffset:I
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    add-int/2addr v2, v10

    iget v3, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    add-int/2addr v3, v11

    invoke-direct {v1, v10, v11, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    goto/16 :goto_a

    .line 123
    .end local v10           #xOffset:I
    .end local v11           #yOffset:I
    :cond_91
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    goto/16 :goto_a

    .line 140
    .end local v8           #viewHeight:I
    .end local v9           #viewWidth:I
    .restart local v7       #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    :cond_9c
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    if-le v1, v2, :cond_d7

    .line 141
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    iget v2, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    if-le v1, v2, :cond_bf

    .line 142
    const/high16 v1, 0x3f80

    iget v2, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 143
    .local v6, ratio:F
    iget v1, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    .line 144
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    goto :goto_47

    .line 146
    .end local v6           #ratio:F
    :cond_bf
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 147
    .restart local v6       #ratio:F
    iget v1, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    .line 148
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    goto/16 :goto_47

    .line 151
    .end local v6           #ratio:F
    :cond_d7
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    iget v2, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    if-le v1, v2, :cond_f5

    .line 152
    const/high16 v1, 0x3f80

    iget v2, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 153
    .restart local v6       #ratio:F
    iget v1, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    .line 154
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    goto/16 :goto_47

    .line 156
    .end local v6           #ratio:F
    :cond_f5
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 157
    .restart local v6       #ratio:F
    iget v1, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    .line 158
    iget v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mDesiredWidth:I

    goto/16 :goto_47

    .line 163
    .end local v6           #ratio:F
    .end local v7           #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    :cond_10d
    new-instance v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mTypeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .restart local v0       #req:Lcom/google/android/apps/plus/content/MediaImageRequest;
    goto/16 :goto_55
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mHasSeenImage:Z

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->invalidate()V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->invalidate()V

    .line 201
    :cond_17
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->load()V

    .line 100
    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/MediaImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 106
    :cond_b
    return-void
.end method
