.class public Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;
.super Lcom/sec/android/app/twlauncher/UserFolderItemView;
.source "LauncherManagerFolderItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .registers 5
    .parameter "canvas"
    .parameter "scale"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 37
    invoke-virtual {p1, p2, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 39
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 5
    .parameter "canvas"

    .prologue
    const v2, 0x3e99999a

    .line 23
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 24
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v0

    .line 25
    .local v0, fastScrollFactor:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1d

    .line 26
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 29
    :cond_1d
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 30
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 31
    const/4 v1, 0x0

    return v1
.end method

.method public onContentsChanged()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->onContentsChanged()V

    .line 60
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 44
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 50
    .end local p6
    :goto_a
    return v2

    .line 47
    .restart local p6
    :cond_b
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 48
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 49
    .local v1, itemInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    .line 50
    const/4 v2, 0x1

    goto :goto_a
.end method
