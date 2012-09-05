.class public Lcom/sec/android/app/twlauncher/AppMenu;
.super Landroid/view/ViewGroup;
.source "AppMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppMenu$Animate;
    }
.end annotation


# instance fields
.field private mAppHeight:I

.field private mAppWidth:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

.field private mColumnNum:I

.field private mEnabledChildAnimation:Z

.field private mHasFolderOpen:Z

.field private mItemsOnPage:I

.field private mLRPadding:I

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOrientation:I

.field private mScreenClipExtendedEdge:I

.field private mSkiaDrawing:Z

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVerticalSpace:I

.field private mWasShifted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    .line 65
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mSkiaDrawing:Z

    .line 69
    iput p2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    .line 73
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    .line 75
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 78
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    .line 93
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setClickable(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 96
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 98
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v3, -0x1

    .line 100
    .local v3, oldOrientation:I
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    if-eq v5, v6, :cond_20

    .line 101
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 102
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 103
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 104
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 107
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_20
    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 108
    const v5, 0x7f0b001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 109
    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 110
    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 114
    const/4 v5, -0x1

    if-eq v3, v5, :cond_50

    .line 115
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 116
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 117
    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 120
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_50
    const/4 v1, 0x0

    .local v1, i:I
    :goto_51
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    if-ge v1, v5, :cond_61

    .line 121
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppMenu;)V

    aput-object v6, v5, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 124
    :cond_61
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setAnimationCacheEnabled(Z)V

    .line 125
    return-void
.end method


