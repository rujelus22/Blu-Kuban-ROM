.class public Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.source "TwDndLinearScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    }
.end annotation


# static fields
.field private static final BITMAP_DEFAULT_ALPHA:I = 0xb3

.field public static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DND_AUTO_SCROLL_BOUND_DELTA:I = 0xa

.field private static final DND_AUTO_SCROLL_DELAY_INIT:I = 0x190

.field private static final DND_AUTO_SCROLL_DELAY_RUNNABLE:I = 0x32

.field private static final DND_AUTO_SCROLL_LEFT_OR_TOP:I = 0x1

.field private static final DND_AUTO_SCROLL_MAX_AREA:I = 0x3c

.field private static final DND_AUTO_SCROLL_NONE:I = 0x0

.field private static final DND_AUTO_SCROLL_RIGHT_OR_BOTTOM:I = 0x2

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAddAnimation:Landroid/view/animation/Animation;

.field private mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

.field private mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

.field private mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

.field private mDeleteAnimation:Landroid/view/animation/Animation;

.field private mDeleteChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndTouchOffsetX:I

.field private mDndTouchOffsetY:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mIsDragging:Z

.field private mOrientation:I

.field private mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    .line 125
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;III)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    return v0
.end method

.method private checkScrollingBound(III)I
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    .line 765
    const/4 v0, 0x0

    .line 768
    .local v0, areaSize:I
    if-nez p3, :cond_1b

    .line 769
    move v1, p1

    .line 770
    .local v1, pos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getWidth()I

    move-result v0

    .line 778
    :goto_9
    div-int/lit8 v4, v0, 0x3

    int-to-float v4, v4

    const/high16 v5, 0x4270

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v2, v4

    .line 780
    .local v2, scrollBound:I
    if-ltz v1, :cond_3c

    if-ge v1, v2, :cond_3c

    .line 785
    :goto_1a
    return v3

    .line 771
    .end local v1           #pos:I
    .end local v2           #scrollBound:I
    :cond_1b
    if-ne p3, v3, :cond_23

    .line 772
    move v1, p2

    .line 773
    .restart local v1       #pos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getHeight()I

    move-result v0

    goto :goto_9

    .line 775
    .end local v1           #pos:I
    :cond_23
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INVAILED orientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 782
    .restart local v1       #pos:I
    .restart local v2       #scrollBound:I
    :cond_3c
    sub-int v3, v0, v2

    if-le v1, v3, :cond_44

    if-ge v1, v0, :cond_44

    .line 783
    const/4 v3, 0x2

    goto :goto_1a

    .line 785
    :cond_44
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private findNewPosition(II)I
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 790
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildCount()I

    move-result v0

    .line 791
    .local v0, childCount:I
    if-lez v0, :cond_59

    .line 792
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_59

    .line 793
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 795
    .local v3, r:Landroid/graphics/Rect;
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v4, :cond_26

    .line 796
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v2, v4, 0x5

    .line 797
    .local v2, offset:I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    if-ge v4, p1, :cond_3b

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    if-le v4, p1, :cond_3b

    .line 810
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_25
    :goto_25
    return v1

    .line 800
    .restart local v1       #i:I
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_26
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    .line 801
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v2, v4, 0x5

    .line 802
    .restart local v2       #offset:I
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    if-ge v4, p2, :cond_3b

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    if-gt v4, p2, :cond_25

    .line 792
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 806
    .end local v2           #offset:I
    :cond_3e
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVAILED mOrientation :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 810
    .end local v1           #i:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_59
    const/high16 v1, -0x8000

    goto :goto_25
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v1, -0x8000

    .line 128
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    .line 129
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 130
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 131
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    .line 132
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 133
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    .line 134
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    .line 136
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 137
    const/16 v1, 0xb3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    .line 138
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 141
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    .line 142
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    .line 146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    .line 147
    .local v0, customLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    .line 149
    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setOrientation(I)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    .line 153
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setFillViewport(Z)V

    .line 156
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setFadingEdgeLength(I)V

    .line 157
    return-void
.end method

