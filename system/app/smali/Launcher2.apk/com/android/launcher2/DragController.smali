.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x0

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .registers 5
    .parameter "launcher"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 68
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    .line 100
    iput v2, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 101
    new-instance v0, Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    .line 107
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    .line 108
    iput v2, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 110
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 140
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DragController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method private drop(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 569
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 570
    .local v1, coordinates:[I
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4, v1}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v2

    .line 572
    .local v2, dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v4, 0x0

    aget v4, v1, v4

    iput v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 573
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    aget v4, v1, v5

    iput v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, accepted:Z
    if-eqz v2, :cond_30

    .line 576
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v5, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 577
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 578
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 579
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 580
    const/4 v0, 0x1

    .line 583
    :cond_30
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2           #dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v0}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V

    .line 584
    return-void
.end method

.method private endDrag()V
    .registers 5

    .prologue
    .line 389
    iget-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v2, :cond_2f

    .line 390
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 391
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragController$DragListener;

    .line 392
    .local v1, listener:Lcom/android/launcher2/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_d

    .line 394
    .end local v1           #listener:Lcom/android/launcher2/DragController$DragListener;
    :cond_1d
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_2f

    .line 395
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->remove()V

    .line 396
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 399
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2f
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 587
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 589
    .local v4, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 590
    .local v2, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    .local v0, count:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_c
    if-ltz v3, :cond_5b

    .line 592
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .line 593
    .local v5, target:Lcom/android/launcher2/DropTarget;
    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->isDropEnabled()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 591
    :cond_1a
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 596
    :cond_1d
    invoke-interface {v5, v4}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 599
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    .line 600
    aget v6, p3, v9

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v10

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 602
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p1, v6, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 603
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p2, v6, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 604
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 605
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 606
    .local v1, delegate:Lcom/android/launcher2/DropTarget;
    if-eqz v1, :cond_4e

    .line 607
    move-object v5, v1

    .line 608
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    .line 612
    :cond_4e
    aget v6, p3, v9

    sub-int v6, p1, v6

    aput v6, p3, v9

    .line 613
    aget v6, p3, v10

    sub-int v6, p2, v6

    aput v6, p3, v10

    .line 618
    .end local v1           #delegate:Lcom/android/launcher2/DropTarget;
    .end local v5           #target:Lcom/android/launcher2/DropTarget;
    :goto_5a
    return-object v5

    :cond_5b
    const/4 v5, 0x0

    goto :goto_5a
.end method

.method private getClampedDragLayerPos(FF)[I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 406
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 407
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 460
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v4, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4, p1, p2}, Lcom/android/launcher2/DragView;->move(II)V

    .line 463
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 464
    .local v0, coordinates:[I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v2

    .line 465
    .local v2, dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v5, 0x0

    aget v5, v0, v5

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 466
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v5, 0x1

    aget v5, v0, v5

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 467
    if-eqz v2, :cond_a3

    .line 468
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 469
    .local v1, delegate:Lcom/android/launcher2/DropTarget;
    if-eqz v1, :cond_26

    .line 470
    move-object v2, v1

    .line 473
    :cond_26
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v4, v2, :cond_3a

    .line 474
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_35

    .line 475
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v4, v5}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 477
    :cond_35
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 479
    :cond_3a
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v4}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 485
    .end local v1           #delegate:Lcom/android/launcher2/DropTarget;
    :cond_3f
    :goto_3f
    iput-object v2, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 489
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v3

    .line 490
    .local v3, slop:I
    iget v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v6, p1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v8, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 492
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v5, 0x0

    aput p1, v4, v5

    .line 493
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v5, 0x1

    aput p2, v4, v5

    .line 495
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-ge p1, v4, :cond_af

    .line 496
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v4, :cond_a2

    iget v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-le v4, v3, :cond_a2

    .line 497
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 498
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 499
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 500
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    :cond_a2
    :goto_a2
    return-void

    .line 481
    .end local v3           #slop:I
    :cond_a3
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_3f

    .line 482
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v4, v5}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    goto :goto_3f

    .line 503
    .restart local v3       #slop:I
    :cond_af
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_de

    .line 504
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v4, :cond_a2

    iget v4, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-le v4, v3, :cond_a2

    .line 505
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 506
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 507
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 508
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2

    .line 512
    :cond_de
    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a2

    .line 513
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 514
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 515
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v4}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()Z

    goto :goto_a2
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public cancelDrag()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 362
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_23

    .line 363
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_10

    .line 364
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 366
    :cond_10
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    .line 367
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 368
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V

    .line 370
    :cond_23
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    .line 371
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dragging()Z
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method getDragView()Lcom/android/launcher2/DragView;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    return-object v0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 306
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    .line 309
    .local v4, willNotCache:Z
    invoke-virtual {p1, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 314
    .local v3, color:I
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 316
    .local v0, alpha:F
    const/high16 v5, 0x3f80

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 318
    if-eqz v3, :cond_23

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 321
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .local v2, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_51

    .line 324
    const-string v5, "Launcher.DragController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed getViewBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v1, 0x0

    .line 336
    :goto_50
    return-object v1

    .line 328
    :cond_51
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 331
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 333
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 334
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_50
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    if-eqz v4, :cond_34

    .line 375
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 376
    .local v3, rawDragInfo:Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v4, :cond_34

    move-object v0, v3

    .line 377
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 378
    .local v0, dragInfo:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 379
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 386
    .end local v0           #dragInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #rawDragInfo:Ljava/lang/Object;
    :cond_34
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 421
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 422
    .local v1, dragLayerPos:[I
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 423
    .local v2, dragLayerX:I
    const/4 v4, 0x1

    aget v3, v1, v4

    .line 425
    .local v3, dragLayerY:I
    packed-switch v0, :pswitch_data_36

    .line 445
    :goto_19
    :pswitch_19
    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v4

    .line 430
    :pswitch_1c
    iput v2, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 431
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 432
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    goto :goto_19

    .line 435
    :pswitch_24
    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v4, :cond_2d

    .line 436
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 438
    :cond_2d
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_19

    .line 441
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_19

    .line 425
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
        :pswitch_19
        :pswitch_31
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    iget-boolean v6, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-nez v6, :cond_7

    .line 565
    :goto_6
    return v4

    .line 529
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 530
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 531
    .local v1, dragLayerPos:[I
    aget v2, v1, v4

    .line 532
    .local v2, dragLayerX:I
    aget v3, v1, v5

    .line 534
    .local v3, dragLayerY:I
    packed-switch v0, :pswitch_data_62

    :goto_1e
    move v4, v5

    .line 565
    goto :goto_6

    .line 537
    :pswitch_20
    iput v2, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 538
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 540
    iget v6, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-lt v2, v6, :cond_33

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_3f

    .line 541
    :cond_33
    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 542
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v7, 0x258

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    .line 544
    :cond_3f
    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    goto :goto_1e

    .line 548
    :pswitch_42
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    goto :goto_1e

    .line 552
    :pswitch_46
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 554
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 555
    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v4, :cond_59

    .line 556
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 558
    :cond_59
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_1e

    .line 561
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_1e

    .line 534
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_20
        :pswitch_46
        :pswitch_42
        :pswitch_5d
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 641
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .registers 2
    .parameter "scroller"

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    .line 623
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    .line 453
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    .line 662
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 627
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 16
    .parameter "b"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    const/4 v7, 0x0

    .line 235
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 236
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 26
    .parameter "b"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_16

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 263
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/DragController$DragListener;

    .line 266
    .local v15, listener:Lcom/android/launcher2/DragController$DragListener;
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v15, v0, v1, v2}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    goto :goto_2a

    .line 269
    .end local v15           #listener:Lcom/android/launcher2/DragController$DragListener;
    :cond_40
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    sub-int v6, v4, p2

    .line 270
    .local v6, registrationX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    sub-int v7, v4, p3

    .line 272
    .local v7, registrationY:I
    if-nez p8, :cond_ea

    const/4 v12, 0x0

    .line 273
    .local v12, dragRegionLeft:I
    :goto_4f
    if-nez p8, :cond_f0

    const/4 v13, 0x0

    .line 275
    .local v13, dragRegionTop:I
    :goto_52
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 277
    new-instance v4, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v4}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    add-int v8, p2, v12

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    add-int v8, p3, v13

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v8, 0x23

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v16, v0

    new-instance v3, Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIII)V

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 290
    .local v3, dragView:Lcom/android/launcher2/DragView;
    if-eqz p7, :cond_c5

    .line 291
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 293
    :cond_c5
    if-eqz p8, :cond_d1

    .line 294
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 297
    :cond_d1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/DragView;->show(II)V

    .line 298
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 299
    return-void

    .line 272
    .end local v3           #dragView:Lcom/android/launcher2/DragView;
    .end local v12           #dragRegionLeft:I
    .end local v13           #dragRegionTop:I
    :cond_ea
    move-object/from16 v0, p8

    iget v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4f

    .line 273
    .restart local v12       #dragRegionLeft:I
    :cond_f0
    move-object/from16 v0, p8

    iget v13, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_52
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .registers 17
    .parameter "v"
    .parameter "bmp"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 209
    iget-object v9, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 210
    .local v9, loc:[I
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 211
    const/4 v0, 0x0

    aget v2, v9, v0

    .line 212
    .local v2, dragLayerX:I
    const/4 v0, 0x1

    aget v3, v9, v0

    .line 214
    .local v3, dragLayerY:I
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 216
    sget v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    if-ne p5, v0, :cond_25

    .line 217
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_25
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 11
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 159
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 160
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .registers 16
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    .local v1, b:Landroid/graphics/Bitmap;
    if-nez v1, :cond_7

    .line 193
    :cond_6
    :goto_6
    return-void

    .line 182
    :cond_7
    iget-object v9, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 183
    .local v9, loc:[I
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 184
    const/4 v0, 0x0

    aget v2, v9, v0

    .line 185
    .local v2, dragLayerX:I
    const/4 v0, 0x1

    aget v3, v9, v0

    .line 187
    .local v3, dragLayerY:I
    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    sget v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    if-ne p4, v0, :cond_6

    .line 191
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method