# virtual methods
.method cellToPoint(I[I)V
    .registers 9
    .parameter "cell"
    .parameter "point"

    .prologue
    .line 251
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int v0, p1, v2

    .line 252
    .local v0, line:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v1, p1, v2

    .line 254
    .local v1, num:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 255
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 256
    return-void
.end method

.method cellToPoint(Landroid/view/View;[I)V
    .registers 7
    .parameter "v"
    .parameter "point"

    .prologue
    .line 259
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 263
    .local v0, cell:I
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 268
    .end local v0           #cell:I
    :goto_15
    return-void

    .line 265
    :cond_16
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, p2, v2

    .line 266
    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, p2, v2

    goto :goto_15
.end method

.method public clearFocus()V
    .registers 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v0

    .line 387
    .local v0, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-nez v0, :cond_a

    .line 388
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 395
    :goto_9
    return-void

    .line 391
    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolder;->getDescendantFocusability()I

    move-result v1

    .line 392
    .local v1, oldState:I
    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    .line 393
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 394
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    goto :goto_9
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mSkiaDrawing:Z

    if-eqz v0, :cond_9

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 227
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z
    .registers 14
    .parameter "canvas"
    .parameter "ignoreClipping"
    .parameter "ignoreTransRefs"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 333
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    sub-int v3, v9, v8

    .line 334
    .local v3, pageLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_4a

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getMeasuredWidth()I

    move-result v7

    .line 337
    .local v7, windowWidth:I
    :goto_22
    if-nez p3, :cond_27

    .line 340
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 342
    :cond_27
    const/4 v4, 0x0

    .line 343
    .local v4, res:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    if-ge v1, v0, :cond_74

    .line 344
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 345
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int v2, v3, v8

    .line 346
    .local v2, left:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v5, v2, v8

    .line 347
    .local v5, right:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    add-int/2addr v8, v7

    if-ge v2, v8, :cond_45

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    neg-int v8, v8

    if-gt v5, v8, :cond_55

    :cond_45
    if-nez p2, :cond_55

    .line 343
    .end local v6           #view:Landroid/view/View;
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 334
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v4           #res:Z
    .end local v5           #right:I
    .end local v7           #windowWidth:I
    :cond_4a
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/DragLayer;->getWidth()I

    move-result v7

    goto :goto_22

    .line 351
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v4       #res:Z
    .restart local v5       #right:I
    .restart local v6       #view:Landroid/view/View;
    .restart local v7       #windowWidth:I
    :cond_55
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 352
    instance-of v8, v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v8, :cond_70

    .line 353
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 354
    check-cast v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .end local v6           #view:Landroid/view/View;
    invoke-interface {v6, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 356
    :cond_70
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_47

    .line 358
    .end local v2           #left:I
    .end local v5           #right:I
    :cond_74
    return v4
.end method

.method public freeResources()V
    .registers 7

    .prologue
    .line 481
    const-string v4, "AppMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freeResources "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    .line 484
    .local v1, glsvg:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 485
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 486
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, c:Landroid/view/View;
    instance-of v3, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v3, :cond_3e

    move-object v3, v0

    .line 488
    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 490
    :cond_3e
    instance-of v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_47

    .line 491
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v0           #c:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->freeResources()V

    .line 485
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 494
    :cond_4a
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 447
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 453
    .restart local p1       #aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_5c

    .line 454
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 455
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 457
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_1d

    instance-of v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v3, :cond_20

    .line 453
    .end local v1           #tag:Ljava/lang/Object;
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 460
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_20
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-nez v3, :cond_1d

    .line 463
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_56

    .line 464
    const-string v3, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Owner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_56
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 468
    .end local v2           #view:Landroid/view/View;
    :cond_5c
    return-object p1
.end method

.method public getChildHeight()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    return v0
.end method

.method public getChildWidth()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    return v0
.end method

.method public getLRPadding()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    return v0
.end method

.method public getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;
    .registers 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_1c

    .line 402
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 403
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_19

    .line 404
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolder;

    .line 408
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    :goto_18
    return-object v1

    .line 401
    .restart local v0       #i:I
    .restart local v1       #v:Landroid/view/View;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 408
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getWasShifted()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mWasShifted:Z

    return v0
.end method

.method public hasFolderOpen()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 154
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 155
    .local v3, childLeft:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 157
    .local v4, childTop:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 158
    .local v9, r:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v8, newRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    .line 160
    .local v6, count:I
    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 161
    .local v10, verticalSpace:I
    const/4 v0, 0x0

    .line 162
    .local v0, cellCount:I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    .line 163
    const/4 v7, 0x0

    .local v7, i:I
    :goto_16
    if-ge v7, v6, :cond_8b

    .line 164
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 166
    .local v5, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 168
    .local v2, childHeight:I
    instance-of v11, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_70

    .line 169
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->stop()V

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_70

    .line 171
    invoke-virtual {v1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 172
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_83

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    if-eqz v11, :cond_83

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_83

    .line 174
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v11, v11, v7

    const/16 v12, 0x12c

    invoke-virtual {v11, v1, v9, v12}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 180
    :goto_61
    add-int/2addr v3, v5

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 183
    iget v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v11, v0, v11

    if-nez v11, :cond_70

    .line 184
    add-int v11, v4, v2

    add-int v4, v11, v10

    .line 185
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 189
    :cond_70
    instance-of v11, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v11, :cond_80

    .line 190
    sub-int v5, p4, p2

    .line 191
    sub-int v2, p5, p3

    .line 192
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 193
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    .line 163
    :cond_80
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 177
    :cond_83
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_61

    .line 196
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_8b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 133
    .local v7, width:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v7, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 135
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 136
    .local v2, childWidthMeasureSpec:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 138
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 139
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_25
    if-ge v5, v3, :cond_4f

    .line 140
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, child:Landroid/view/View;
    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_47

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v8, :cond_47

    .line 142
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    .line 143
    .local v6, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getFolderMeasuredHeight()I

    move-result v4

    .line 144
    .local v4, folderHeight:I
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    .line 139
    .end local v4           #folderHeight:I
    .end local v6           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 148
    :cond_47
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_44

    .line 150
    .end local v0           #child:Landroid/view/View;
    :cond_4f
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 472
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 473
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .local v0, c:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v2, :cond_14

    .line 475
    check-cast v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    .end local v0           #c:Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 472
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 478
    :cond_17
    return-void
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 428
    .local v1, res:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_29

    .line 429
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 430
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 432
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_17

    instance-of v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v4, :cond_1a

    .line 428
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 435
    :cond_1a
    instance-of v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_17

    .line 436
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 437
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 438
    const/4 v1, 0x1

    goto :goto_17

    .line 442
    .end local v2           #tag:Ljava/lang/Object;
    .end local v3           #view:Landroid/view/View;
    :cond_29
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 273
    if-eqz p1, :cond_10

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 276
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 278
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_10
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 205
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 206
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 211
    .end local v2           #view:Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 216
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    .line 232
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 82
    return-void
.end method

.method public setScreenClipExtendedEdge(I)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 247
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    .line 248
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "aVisibility"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v0

    .line 374
    .local v0, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-nez v0, :cond_a

    .line 375
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    :goto_9
    return-void

    .line 378
    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolder;->getDescendantFocusability()I

    move-result v1

    .line 379
    .local v1, oldState:I
    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    .line 380
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 381
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    goto :goto_9
.end method

.method public setWasShifted(Z)V
    .registers 2
    .parameter "aWasShifted"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mWasShifted:Z

    .line 86
    return-void
.end method
