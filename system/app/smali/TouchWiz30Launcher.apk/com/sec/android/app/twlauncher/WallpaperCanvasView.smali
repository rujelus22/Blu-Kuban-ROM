.class public Lcom/sec/android/app/twlauncher/WallpaperCanvasView;
.super Landroid/view/View;
.source "WallpaperCanvasView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mCanvasRect:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mStatusBarHeight:I

    .line 37
    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-nez v3, :cond_6

    .line 73
    :goto_5
    return v6

    .line 54
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 55
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 56
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 57
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 61
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 62
    .local v1, fullscreenMode:Z
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 63
    .local v2, wlp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_34

    .line 64
    const/4 v1, 0x1

    .line 67
    :cond_34
    if-nez v1, :cond_3f

    .line 68
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 71
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawWallpaperImageGL(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;)V

    goto :goto_5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 45
    return-void
.end method

.method public setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V
    .registers 2
    .parameter "w"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 41
    return-void
.end method
