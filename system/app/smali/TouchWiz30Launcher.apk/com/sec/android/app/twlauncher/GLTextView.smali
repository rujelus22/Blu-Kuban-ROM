.class public Lcom/sec/android/app/twlauncher/GLTextView;
.super Landroid/widget/TextView;
.source "GLTextView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextView;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextView;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 31
    return-void
.end method

.method private setReloadRequired()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 63
    :cond_9
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 64
    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_1f

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 36
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 38
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextView;->setReloadRequired()V

    .line 45
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextView;->setReloadRequired()V

    .line 57
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextView;->setReloadRequired()V

    .line 51
    return-void
.end method
