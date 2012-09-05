.class public Lcom/sec/android/touchwiz/widget/TwDndListView;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.source "TwDndListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final BITMAP_ALPHA:I = 0xb3

.field private static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0xa

.field private static final DND_BASELINE_BOTTOM:I = 0x1

.field private static final DND_BASELINE_CENTER:I = 0x0

.field private static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field private static final DND_TOUCH_STATUS_NON:I = 0x0

.field private static final DND_TOUCH_STATUS_START:I = 0x1


# instance fields
.field private final mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

.field private mDndMode:Z

.field private mDndSwitchBaseLine:I

.field private mDndTouchMode:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePadding:Landroid/graphics/Rect;

.field private mDragGrabHandlePosGravity:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mListViewHeight:I

.field private mPrevTouchY:I

.field private mTempEvent:Landroid/view/MotionEvent;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    .line 126
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    .line 127
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 129
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 130
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 132
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 133
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 134
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    .line 135
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    .line 139
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 143
    const/16 v0, 0xb3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 145
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 147
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 151
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchSlop:I

    .line 152
    return-void
.end method

.method private checkStartDnd(III)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 276
    const/4 v0, 0x0

    .line 279
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_7
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 6
    .parameter "canvas"
    .parameter "childRect"
    .parameter "isDraggedItem"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 675
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 678
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1f

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->PRESSED_STATE_SET:[I

    :goto_16
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 679
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 681
    :cond_1e
    return-void

    .line 678
    :cond_1f
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->EMPTY_STATE_SET:[I

    goto :goto_16
.end method

.method private findMovedItemIndex(I)I
    .registers 9
    .parameter "y"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v0

    .line 610
    .local v0, childCount:I
    if-lez v0, :cond_42

    .line 611
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_3c

    .line 612
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 613
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 615
    const/4 v4, 0x0

    .line 616
    .local v4, yPosAdjust:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 617
    .local v2, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_2a

    instance-of v5, v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_2a

    .line 618
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v2           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v4

    .line 621
    :cond_2a
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v4

    if-gt p1, v5, :cond_39

    .line 622
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    .line 627
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    .end local v4           #yPosAdjust:I
    :goto_38
    return v5

    .line 611
    .restart local v1       #i:I
    .restart local v3       #v:Landroid/view/View;
    .restart local v4       #yPosAdjust:I
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 625
    .end local v3           #v:Landroid/view/View;
    .end local v4           #yPosAdjust:I
    :cond_3c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v0

    goto :goto_38

    .line 627
    .end local v1           #i:I
    :cond_42
    const/4 v5, -0x1

    goto :goto_38
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .parameter "childRect"
    .parameter "outGrabHandleRect"

    .prologue
    .line 661
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_39

    .line 662
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 663
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 664
    .local v0, drawableHeight:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 665
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 666
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 667
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 669
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 671
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :cond_39
    return-void
.end method

.method private recalculateOffset(II)V
    .registers 11
    .parameter "prevPos"
    .parameter "newPos"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDividerHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 633
    .local v0, HEIGHT:I
    if-le p2, p1, :cond_35

    .line 634
    move v2, p1

    .local v2, i:I
    :goto_11
    if-ge v2, p2, :cond_5b

    .line 635
    const/4 v3, 0x0

    .line 636
    .local v3, t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 637
    .local v1, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_2f

    instance-of v4, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v4, :cond_2f

    move-object v3, v1

    .line 638
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 642
    :goto_23
    neg-int v4, v0

    invoke-virtual {v3, v6, v6, v6, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 643
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 640
    :cond_2f
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v3           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-direct {v3, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .restart local v3       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    goto :goto_23

    .line 645
    .end local v1           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v2           #i:I
    .end local v3           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_35
    if-ge p2, p1, :cond_5b

    .line 646
    move v2, p2

    .restart local v2       #i:I
    :goto_38
    if-ge v2, p1, :cond_5b

    .line 647
    const/4 v3, 0x0

    .line 648
    .restart local v3       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 649
    .restart local v1       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_55

    instance-of v4, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v4, :cond_55

    move-object v3, v1

    .line 650
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 654
    :goto_4a
    invoke-virtual {v3, v6, v6, v6, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 655
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 652
    :cond_55
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v3           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-direct {v3, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .restart local v3       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    goto :goto_4a

    .line 658
    .end local v1           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v2           #i:I
    .end local v3           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_5b
    return-void
.end method


# virtual methods
.method protected DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .registers 9
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 701
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 702
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 703
    .local v1, pos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 704
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 705
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 708
    .end local v0           #index:I
    .end local v1           #pos:I
    :cond_25
    return-void
.end method

.method protected checkDndGrabHandle(III)Z
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    .line 284
    const/4 v2, 0x1

    .line 300
    :goto_5
    return v2

    .line 287
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 289
    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 293
    if-eqz v0, :cond_26

    .line 295
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_5

    .line 300
    :cond_26
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 712
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 714
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 715
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4f

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingLeft()I

    move-result v0

    .line 717
    .local v0, draggedItemX:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int v1, v2, v3

    .line 719
    .local v1, draggedItemY:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 721
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 722
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 723
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 724
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 726
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 730
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_4f
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 686
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 687
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 689
    .local v1, pos:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v1, v2, :cond_16

    .line 690
    const/4 v2, 0x0

    .line 693
    .end local v0           #index:I
    .end local v1           #pos:I
    :goto_15
    return v2

    :cond_16
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_15
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 390
    :goto_8
    return v0

    :cond_9
    const/high16 v0, -0x8000

    goto :goto_8
.end method

.method public getDragGrabHandlePaddingLeft()I
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 354
    :goto_8
    return v0

    :cond_9
    const/high16 v0, -0x8000

    goto :goto_8
.end method

.method public getDragGrabHandlePaddingRight()I
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 378
    :goto_8
    return v0

    :cond_9
    const/high16 v0, -0x8000

    goto :goto_8
.end method

.method public getDragGrabHandlePaddingTop()I
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 366
    :goto_8
    return v0

    :cond_9
    const/high16 v0, -0x8000

    goto :goto_8
.end method

.method public getDragView()Landroid/view/View;
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 204
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isDndMode()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 406
    .local v0, action:I
    if-nez v0, :cond_f

    .line 407
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    .line 409
    :cond_f
    if-nez v0, :cond_d8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_d8

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 414
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndListView;->pointToPosition(II)I

    move-result v1

    .line 415
    .local v1, itemPosition:I
    if-ne v1, v6, :cond_3a

    .line 416
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 477
    .end local v1           #itemPosition:I
    :cond_39
    :goto_39
    return v3

    .line 419
    .restart local v1       #itemPosition:I
    :cond_3a
    if-ltz v1, :cond_be

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_be

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 423
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    if-nez v4, :cond_61

    .line 424
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_39

    .line 427
    :cond_61
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 428
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 429
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 431
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 432
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    const/high16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 434
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7e

    .line 435
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    :cond_7e
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 440
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragViewAlpha(I)V

    .line 442
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 444
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a8

    .line 445
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 446
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    .line 449
    :cond_a8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 451
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 454
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchSlop:I

    .line 456
    .local v2, touchSlop:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v4, :cond_39

    .line 458
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v4}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStart()V

    goto/16 :goto_39

    .line 465
    .end local v2           #touchSlop:I
    :cond_be
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 466
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 467
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 468
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 469
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_d4

    .line 470
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 473
    :cond_d4
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 477
    .end local v1           #itemPosition:I
    :cond_d8
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_39
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    if-nez v9, :cond_f

    .line 483
    :cond_a
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 605
    :goto_e
    return v9

    .line 486
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 488
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_ed

    .line 489
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 494
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 496
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 498
    .local v4, prevDestPosition:I
    const/4 v2, 0x0

    .line 500
    .local v2, delta:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    if-nez v9, :cond_cb

    .line 501
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-ge v9, v10, :cond_9f

    .line 503
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 506
    .local v1, bottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 507
    .local v7, temp:Landroid/view/View;
    if-eqz v7, :cond_65

    .line 508
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v1, v9

    .line 511
    :cond_65
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-le v9, v1, :cond_6f

    .line 512
    const/high16 v9, -0x3ee0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 532
    .end local v1           #bottom:I
    .end local v7           #temp:Landroid/view/View;
    :cond_6f
    :goto_6f
    const/4 v3, 0x0

    .line 535
    .local v3, needToInvalidate:Z
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-eq v4, v9, :cond_7f

    .line 536
    const/4 v3, 0x1

    .line 538
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-direct {p0, v4, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->recalculateOffset(II)V

    .line 539
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 542
    :cond_7f
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_84

    .line 543
    const/4 v3, 0x1

    .line 546
    :cond_84
    if-eqz v2, :cond_97

    .line 547
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 548
    .local v5, savedBlockExcessScroll:Z
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 550
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 551
    .local v6, savedEnableBounce:Z
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 565
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->trackMotionScroll(II)Z

    .line 566
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 568
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 571
    .end local v5           #savedBlockExcessScroll:Z
    .end local v6           #savedEnableBounce:Z
    :cond_97
    if-eqz v3, :cond_9c

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 605
    .end local v2           #delta:I
    .end local v3           #needToInvalidate:Z
    .end local v4           #prevDestPosition:I
    :cond_9c
    :goto_9c
    const/4 v9, 0x1

    goto/16 :goto_e

    .line 515
    .restart local v2       #delta:I
    .restart local v4       #prevDestPosition:I
    :cond_9f
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingTop()I

    move-result v10

    add-int v8, v9, v10

    .line 518
    .local v8, top:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 519
    .restart local v7       #temp:Landroid/view/View;
    if-eqz v7, :cond_c0

    .line 520
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 523
    :cond_c0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-ge v9, v8, :cond_6f

    .line 524
    const/high16 v9, 0x4120

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v2, v9

    goto :goto_6f

    .line 526
    .end local v7           #temp:Landroid/view/View;
    .end local v8           #top:I
    :cond_cb
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e5

    .line 527
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    goto :goto_6f

    .line 529
    :cond_e5
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Current DndSwitchArea is not accepable"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 575
    .end local v2           #delta:I
    .end local v4           #prevDestPosition:I
    :cond_ed
    const/4 v9, 0x1

    if-eq v0, v9, :cond_f3

    const/4 v9, 0x3

    if-ne v0, v9, :cond_9c

    .line 576
    :cond_f3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_115

    .line 578
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-eq v9, v10, :cond_110

    .line 579
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 580
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 583
    :cond_110
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 586
    :cond_115
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 587
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 588
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 590
    const/high16 v9, -0x8000

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 591
    const/high16 v9, -0x8000

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 593
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 594
    const/high16 v9, -0x8000

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 595
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_13a

    .line 596
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 597
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 600
    :cond_13a
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v9, :cond_143

    .line 601
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v9}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    .line 603
    :cond_143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    goto/16 :goto_9c
.end method

.method public setDndBaseLine(I)V
    .registers 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 187
    if-nez p1, :cond_7

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    .line 194
    :cond_6
    :goto_6
    return-void

    .line 189
    :cond_7
    if-ne p1, v0, :cond_6

    .line 190
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    goto :goto_6
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .registers 3
    .parameter "dndController"

    .prologue
    .line 242
    if-nez p1, :cond_6

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 252
    :goto_5
    return-void

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 248
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_5

    .line 250
    :cond_15
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_5
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 259
    if-nez p1, :cond_6

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    .line 264
    :goto_5
    return-void

    .line 262
    :cond_6
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    goto :goto_5
.end method

.method public setDndMode(Z)V
    .registers 4
    .parameter "dndMode"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v0, :cond_c

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_c
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    .line 172
    if-eqz p1, :cond_14

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 178
    :goto_13
    return-void

    .line 175
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    goto :goto_13
.end method

.method public setDragGrabHandleDrawable(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .registers 6
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 339
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 340
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 341
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 342
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 344
    :cond_14
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .registers 2
    .parameter "gravity"

    .prologue
    .line 327
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    .line 328
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    :goto_6
    return-void

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 218
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    :cond_10
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_6
.end method

.method public setDragViewAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_9

    .line 234
    :cond_8
    :goto_8
    return-void

    .line 231
    :cond_9
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 232
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8
.end method

.method public startDrag()Z
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_6

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method
