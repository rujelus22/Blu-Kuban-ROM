.class public Lcom/sec/android/app/twlauncher/GLImageView;
.super Landroid/widget/ImageView;
.source "GLImageView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 41
    return-void
.end method

.method private setReloadRequired()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 82
    :cond_9
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 83
    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_1f

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 53
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->setReloadRequired()V

    .line 60
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->setReloadRequired()V

    .line 72
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidate(Landroid/graphics/Rect;)V

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->setReloadRequired()V

    .line 66
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 5
    .parameter "scaleType"

    .prologue
    .line 94
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_10

    .line 95
    const-string v0, "Launcher.GLImageView"

    const-string v1, "The scale type is being set to center on the image.  This may cause this ImageView to not draw properly"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    return-void
.end method
