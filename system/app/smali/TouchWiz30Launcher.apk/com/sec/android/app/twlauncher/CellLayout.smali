.class public Lcom/sec/android/app/twlauncher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;,
        Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static ScreensBG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isBGText:Z

.field private mActualCellHeight:I

.field private mActualCellWidth:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

.field private mColumnCells:I

.field private mColumnEndPadding:I

.field private mColumnStartPadding:I

.field private mDimPaint:Landroid/graphics/Paint;

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mLastDownOnOccupiedCell:Z

.field mOccupied:[[Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRowCells:I

.field private mRowEndPadding:I

.field private mRowStartPadding:I

.field private mScreenClipExtendedEdge:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/CellLayout;->ScreensBG:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 79
    new-instance v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 81
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    .line 85
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 89
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 97
    iput v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    .line 102
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->isBGText:Z

    .line 117
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    .line 120
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    .line 122
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    .line 124
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowEndPadding:I

    .line 126
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    .line 128
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnEndPadding:I

    .line 131
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 132
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_85

    .line 139
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 142
    :cond_85
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7fff

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 50
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 5
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 416
    invoke-static {}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->acquire()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 417
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 418
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 419
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 420
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 421
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_2c

    .line 422
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 423
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 425
    :cond_2c
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_3a

    .line 426
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 427
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 429
    :cond_3a
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .registers 7
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 362
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 363
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 364
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 365
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 368
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_14

    .line 375
    :goto_13
    return-void

    .line 372
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_13
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .registers 13
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 934
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    if-ge v4, p1, :cond_11

    .line 935
    const/4 v5, 0x0

    .local v5, y:I
    :goto_4
    if-ge v5, p2, :cond_e

    .line 936
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 935
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 934
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 940
    .end local v5           #y:I
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 941
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v1, :cond_50

    .line 942
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v6, :cond_26

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 941
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 946
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 947
    .local v3, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    :goto_31
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_26

    if-ge v4, p1, :cond_26

    .line 948
    iget v5, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_3c
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4d

    if-ge v5, p2, :cond_4d

    .line 949
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 948
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 947
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 953
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_50
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 8
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    .line 380
    invoke-static {p0, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 382
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_24

    .line 383
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 384
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 385
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 386
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 390
    :cond_24
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_47

    .line 391
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 392
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 393
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 394
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 398
    :cond_47
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_68

    .line 399
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 400
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 401
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 402
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 406
    :cond_68
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_8b

    .line 407
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 408
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 409
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 410
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 413
    :cond_8b
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .registers 14
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 894
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, p3, :cond_43

    .line 895
    const/4 v4, 0x0

    .local v4, y:I
    :goto_6
    if-ge v4, p4, :cond_40

    .line 896
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_33

    move v0, v5

    .line 897
    .local v0, available:Z
    :goto_f
    move v1, v3

    .local v1, i:I
    :goto_10
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2c

    if-ge v3, p3, :cond_2c

    .line 898
    move v2, v4

    .local v2, j:I
    :goto_19
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3a

    if-ge v4, p4, :cond_3a

    .line 899
    if-eqz v0, :cond_35

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_35

    move v0, v5

    .line 900
    :goto_2a
    if-nez v0, :cond_37

    .line 905
    .end local v2           #j:I
    :cond_2c
    if-eqz v0, :cond_3d

    .line 906
    aput v3, p0, v6

    .line 907
    aput v4, p0, v5

    .line 913
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_32
    return v5

    .restart local v4       #y:I
    :cond_33
    move v0, v6

    .line 896
    goto :goto_f

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_35
    move v0, v6

    .line 899
    goto :goto_2a

    .line 898
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 897
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 895
    .end local v2           #j:I
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 894
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #y:I
    :cond_43
    move v5, v6

    .line 913
    goto :goto_32
.end method

.method private static isColumnEmpty(III[[Z)Z
    .registers 6
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 433
    move v0, p1

    .local v0, y:I
    :goto_1
    if-gt v0, p2, :cond_e

    .line 434
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b

    .line 435
    const/4 v1, 0x0

    .line 438
    :goto_a
    return v1

    .line 433
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private static isRowEmpty(III[[Z)Z
    .registers 6
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 442
    move v0, p1

    .local v0, x:I
    :goto_1
    if-gt v0, p2, :cond_e

    .line 443
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_b

    .line 444
    const/4 v1, 0x0

    .line 447
    :goto_a
    return v1

    .line 442
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 244
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 245
    .local v0, cellParams:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->regenerateId:Z

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 221
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 225
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 226
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 229
    .end local v0           #child:Landroid/view/View;
    :cond_14
    return-void
.end method

.method cellToPoint(II[I)V
    .registers 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 554
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    .line 555
    .local v0, hStartPadding:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    .line 557
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 558
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 559
    return-void
.end method

.method cellToPointX(I)I
    .registers 5
    .parameter "cellX"

    .prologue
    .line 535
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    .line 536
    .local v0, hStartPadding:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method cellToPointY(I)I
    .registers 5
    .parameter "cellY"

    .prologue
    .line 540
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    .line 541
    .local v0, vStartPadding:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method cellsToPixelRect(II[I)Landroid/graphics/Rect;
    .registers 12
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellSize"

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 590
    new-array v0, v2, [I

    .line 591
    .local v0, pos:[I
    new-array v1, v2, [I

    .line 592
    .local v1, size:[I
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 593
    aget v2, p3, v6

    aget v3, p3, v7

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 595
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v6

    aget v6, v1, v6

    add-int/2addr v5, v6

    aget v6, v0, v7

    aget v7, v1, v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 962
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "view"
    .parameter "arg0"

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z
    .registers 13
    .parameter "canvas"
    .parameter "ignoreClipping"
    .parameter "ignoreTransRefs"

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getMeasuredWidth()I

    move-result v6

    .line 1265
    .local v6, windowWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v2, v8, v7

    .line 1267
    .local v2, pageLeft:I
    if-nez p3, :cond_19

    .line 1273
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 1275
    :cond_19
    const/4 v3, 0x0

    .line 1276
    .local v3, res:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_66

    .line 1277
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1278
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2e

    .line 1276
    .end local v5           #v:Landroid/view/View;
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1280
    .restart local v5       #v:Landroid/view/View;
    :cond_2e
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int v1, v2, v7

    .line 1281
    .local v1, left:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v4, v1, v7

    .line 1282
    .local v4, right:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_46

    .line 1284
    add-int/lit16 v4, v4, 0xa0

    .line 1286
    :cond_46
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    add-int/2addr v7, v6

    if-ge v1, v7, :cond_50

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    neg-int v7, v7

    if-gt v4, v7, :cond_52

    :cond_50
    if-eqz p2, :cond_2b

    .line 1290
    :cond_52
    instance-of v7, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v7, :cond_5e

    .line 1291
    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .end local v5           #v:Landroid/view/View;
    invoke-interface {v5, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_2b

    .line 1293
    .restart local v5       #v:Landroid/view/View;
    :cond_5e
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v7, p1, v5}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->drawChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_2b

    .line 1317
    .end local v1           #left:I
    .end local v4           #right:I
    .end local v5           #v:Landroid/view/View;
    :cond_66
    return v3
.end method

.method public drawShadows(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 1322
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1323
    .local v0, scroll:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->drawAllShadowsWithClipping(Lcom/sec/android/app/twlauncher/GLCanvas;II)V

    .line 1325
    return-void
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .registers 10
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 451
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 452
    .local v2, xCount:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 454
    .local v4, yCount:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 456
    .local v0, occupied:[[Z
    if-eqz p1, :cond_1d

    .line 457
    const/4 v3, 0x0

    .local v3, y:I
    :goto_9
    if-ge v3, v4, :cond_20

    .line 458
    const/4 v1, 0x0

    .local v1, x:I
    :goto_c
    if-ge v1, v2, :cond_1a

    .line 459
    aget-object v5, v0, v1

    mul-int v6, v3, v2

    add-int/2addr v6, v1

    aget-boolean v6, p1, v6

    aput-boolean v6, v5, v3

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 457
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 463
    .end local v1           #x:I
    .end local v3           #y:I
    :cond_1d
    invoke-direct {p0, v2, v4, v0, p2}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 466
    :cond_20
    invoke-virtual {p0, v0, v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v5

    return-object v5
.end method

.method findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .registers 12
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/high16 v6, -0x8000

    .line 474
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    .line 476
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iput v7, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 477
    iput v7, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 478
    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 479
    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 480
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 481
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 482
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 483
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 484
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 486
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 488
    .local v1, current:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_23
    if-ge v2, p2, :cond_3e

    .line 489
    const/4 v3, 0x0

    .local v3, y:I
    :goto_26
    if-ge v3, p3, :cond_3b

    .line 490
    aget-object v6, p1, v2

    aget-boolean v6, v6, v3

    if-nez v6, :cond_38

    .line 491
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 492
    invoke-static {v1, p2, p3, p1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 493
    aget-object v6, p1, v2

    aput-boolean v4, v6, v3

    .line 489
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 488
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 498
    .end local v3           #y:I
    :cond_3e
    iget-object v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_49

    :goto_46
    iput-boolean v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 503
    return-object v0

    :cond_49
    move v4, v5

    .line 498
    goto :goto_46
.end method

.method findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I
    .registers 23
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 728
    if-eqz p6, :cond_15

    move-object/from16 v3, p6

    .line 729
    .local v3, bestXY:[I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    .line 730
    .local v5, cellXY:[I
    const-wide v1, 0x7fefffffffffffffL

    .line 733
    .local v1, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-nez v10, :cond_19

    .line 734
    const/4 v3, 0x0

    .line 763
    .end local v3           #bestXY:[I
    :cond_14
    :goto_14
    return-object v3

    .line 728
    .end local v1           #bestDistance:D
    .end local v5           #cellXY:[I
    :cond_15
    const/4 v10, 0x2

    new-array v3, v10, [I

    goto :goto_4

    .line 738
    .restart local v1       #bestDistance:D
    .restart local v3       #bestXY:[I
    .restart local v5       #cellXY:[I
    :cond_19
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 739
    .local v9, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_22
    if-ge v8, v9, :cond_73

    .line 740
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 743
    .local v4, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v10, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    move/from16 v0, p3

    if-ne v10, v0, :cond_3a

    iget v10, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    move/from16 v0, p4

    if-eq v10, v0, :cond_3d

    .line 739
    :cond_3a
    :goto_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 748
    :cond_3d
    iget v10, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v11, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 750
    const/4 v10, 0x0

    aget v10, v5, v10

    sub-int v10, v10, p1

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int v12, v12, p2

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 752
    .local v6, distance:D
    cmpg-double v10, v6, v1

    if-gtz v10, :cond_3a

    .line 753
    move-wide v1, v6

    .line 754
    const/4 v10, 0x0

    iget v11, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v11, v3, v10

    .line 755
    const/4 v10, 0x1

    iget v11, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v11, v3, v10

    goto :goto_3a

    .line 760
    .end local v4           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .end local v6           #distance:D
    :cond_73
    const-wide v10, 0x7fefffffffffffffL

    cmpg-double v10, v1, v10

    if-ltz v10, :cond_14

    .line 763
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 957
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 967
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getColumns()I
    .registers 2

    .prologue
    .line 1249
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    return v0
.end method

.method getCountX()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    return v0
.end method

.method getCountY()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    return v0
.end method

.method getOccupiedCells()[Z
    .registers 9

    .prologue
    .line 917
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 918
    .local v3, xCount:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 919
    .local v5, yCount:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 921
    .local v1, occupied:[[Z
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v1, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 923
    mul-int v6, v3, v5

    new-array v0, v6, [Z

    .line 924
    .local v0, flat:[Z
    const/4 v4, 0x0

    .local v4, y:I
    :goto_f
    if-ge v4, v5, :cond_23

    .line 925
    const/4 v2, 0x0

    .local v2, x:I
    :goto_12
    if-ge v2, v3, :cond_20

    .line 926
    mul-int v6, v4, v3

    add-int/2addr v6, v2

    aget-object v7, v1, v2

    aget-boolean v7, v7, v4

    aput-boolean v7, v0, v6

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 924
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 930
    .end local v2           #x:I
    :cond_23
    return-object v0
.end method

.method getRows()I
    .registers 2

    .prologue
    .line 1253
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    return v0
.end method

.method public getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .registers 7

    .prologue
    .line 344
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 345
    .local v0, info:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_22

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_22

    .line 346
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 347
    .local v3, xCount:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 349
    .local v4, yCount:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 350
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 352
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    .line 354
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 356
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    :cond_22
    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->invalidateAtLocation([I)V

    .line 1336
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 1338
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public lastDownOnOccupiedCell()Z
    .registers 2

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 264
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 801
    .local v0, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 803
    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 787
    if-eqz p1, :cond_e

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 789
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 791
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 792
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .registers 7
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 774
    if-eqz p1, :cond_21

    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 776
    .local v0, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    aget v1, p2, v2

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 777
    aget v1, p2, v3

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 778
    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 779
    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    .line 780
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 782
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 784
    .end local v0           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_21
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .parameter "ev"

    .prologue
    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 269
    .local v1, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 271
    .local v2, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v1, :cond_d3

    .line 272
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 273
    .local v7, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollX:I

    move/from16 v16, v0

    add-int v11, v15, v16

    .line 274
    .local v11, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollY:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 275
    .local v13, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v5

    .line 277
    .local v5, count:I
    const/4 v6, 0x0

    .line 278
    .local v6, found:Z
    add-int/lit8 v8, v5, -0x1

    .local v8, i:I
    :goto_2f
    if-ltz v8, :cond_6d

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 281
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_43

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v15

    if-eqz v15, :cond_cd

    .line 282
    :cond_43
    invoke-virtual {v4, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v7, v11, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v15

    if-eqz v15, :cond_cd

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 285
    .local v9, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 286
    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 287
    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 288
    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 289
    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 290
    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 291
    const/4 v6, 0x1

    .line 292
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 298
    .end local v4           #child:Landroid/view/View;
    .end local v9           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_6d
    if-nez v6, :cond_c6

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    .line 300
    .local v3, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    .line 302
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 303
    .local v12, xCount:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 305
    .local v14, yCount:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 306
    .local v10, occupied:[[Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v10, v15}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 308
    const/4 v15, 0x0

    iput-object v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 309
    const/4 v15, 0x0

    aget v15, v3, v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 310
    const/4 v15, 0x1

    aget v15, v3, v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 311
    const/4 v15, 0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 312
    const/4 v15, 0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 313
    const/4 v15, 0x0

    aget v15, v3, v15

    if-ltz v15, :cond_d1

    const/4 v15, 0x1

    aget v15, v3, v15

    if-ltz v15, :cond_d1

    const/4 v15, 0x0

    aget v15, v3, v15

    if-ge v15, v12, :cond_d1

    const/4 v15, 0x1

    aget v15, v3, v15

    if-ge v15, v14, :cond_d1

    const/4 v15, 0x0

    aget v15, v3, v15

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget v16, v3, v16

    aget-boolean v15, v15, v16

    if-nez v15, :cond_d1

    const/4 v15, 0x1

    :goto_bf
    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 325
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 327
    .end local v3           #cellXY:[I
    .end local v10           #occupied:[[Z
    .end local v12           #xCount:I
    .end local v14           #yCount:I
    :cond_c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 339
    .end local v5           #count:I
    .end local v6           #found:Z
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #i:I
    .end local v11           #x:I
    .end local v13           #y:I
    :cond_cb
    :goto_cb
    const/4 v15, 0x0

    return v15

    .line 278
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #count:I
    .restart local v6       #found:Z
    .restart local v7       #frame:Landroid/graphics/Rect;
    .restart local v8       #i:I
    .restart local v11       #x:I
    .restart local v13       #y:I
    :cond_cd
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2f

    .line 313
    .end local v4           #child:Landroid/view/View;
    .restart local v3       #cellXY:[I
    .restart local v10       #occupied:[[Z
    .restart local v12       #xCount:I
    .restart local v14       #yCount:I
    :cond_d1
    const/4 v15, 0x0

    goto :goto_bf

    .line 328
    .end local v3           #cellXY:[I
    .end local v5           #count:I
    .end local v6           #found:Z
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #i:I
    .end local v10           #occupied:[[Z
    .end local v11           #x:I
    .end local v12           #xCount:I
    .end local v13           #y:I
    .end local v14           #yCount:I
    :cond_d3
    const/4 v15, 0x1

    if-ne v1, v15, :cond_cb

    .line 329
    const/4 v15, 0x0

    iput-object v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 330
    const/4 v15, -0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 331
    const/4 v15, -0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 332
    const/4 v15, 0x0

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 333
    const/4 v15, 0x0

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 334
    const/4 v15, 0x0

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 335
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 336
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_cb
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v10

    .line 665
    .local v10, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    if-ge v11, v10, :cond_47

    .line 666
    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 667
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_44

    .line 669
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 671
    .local v12, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->x:I

    .line 672
    .local v8, childLeft:I
    iget v9, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->y:I

    .line 673
    .local v9, childTop:I
    iget v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v8

    iget v1, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 675
    iget-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_44

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    iget v3, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v4, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 665
    .end local v8           #childLeft:I
    .end local v9           #childTop:I
    .end local v12           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 691
    .end local v7           #child:Landroid/view/View;
    :cond_47
    return-void
.end method

.method protected onMeasure(II)V
    .registers 29
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 602
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 603
    .local v20, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 605
    .local v21, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 606
    .local v14, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 608
    .local v15, heightSpecSize:I
    if-eqz v20, :cond_14

    if-nez v14, :cond_1c

    .line 609
    :cond_14
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 612
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    move/from16 v22, v0

    .line 613
    .local v22, xCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    move/from16 v24, v0

    .line 614
    .local v24, yCells:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    .line 615
    .local v8, yStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowEndPadding:I

    move/from16 v25, v0

    .line 616
    .local v25, yEndPadding:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    .line 617
    .local v7, xStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnEndPadding:I

    move/from16 v23, v0

    .line 618
    .local v23, xEndPadding:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    .line 619
    .local v3, cellWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    .line 621
    .local v4, cellHeight:I
    add-int/lit8 v18, v22, -0x1

    .line 622
    .local v18, numShortGaps:I
    add-int/lit8 v17, v24, -0x1

    .line 624
    .local v17, numLongGaps:I
    sub-int v5, v15, v8

    sub-int v5, v5, v25

    mul-int v6, v4, v24

    sub-int v19, v5, v6

    .line 626
    .local v19, vSpaceLeft:I
    div-int v5, v19, v17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    .line 628
    sub-int v5, v21, v7

    sub-int v5, v5, v23

    mul-int v6, v3, v22

    sub-int v13, v5, v6

    .line 630
    .local v13, hSpaceLeft:I
    if-lez v18, :cond_a9

    .line 631
    div-int v5, v13, v18

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 636
    :goto_66
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 637
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v12

    .line 641
    .local v12, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_76
    move/from16 v0, v16

    if-ge v0, v12, :cond_af

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 643
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 644
    .local v2, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 647
    iget v5, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 648
    .local v10, childWidthMeasureSpec:I
    iget v5, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 649
    .local v11, childheightMeasureSpec:I
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 641
    add-int/lit8 v16, v16, 0x1

    goto :goto_76

    .line 633
    .end local v2           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v9           #child:Landroid/view/View;
    .end local v10           #childWidthMeasureSpec:I
    .end local v11           #childheightMeasureSpec:I
    .end local v12           #count:I
    .end local v16           #i:I
    :cond_a9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    goto :goto_66

    .line 658
    .restart local v12       #count:I
    .restart local v16       #i:I
    :cond_af
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/app/twlauncher/CellLayout;->setMeasuredDimension(II)V

    .line 659
    return-void
.end method

.method pointToCellExact(II[I)V
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 515
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    .line 516
    .local v0, hStartPadding:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    .line 518
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 519
    sub-int v4, p2, v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 521
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 522
    .local v2, xAxis:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 524
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_24

    .line 525
    aput v7, p3, v7

    .line 526
    :cond_24
    aget v4, p3, v7

    if-lt v4, v2, :cond_2c

    .line 527
    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 528
    :cond_2c
    aget v4, p3, v8

    if-gez v4, :cond_32

    .line 529
    aput v7, p3, v8

    .line 530
    :cond_32
    aget v4, p3, v8

    if-lt v4, v3, :cond_3a

    .line 531
    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 532
    :cond_3a
    return-void
.end method

.method public rectToCell(II)[I
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 815
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 816
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 817
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 820
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 821
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 823
    .local v4, spanY:I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5
.end method

.method public rectToCell2(II)[I
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 829
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 830
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 832
    .local v0, actualHeight:I
    rem-int v4, p1, v1

    if-eqz v4, :cond_2a

    div-int v4, p1, v1

    add-int/lit8 v2, v4, 0x1

    .line 833
    .local v2, spanX:I
    :goto_c
    rem-int v4, p2, v0

    if-eqz v4, :cond_2d

    div-int v4, p2, v0

    add-int/lit8 v3, v4, 0x1

    .line 835
    .local v3, spanY:I
    :goto_14
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    if-le v2, v4, :cond_1a

    .line 836
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 839
    :cond_1a
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    if-le v3, v4, :cond_20

    .line 840
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 843
    :cond_20
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4

    .line 832
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_2a
    div-int v2, p1, v1

    goto :goto_c

    .line 833
    .restart local v2       #spanX:I
    :cond_2d
    div-int v3, p2, v0

    goto :goto_14
.end method

.method public rectToCellRound(II)[I
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 849
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 850
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 852
    .local v0, actualHeight:I
    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 853
    .local v2, spanX:I
    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 855
    .local v3, spanY:I
    if-nez v2, :cond_15

    .line 856
    const/4 v2, 0x1

    .line 857
    :cond_15
    if-nez v3, :cond_18

    .line 858
    const/4 v3, 0x1

    .line 860
    :cond_18
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    if-le v2, v4, :cond_1e

    .line 861
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    .line 864
    :cond_1e
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    if-le v3, v4, :cond_24

    .line 865
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    .line 868
    :cond_24
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 252
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 253
    if-eqz p1, :cond_10

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 255
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 258
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_10
    return-void
.end method

.method public resumeUpdates()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->resumeUpdates()V

    .line 187
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    .line 696
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 697
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 698
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 700
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 702
    .end local v2           #view:Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 706
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 707
    return-void
.end method

.method public setScreenClipExtendedEdge(I)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 179
    iput p1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    .line 180
    return-void
.end method

.method spanToPixel(II[I)V
    .registers 8
    .parameter "cellW"
    .parameter "cellH"
    .parameter "result"

    .prologue
    .line 577
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 578
    const/4 v0, 0x1

    add-int/lit8 v1, p2, -0x1

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 579
    return-void
.end method

.method spanToPixelH(I)I
    .registers 5
    .parameter "cellH"

    .prologue
    .line 566
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method spanToPixelW(I)I
    .registers 5
    .parameter "cellW"

    .prologue
    .line 562
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public suspendUpdates()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->suspendUpdates()V

    .line 184
    return-void
.end method

.method public updateBadgeCounts()V
    .registers 5

    .prologue
    .line 1342
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 1343
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1344
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1345
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1d

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_1d

    .line 1347
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    .line 1348
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1342
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1351
    .end local v0           #childView:Landroid/view/View;
    :cond_20
    return-void
.end method