.method private setDrag(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 712
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v3, :cond_5

    .line 726
    :goto_4
    return-void

    .line 716
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->findNewPosition(II)I

    move-result v2

    .line 718
    .local v2, newPos:I
    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_23

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    if-eq v2, v3, :cond_23

    .line 719
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    .line 720
    .local v0, customLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 721
    .local v1, dragView:Landroid/view/View;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeViewAt(I)V

    .line 722
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->addView(Landroid/view/View;I)V

    .line 723
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 725
    .end local v0           #customLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    .end local v1           #dragView:Landroid/view/View;
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->invalidate()V

    goto :goto_4
.end method

.method private setDrop(I)V
    .registers 6
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v3, -0x8000

    .line 732
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_9

    .line 762
    :goto_8
    return-void

    .line 736
    :cond_9
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    .line 738
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 740
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 741
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 742
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 745
    :cond_1d
    if-eq p1, v3, :cond_2b

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 746
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 748
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 751
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    .line 752
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 753
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 754
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 755
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    .line 756
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    .line 758
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    if-eqz v0, :cond_49

    .line 759
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;->OnDragAndDropStop()V

    .line 761
    :cond_49
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->invalidate()V

    goto :goto_8
.end method


# virtual methods
.method public addItem(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 645
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->addItem(Landroid/view/View;I)V

    .line 646
    return-void
.end method

.method public addItem(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "index"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->addView(Landroid/view/View;I)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_e

    .line 652
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 654
    :cond_e
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 386
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v2, :cond_23

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, draggedItemX:I
    const/4 v1, 0x0

    .line 390
    .local v1, draggedItemY:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v2, :cond_24

    .line 391
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    .line 399
    :goto_16
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_23

    .line 400
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_23
    return-void

    .line 392
    .restart local v0       #draggedItemX:I
    .restart local v1       #draggedItemY:I
    :cond_24
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 393
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    goto :goto_16

    .line 395
    :cond_33
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIEED mOrientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "view"
    .parameter "uptime"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    const/4 v0, 0x1

    .line 411
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_9
.end method

.method public getAddAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDndAnimationDuration()I
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .registers 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 507
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 509
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDragViewAlpha()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 365
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    return v0
.end method

.method public getRemoveAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getTwDndListener()Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    return-object v0
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 417
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 418
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 420
    .local v2, y:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v4, :cond_22

    .line 421
    if-eq v0, v3, :cond_18

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1d

    .line 423
    :cond_18
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrop(I)V

    .line 425
    :cond_1d
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 426
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 433
    :goto_21
    return v3

    .line 430
    :cond_22
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 431
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 433
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_21
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 369
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 370
    .local v0, prevScrollX:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    .line 371
    .local v1, prevScrollY:I
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onLayout(ZIIII)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v2, :cond_18

    .line 373
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v2, :cond_19

    .line 374
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->onDrawChildren(II)V

    .line 381
    :cond_18
    :goto_18
    return-void

    .line 375
    :cond_19
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 376
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->onDrawChildren(II)V

    goto :goto_18

    .line 378
    :cond_27
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIEED mOrientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const-wide/16 v9, 0x190

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 439
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 440
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 442
    .local v4, y:I
    packed-switch v0, :pswitch_data_76

    .line 498
    :cond_15
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_19
    :goto_19
    return v5

    .line 444
    :pswitch_1a
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_15

    .line 445
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 446
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    .line 448
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v1

    .line 451
    .local v1, curBound:I
    if-lez v1, :cond_19

    .line 452
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6, v9, v10}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 459
    .end local v1           #curBound:I
    :pswitch_34
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_15

    .line 463
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v6, :cond_65

    .line 464
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    add-int/2addr v6, v3

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    .line 470
    :goto_42
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v3, v4, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v1

    .line 471
    .restart local v1       #curBound:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v2

    .line 473
    .local v2, prevBound:I
    if-eq v1, v2, :cond_60

    .line 474
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 477
    if-lez v1, :cond_60

    .line 478
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6, v9, v10}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    :cond_60
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    .line 483
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    goto :goto_19

    .line 466
    .end local v1           #curBound:I
    .end local v2           #prevBound:I
    :cond_65
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    add-int/2addr v6, v4

    invoke-direct {p0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    goto :goto_42

    .line 488
    :pswitch_6c
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_15

    .line 490
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrop(I)V

    goto :goto_19

    .line 442
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_6c
        :pswitch_34
        :pswitch_6c
    .end packed-switch
.end method

.method public removeAllItems()V
    .registers 5

    .prologue
    .line 679
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_17

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getChildCount()I

    move-result v0

    .line 681
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_17

    .line 683
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 688
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_17
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeAllViews()V

    .line 689
    return-void
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->removeItem(Landroid/view/View;)V

    .line 658
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 661
    const-wide/16 v1, 0x0

    .line 662
    .local v1, startOffset:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    .line 663
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_12

    .line 664
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    .line 665
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 666
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 669
    :cond_12
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 675
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    return-void
.end method

.method public setAddAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    .line 630
    return-void
.end method

.method public setDndAnimationDuration(I)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setAnimationDuration(I)V

    .line 622
    return-void
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .registers 3
    .parameter "dndController"

    .prologue
    .line 612
    if-nez p1, :cond_6

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 618
    :goto_5
    return-void

    .line 617
    :cond_6
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_5
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_5

    .line 527
    :goto_4
    return-void

    .line 523
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 524
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 526
    :cond_e
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method public setDragViewAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 702
    :goto_4
    return-void

    .line 699
    :cond_5
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    .line 700
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v0, :cond_b

    .line 359
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    .line 360
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setOrientation(I)V

    .line 362
    :cond_b
    return-void
.end method

.method public setRemoveAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    .line 638
    return-void
.end method

.method public setTwDndListener(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    .line 351
    return-void
.end method

.method public startDrag(I)V
    .registers 10
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 549
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v5, :cond_6

    .line 605
    :cond_5
    :goto_5
    return-void

    .line 554
    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v5, :cond_12

    .line 555
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 558
    :cond_12
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v5, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 563
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 564
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    .line 567
    .local v4, v:Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-virtual {v4}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 570
    .local v3, oldCacheDrawing:Z
    invoke-virtual {v4, v6}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 571
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 572
    .local v1, color:I
    invoke-virtual {v4, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 573
    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    .line 574
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 575
    if-eqz v1, :cond_41

    .line 576
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 578
    :cond_41
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 580
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7b

    .line 582
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 583
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDragViewAlpha(I)V

    .line 584
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    .line 585
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    .line 586
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    .line 587
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 588
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    .line 589
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    .line 591
    :cond_7b
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 592
    invoke-virtual {v4, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 593
    invoke-virtual {v4, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 595
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    if-eqz v5, :cond_8d

    .line 596
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    invoke-interface {v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;->OnDragAndDropStart()V

    .line 599
    :cond_8d
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v2

    .line 600
    .local v2, currEdge:I
    if-lez v2, :cond_a0

    .line 602
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    const-wide/16 v6, 0x190

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    :cond_a0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->invalidate()V

    goto/16 :goto_5
.end method

.method public startDrag(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->startDrag(I)V

    .line 543
    return-void
.end method
