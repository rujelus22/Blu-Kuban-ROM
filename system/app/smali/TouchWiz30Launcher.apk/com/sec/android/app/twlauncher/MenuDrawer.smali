.class public Lcom/sec/android/app/twlauncher/MenuDrawer;
.super Landroid/widget/FrameLayout;
.source "MenuDrawer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# instance fields
.field private mChildSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSkiaCanvas:Landroid/graphics/Canvas;

.field private mSurfaceUploadNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mChildSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 23
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mSkiaCanvas:Landroid/graphics/Canvas;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mSurfaceUploadNeeded:Z

    .line 36
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "outRect"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHitRect(Landroid/graphics/Rect;)V

    .line 40
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 51
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setAnimationCacheEnabled(Z)V

    .line 54
    return-void
.end method

.method public setBackgroundImage()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method public setEnabledProgress(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 57
    if-eqz p1, :cond_9

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    :goto_8
    return-void

    .line 60
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8
.end method
