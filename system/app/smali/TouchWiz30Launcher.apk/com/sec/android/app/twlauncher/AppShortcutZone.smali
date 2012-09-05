.class public Lcom/sec/android/app/twlauncher/AppShortcutZone;
.super Landroid/widget/LinearLayout;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;
    }
.end annotation


# instance fields
.field private mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mApplicationsView:Landroid/view/View;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

.field private final mColumnCount:I

.field private mDoNotAnimateView:Landroid/view/View;

.field private mDragCell:I

.field private mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field private mEnabledChildAnimation:Z

.field private mExecDragOverDelayed:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastShiftedOut:Landroid/view/View;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLauncherManagerScale:F

.field private mLauncherManagerTransX:I

.field private mLauncherManagerTransY:I

.field private mMyContext:Landroid/content/Context;

.field private mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOldOrientation:I

.field private mOrientation:I

.field private mScaledRect:Landroid/graphics/RectF;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    .line 80
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/AppShortcutZone$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    .line 92
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 646
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    .line 672
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 716
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 107
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->AppShortcutZone:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v4, :cond_55

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppShortcutZone_iconColumnCount should be at least 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_55
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    .line 117
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/AppShortcutZone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/AppShortcutZone;Landroid/view/View;IIIILjava/lang/String;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->layoutChild(Landroid/view/View;IIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/AppShortcutZone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    return p1
.end method

.method private addItem(Landroid/view/View;I)V
    .registers 6
    .parameter "v"
    .parameter "index"

    .prologue
    .line 869
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 870
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 871
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_10

    move-object v0, v1

    .line 872
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 873
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v2, -0x1

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 875
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_10
    return-void
.end method

.method private arrangeItem(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v2

    .line 1036
    .local v2, count:I
    add-int/lit8 v3, p1, 0x1

    .local v3, i:I
    :goto_6
    if-ge v3, v2, :cond_20

    .line 1037
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1038
    .local v1, appView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1039
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_1d

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_1d

    move-object v0, v4

    .line 1040
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1041
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 1036
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1044
    .end local v1           #appView:Landroid/view/View;
    .end local v4           #tag:Ljava/lang/Object;
    :cond_20
    return-void
.end method

.method private findView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .parameter "aView"

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 480
    .end local p1
    :goto_6
    return-object p1

    .line 476
    .restart local p1
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 477
    .local v0, tag:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_11

    .line 478
    const/4 p1, 0x0

    goto :goto_6

    .line 480
    :cond_11
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_6
.end method

.method private fixItemIndexes()V
    .registers 7

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v2

    .line 1023
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_1f

    .line 1024
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1025
    .local v1, appView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1026
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_1c

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_1c

    move-object v0, v4

    .line 1027
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1028
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 1023
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1032
    .end local v1           #appView:Landroid/view/View;
    .end local v4           #tag:Ljava/lang/Object;
    :cond_1f
    return-void
.end method

.method private getGap(III)I
    .registers 9
    .parameter "childCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v1

    .line 808
    .local v1, orientation:I
    const/4 v2, 0x0

    .local v2, totGap:I
    const/4 v0, 0x0

    .line 809
    .local v0, gap:I
    if-nez v1, :cond_27

    .line 810
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v4, p2, p1

    sub-int v2, v3, v4

    .line 814
    :goto_1a
    if-lez v2, :cond_26

    .line 815
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne p1, v3, :cond_3a

    .line 816
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v3, v3, -0x1

    div-int v0, v2, v3

    .line 821
    :cond_26
    :goto_26
    return v0

    .line 812
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v4, p3, p1

    sub-int v2, v3, v4

    goto :goto_1a

    .line 818
    :cond_3a
    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    goto :goto_26
.end method

.method private getIndexOfCell(II)I
    .registers 15
    .parameter "aX"
    .parameter "aY"

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    .line 826
    .local v3, count:I
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 827
    .local v2, childWidth:I
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 829
    .local v1, childHeight:I
    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getGap(III)I

    move-result v4

    .line 830
    .local v4, gap:I
    if-gez v3, :cond_18

    .line 831
    const/4 v0, -0x1

    .line 865
    :cond_17
    :goto_17
    return v0

    .line 833
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v6

    .line 834
    .local v6, orientation:I
    const/4 v0, -0x1

    .line 837
    .local v0, cell:I
    if-nez v6, :cond_3d

    .line 839
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v7

    .line 840
    .local v7, padding:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_24
    add-int/lit8 v10, v3, -0x1

    if-ge v5, v10, :cond_32

    .line 841
    add-int/lit8 v10, v5, 0x1

    add-int v11, v4, v2

    mul-int/2addr v10, v11

    add-int v8, v7, v10

    .line 842
    .local v8, right:I
    if-ge p1, v8, :cond_3a

    .line 843
    move v0, v5

    .line 858
    .end local v8           #right:I
    :cond_32
    :goto_32
    if-gez v0, :cond_17

    .line 859
    add-int/lit8 v0, v3, -0x2

    .line 860
    if-gez v0, :cond_17

    .line 861
    const/4 v0, 0x0

    goto :goto_17

    .line 840
    .restart local v8       #right:I
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 849
    .end local v5           #i:I
    .end local v7           #padding:I
    .end local v8           #right:I
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v7

    .line 850
    .restart local v7       #padding:I
    add-int/lit8 v5, v3, -0x1

    .restart local v5       #i:I
    :goto_43
    if-lez v5, :cond_32

    .line 851
    add-int/lit8 v10, v5, 0x1

    mul-int/2addr v10, v4

    add-int/2addr v10, v7

    mul-int v11, v5, v1

    add-int v9, v10, v11

    .line 852
    .local v9, top:I
    if-le p2, v9, :cond_54

    .line 853
    add-int/lit8 v10, v3, -0x1

    sub-int v0, v10, v5

    .line 854
    goto :goto_32

    .line 850
    :cond_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_43
.end method

.method private getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 6
    .parameter "tag"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 429
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_17

    .line 430
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_14

    .line 436
    .end local v0           #child:Landroid/view/View;
    :goto_13
    return-object v0

    .line 429
    .restart local v0       #child:Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 436
    .end local v0           #child:Landroid/view/View;
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 122
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 128
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setClickable(Z)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_33

    .line 136
    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 139
    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.home"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4c

    .line 143
    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    .line 146
    :cond_4c
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    .line 147
    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransX:I

    .line 148
    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransY:I

    .line 149
    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerScale:F

    .line 152
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v2, :cond_7c

    .line 155
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 158
    :cond_7c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7d
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v0, v2, :cond_8d

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    aput-object v3, v2, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 161
    :cond_8d
    return-void
.end method

.method private initApplicationsView()V
    .registers 10

    .prologue
    .line 164
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, itemView:Landroid/view/View;
    move-object v5, v0

    .line 166
    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 167
    .local v5, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_34

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 176
    .local v4, paddingTop:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 177
    .local v2, paddingLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 178
    .local v1, paddingBottom:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 180
    .local v3, paddingRight:I
    const v6, 0x7f02001a

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    .line 181
    invoke-virtual {v5, v2, v4, v3, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPadding(IIII)V

    .line 183
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 184
    new-instance v6, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    .line 209
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method private layoutChild(Landroid/view/View;IIIILjava/lang/String;)V
    .registers 7
    .parameter "aView"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "debug"

    .prologue
    .line 227
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 228
    return-void
.end method

.method private makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .registers 10
    .parameter "info"

    .prologue
    const/4 v7, -0x1

    .line 614
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 615
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 617
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    if-eq v4, v5, :cond_1e

    .line 618
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 619
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 621
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 622
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 625
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1e
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 627
    .local v1, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 628
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 630
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 633
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 636
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    if-eq v4, v7, :cond_55

    .line 637
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 638
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 639
    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 640
    iput v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 643
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_55
    return-object v1
.end method

.method private slideASZItems(IIIIZ)Landroid/view/View;
    .registers 28
    .parameter "aX"
    .parameter "aY"
    .parameter "aXOffset"
    .parameter "aYOffset"
    .parameter "aTakeOwnership"

    .prologue
    .line 1277
    new-instance v3, Landroid/graphics/PointF;

    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRectGlobal(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 1279
    .local v17, newPt:Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1280
    .local v19, x:I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1281
    .local v20, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v9

    .line 1282
    .local v9, childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v10

    .line 1283
    .local v10, colCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v11

    .line 1284
    .local v11, dragView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .line 1286
    .local v15, myDragView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v14

    .line 1288
    .local v14, menuMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    if-nez v15, :cond_c1

    .line 1289
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 1290
    .local v18, point:[I
    const/16 v16, 0x0

    .line 1291
    .local v16, needsShift:Z
    if-ne v10, v9, :cond_89

    .line 1293
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v12

    .line 1294
    .local v12, hoveredOverViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1296
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 1297
    const/16 v16, 0x1

    .line 1299
    .end local v12           #hoveredOverViewIndex:I
    :cond_89
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 1300
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    if-eqz p5, :cond_ab

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragSource(Lcom/sec/android/app/twlauncher/DragSource;IIII)V

    .line 1304
    :cond_ab
    if-eqz v16, :cond_c1

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    aget v5, v18, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v14, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->aszShiftOut(Landroid/view/View;Landroid/graphics/PointF;)V

    .line 1308
    .end local v16           #needsShift:Z
    .end local v18           #point:[I
    :cond_c1
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v13

    .line 1310
    .local v13, index:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-eq v13, v3, :cond_dd

    .line 1311
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1312
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 1314
    :cond_dd
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->fixItemIndexes()V

    .line 1315
    return-object v15
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 1331
    const/4 v0, 0x0

    .line 1333
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public addViewAtEnd(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .parameter "aView"

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    .line 1269
    .local v0, childCount:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 1270
    const/4 v1, 0x0

    .line 1272
    :goto_8
    return-object v1

    :cond_9
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_8
.end method

.method public animateToASZ(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z
    .registers 14
    .parameter "aView"
    .parameter "aSrc"
    .parameter "aLstnr"

    .prologue
    const/4 v9, 0x1

    .line 525
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v1, :cond_5d

    .line 526
    const/16 v7, 0x12c

    .line 527
    .local v7, duration:I
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 528
    .local v5, srcPt:Landroid/graphics/PointF;
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_36

    .line 530
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v1, v2, v3, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {v5, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 532
    :cond_36
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 533
    .local v6, tgtPt:Landroid/graphics/PointF;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v9, v9}, Lcom/sec/android/app/twlauncher/DragLayer;->getGenericViewAnims(IZ)Lcom/sec/android/app/twlauncher/GenericViewAnim;

    move-result-object v0

    .local v0, anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    move-object v1, p1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    .line 535
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    .line 540
    .end local v0           #anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    .end local v5           #srcPt:Landroid/graphics/PointF;
    .end local v6           #tgtPt:Landroid/graphics/PointF;
    .end local v7           #duration:I
    :goto_59
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 541
    return v9

    .line 538
    :cond_5d
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    goto :goto_59
.end method

.method public appendApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .registers 4
    .parameter "info"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    .line 588
    .local v0, childCount:I
    if-eqz p1, :cond_a

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-lt v0, v1, :cond_c

    .line 589
    :cond_a
    const/4 v1, 0x0

    .line 595
    :goto_b
    return v1

    .line 591
    :cond_c
    if-lez v0, :cond_10

    .line 592
    add-int/lit8 v0, v0, -0x1

    .line 594
    :cond_10
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 595
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public aszShiftIn(Landroid/view/View;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1237
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 1263
    :goto_a
    return v0

    .line 1240
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_1f

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v3, :cond_21

    :cond_1f
    move v0, v1

    .line 1243
    goto :goto_a

    .line 1245
    :cond_21
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocAndAnimDur(Landroid/view/View;)Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;

    move-result-object v3

    .line 1246
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1247
    const-string v4, "aszShiftIn"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->unShiftItems(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addViewAtEnd(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 1249
    if-nez v0, :cond_37

    move v0, v1

    .line 1250
    goto :goto_a

    .line 1253
    :cond_37
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_44

    .line 1254
    check-cast p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 1256
    :cond_44
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    .line 1258
    iget-object v1, v3, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaledRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRectGlobal(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1261
    new-instance v2, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;

    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$makeVisibleLstnr;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone$postLayoutAnimateToASZ;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->post(Ljava/lang/Runnable;)Z

    .line 1263
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public cancelDragOverDelayed(Ljava/lang/String;)V
    .registers 3
    .parameter "who"

    .prologue
    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    if-eqz v0, :cond_c

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1175
    :cond_c
    return-void
.end method

.method public changeApplicationsIcon()V
    .registers 6

    .prologue
    const v4, 0x7f08004f

    .line 902
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 903
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 904
    .local v1, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 905
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 909
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :cond_3a
    :goto_3a
    return-void

    .line 911
    :cond_3b
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_67

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.home"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 919
    :cond_67
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher.home"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method public clearApplications()V
    .registers 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeAllViews()V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 584
    return-void
.end method

.method public createView(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .parameter "aView"
    .parameter "aIndex"

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 462
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v1, :cond_a

    .line 463
    const/4 v0, 0x0

    .line 469
    :goto_9
    return-object v0

    .line 465
    :cond_a
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, addView:Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 468
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    goto :goto_9
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 547
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 22
    .parameter "canvas"

    .prologue
    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_9

    .line 316
    const/16 v17, 0x0

    .line 390
    :goto_8
    return v17

    .line 318
    :cond_9
    const/16 v17, 0x0

    .line 319
    .local v17, result:Z
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v16

    .line 323
    .local v16, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v13

    .line 324
    .local v13, dropTableZoom:F
    float-to-double v3, v13

    const-wide/16 v6, 0x0

    cmpl-double v3, v3, v6

    if-lez v3, :cond_2a

    .line 325
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setSubdivide(Z)V

    .line 328
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v10

    .line 329
    .local v10, childCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 331
    const/high16 v8, 0x3f80

    .line 332
    .local v8, animVal:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v8

    .line 334
    const/16 v17, 0x1

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_7f

    const/4 v3, 0x0

    cmpl-float v3, v8, v3

    if-nez v3, :cond_7f

    .line 336
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v9

    .line 339
    .local v9, awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v11

    .line 341
    .local v11, dZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 342
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 347
    .end local v9           #awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .end local v11           #dZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v12, v3

    .line 349
    .local v12, diff:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 351
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_167

    float-to-double v3, v13

    const-wide/high16 v6, 0x3ff0

    cmpg-double v3, v3, v6

    if-gez v3, :cond_167

    const/4 v3, 0x1

    :goto_9e
    or-int v17, v17, v3

    .line 352
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v2

    .line 353
    .local v2, glView:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerScale:F

    invoke-static {v3, v4, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v5

    .line 354
    .local v5, scale:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransX:I

    int-to-float v3, v3

    mul-float v6, v3, v13

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransY:I

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float v7, v3, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->drawGenericViewAnims(ILcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v3

    or-int v17, v17, v3

    .line 356
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 360
    const v3, 0x3ecccccd

    mul-float/2addr v3, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 365
    :cond_f4
    const/4 v14, 0x0

    .line 366
    .local v14, fastScrollFactor:F
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 367
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v14

    .line 373
    :goto_ff
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_114

    .line 374
    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v14

    const v6, 0x3e99999a

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 377
    :cond_114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 381
    const/4 v15, 0x0

    .local v15, i:I
    :goto_13b
    if-ge v15, v10, :cond_177

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 383
    .local v18, view:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 384
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 385
    check-cast v18, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v18           #view:Landroid/view/View;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v3

    or-int v17, v17, v3

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 381
    add-int/lit8 v15, v15, 0x1

    goto :goto_13b

    .line 351
    .end local v2           #glView:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .end local v5           #scale:F
    .end local v14           #fastScrollFactor:F
    .end local v15           #i:I
    :cond_167
    const/4 v3, 0x0

    goto/16 :goto_9e

    .line 369
    .restart local v2       #glView:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .restart local v5       #scale:F
    .restart local v14       #fastScrollFactor:F
    :cond_16a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getFastScrollFactor()F

    move-result v14

    goto :goto_ff

    .line 388
    .restart local v15       #i:I
    :cond_177
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_8
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 10
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v6, 0x42

    const/16 v5, 0x11

    const/4 v3, 0x1

    .line 930
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v4, :cond_4f

    .line 931
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 932
    .local v1, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 933
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 934
    .local v0, childCount:I
    if-le v0, v3, :cond_4f

    .line 935
    if-ne p2, v5, :cond_28

    .line 936
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v4

    if-nez v4, :cond_27

    .line 937
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 970
    .end local v0           #childCount:I
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :cond_27
    :goto_27
    return v3

    .line 940
    .restart local v0       #childCount:I
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :cond_28
    if-ne p2, v6, :cond_4f

    .line 941
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_27

    .line 942
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 944
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    goto :goto_27

    .line 951
    .end local v0           #childCount:I
    :cond_39
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 952
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 954
    .local v2, w:Lcom/sec/android/app/twlauncher/Workspace;
    if-ne p2, v5, :cond_5e

    .line 955
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    if-gtz v4, :cond_54

    .line 970
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_4f
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_27

    .line 957
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .restart local v2       #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_54
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_27

    .line 960
    :cond_5e
    if-ne p2, v6, :cond_4f

    .line 961
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4f

    .line 963
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_27
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;
    .registers 5
    .parameter "tag"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_f

    move-object v0, v1

    .line 417
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 418
    .local v0, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 422
    .end local v0           #itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
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
    .line 440
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 441
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 446
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_57

    .line 447
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 449
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_54

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_54

    .line 450
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_4f

    .line 451
    const-string v3, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Owner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_4f
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 457
    .end local v0           #child:Landroid/view/View;
    :cond_57
    return-object p1
.end method

.method public getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "outRect"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1090
    return-void
.end method

.method public getPhantomItemViews()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v4, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 489
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_23

    .line 490
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v5, :cond_20

    move-object v3, v0

    .line 492
    check-cast v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 493
    .local v3, menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 494
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v3           #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 498
    .end local v0           #child:Landroid/view/View;
    :cond_23
    return-object v4
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 219
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidateViewTree(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method public loadApplications()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 550
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 552
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_f

    .line 579
    :goto_e
    return-void

    .line 558
    :cond_f
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropTopApplicationCache()V

    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, index:I
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5f

    .line 563
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, strCName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->initTopApp(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v2

    .line 566
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v2, :cond_17

    .line 567
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 568
    invoke-virtual {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 569
    invoke-virtual {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 570
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 571
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    .line 572
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    .line 573
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v3

    .line 574
    .local v3, item:Landroid/view/View;
    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 578
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #item:Landroid/view/View;
    .end local v4           #strCName:Ljava/lang/String;
    :cond_5f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1123
    const-string v0, "onDragEnterASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1325
    const-string v0, "onDragExitASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1326
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1179
    const-string v0, "onDragOverASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    move-object v0, p6

    .line 1181
    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 1182
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_11

    .line 1191
    :cond_10
    :goto_10
    return-void

    .line 1185
    :cond_11
    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_10

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method

.method public onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 13
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1320
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->slideASZItems(IIIIZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    .line 1321
    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1127
    const-string v0, "onDragSourceChangedASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1128
    if-eq p2, p0, :cond_1b

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v0

    .line 1130
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1131
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1132
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unShiftItems()V

    .line 1134
    :cond_1b
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1093
    const-string v0, "onDropASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-eq v0, v6, :cond_14

    .line 1118
    :cond_13
    :goto_13
    return v5

    :cond_14
    move-object v0, p6

    .line 1098
    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 1099
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_2e

    .line 1100
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 1104
    :cond_2e
    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 1107
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->slideASZItems(IIIIZ)Landroid/view/View;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_13

    .line 1111
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    .line 1113
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unShiftItems()V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 1118
    :cond_5d
    const/4 v5, 0x1

    goto :goto_13
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .registers 15
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    const/4 v6, 0x0

    .line 770
    const-string v5, "onDropCompleted ASZ"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 771
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v1

    .line 772
    .local v1, dragView:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 773
    .local v4, myDragView:Landroid/view/View;
    const/4 v2, -0x1

    .line 774
    .local v2, index:I
    if-eqz p6, :cond_5f

    .line 775
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 776
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-result v2

    .line 777
    if-gez v2, :cond_2e

    .line 778
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-gez v5, :cond_5c

    move v2, v6

    .line 780
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 781
    .local v3, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 782
    .local v0, addView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 783
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 785
    .end local v0           #addView:Lcom/sec/android/app/twlauncher/MenuItemView;
    .end local v3           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_41
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/MenuDrawer;

    if-nez v5, :cond_49

    instance-of v5, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v5, :cond_4c

    .line 786
    :cond_49
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 796
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unShiftItems()V

    .line 797
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 798
    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    .line 799
    return-void

    .line 778
    :cond_5c
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    goto :goto_2e

    .line 789
    :cond_5f
    if-nez v4, :cond_6e

    .line 790
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-gez v5, :cond_6b

    move v2, v6

    .line 791
    :goto_66
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_4c

    .line 790
    :cond_6b
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    goto :goto_66

    :cond_6e
    move-object v5, v4

    .line 793
    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_4c
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 759
    const/4 v0, 0x1

    .line 761
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v9

    .line 233
    .local v9, count:I
    const/4 v10, 0x0

    .line 235
    .local v10, gap:I
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v0, :cond_18

    .line 236
    const/4 v11, 0x0

    .local v11, i:I
    :goto_a
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v11, v0, :cond_18

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->stop()V

    .line 236
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 240
    .end local v11           #i:I
    :cond_18
    if-lez v9, :cond_f2

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v12

    .line 242
    .local v12, orientation:I
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 243
    .local v13, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v2

    .line 244
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v3

    .line 245
    .local v3, childTop:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 247
    .local v8, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 249
    .local v7, childHeight:I
    if-nez v12, :cond_94

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    mul-int v4, v8, v9

    sub-int v14, v0, v4

    .line 251
    .local v14, totGap:I
    if-lez v14, :cond_51

    .line 252
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v9, v0, :cond_83

    .line 253
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v0, v0, -0x1

    div-int v10, v14, v0

    .line 259
    :cond_51
    :goto_51
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_52
    if-ge v11, v9, :cond_f2

    .line 260
    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 262
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    if-eq v1, v0, :cond_89

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 264
    add-int v0, v2, v8

    add-int v4, v3, v7

    invoke-virtual {v13, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v0, v0, v11

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 271
    :goto_7d
    add-int v0, v8, v10

    add-int/2addr v2, v0

    .line 259
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    .line 255
    .end local v11           #i:I
    :cond_83
    add-int/lit8 v0, v9, 0x1

    div-int v10, v14, v0

    .line 256
    add-int/2addr v2, v10

    goto :goto_51

    .line 268
    .restart local v11       #i:I
    :cond_89
    add-int v4, v2, v8

    add-int v5, v3, v7

    const-string v6, "onLayoutHorz"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->layoutChild(Landroid/view/View;IIIILjava/lang/String;)V

    goto :goto_7d

    .line 275
    .end local v11           #i:I
    .end local v14           #totGap:I
    :cond_94
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    mul-int v4, v7, v9

    sub-int v14, v0, v4

    .line 276
    .restart local v14       #totGap:I
    if-lez v14, :cond_ae

    .line 277
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v9, v0, :cond_e1

    .line 278
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    add-int/lit8 v0, v0, -0x1

    div-int v10, v14, v0

    .line 284
    :cond_ae
    :goto_ae
    add-int/lit8 v11, v9, -0x1

    .restart local v11       #i:I
    :goto_b0
    if-ltz v11, :cond_f2

    .line 285
    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 287
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    if-eq v1, v0, :cond_e7

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e7

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 289
    add-int v0, v2, v8

    add-int v4, v3, v7

    invoke-virtual {v13, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v0, v0, v11

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 295
    :goto_db
    add-int v0, v7, v10

    add-int/2addr v3, v0

    .line 284
    add-int/lit8 v11, v11, -0x1

    goto :goto_b0

    .line 280
    .end local v11           #i:I
    :cond_e1
    add-int/lit8 v0, v9, 0x1

    div-int v10, v14, v0

    .line 281
    add-int/2addr v3, v10

    goto :goto_ae

    .line 292
    .restart local v11       #i:I
    :cond_e7
    add-int v4, v2, v8

    add-int v5, v3, v7

    const-string v6, "onLayoutVert"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->layoutChild(Landroid/view/View;IIIILjava/lang/String;)V

    goto :goto_db

    .line 299
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    .end local v7           #childHeight:I
    .end local v8           #childWidth:I
    .end local v11           #i:I
    .end local v12           #orientation:I
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v14           #totGap:I
    :cond_f2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDoNotAnimateView:Landroid/view/View;

    .line 300
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 304
    if-nez p2, :cond_6

    .line 305
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :cond_6
    return-void
.end method

.method removeItem(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 879
    .local v1, count:I
    const/4 v3, -0x1

    .line 880
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v1, :cond_f

    .line 881
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 882
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_16

    .line 883
    move v3, v2

    .line 887
    .end local v0           #child:Landroid/view/View;
    :cond_f
    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 888
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 890
    :cond_15
    return v3

    .line 880
    .restart local v0       #child:Landroid/view/View;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public saveToDB()Z
    .registers 7

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v4

    .line 600
    .local v4, topAppCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v4, :cond_25

    .line 601
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 602
    .local v1, appView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 603
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_22

    move-object v0, v3

    .line 604
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 605
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 606
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 607
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 600
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 610
    .end local v1           #appView:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_25
    const/4 v5, 0x1

    return v5
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 802
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 803
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    .line 895
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 766
    return-void
.end method

.method public unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z
    .registers 9
    .parameter "aView"
    .parameter "aSrc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            "Landroid/graphics/PointF;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p3, aPhanList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    const/4 v1, 0x0

    .local v1, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v2, 0x0

    .line 506
    .local v2, tempItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    if-nez p3, :cond_8

    .line 507
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPhantomItemViews()Ljava/util/ArrayList;

    move-result-object p3

    .line 509
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-nez v1, :cond_22

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 510
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    check-cast v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 511
    .restart local v2       #tempItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_26

    .line 512
    move-object v1, v2

    .line 516
    :cond_22
    if-nez v1, :cond_29

    .line 517
    const/4 v3, 0x0

    .line 519
    :goto_25
    return v3

    .line 509
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 519
    :cond_29
    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->animateToASZ(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    move-result v3

    goto :goto_25
.end method

.method public unShiftItems()V
    .registers 4

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    .line 1195
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v1

    .line 1197
    .local v1, colCount:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    if-eqz v2, :cond_13

    if-ge v0, v1, :cond_13

    .line 1198
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->aszShiftIn(Landroid/view/View;)Z

    .line 1200
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftedOut:Landroid/view/View;

    .line 1201
    return-void
.end method
