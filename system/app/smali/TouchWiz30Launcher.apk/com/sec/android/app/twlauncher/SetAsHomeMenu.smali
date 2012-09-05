.class public Lcom/sec/android/app/twlauncher/SetAsHomeMenu;
.super Landroid/widget/FrameLayout;
.source "SetAsHomeMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 21
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    .local v7, redraw:Z
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v6

    .line 27
    .local v6, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v6, :cond_28

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v0, :cond_24

    .line 30
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 31
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 32
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 34
    :cond_24
    invoke-virtual {v6, p1, p0, v8, v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v7

    .line 36
    :cond_28
    return v7
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 42
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1b

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_f

    .line 44
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 45
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 52
    :goto_1a
    return-void

    .line 50
    .restart local p1
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    goto :goto_1a
.end method
