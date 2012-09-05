.class public Lcom/sec/android/touchwiz/widget/TwGridView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 86
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 88
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 94
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 95
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 86
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 88
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 89
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 94
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 95
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 97
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 99
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 112
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 117
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->setHorizontalSpacing(I)V

    .line 119
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 121
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->setVerticalSpacing(I)V

    .line 123
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 124
    .local v3, index:I
    if-ltz v3, :cond_3c

    .line 125
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setStretchMode(I)V

    .line 128
    :cond_3c
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 129
    .local v1, columnWidth:I
    if-lez v1, :cond_46

    .line 130
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setColumnWidth(I)V

    .line 133
    :cond_46
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 134
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNumColumns(I)V

    .line 136
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 137
    if-ltz v3, :cond_57

    .line 138
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setGravity(I)V

    .line 141
    :cond_57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 774
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 775
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 778
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 780
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 801
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 802
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 805
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 807
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2023
    .local v1, childCount:I
    if-lez v1, :cond_29

    .line 2027
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 2030
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2031
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2032
    .local v2, delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 2035
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2037
    :cond_20
    if-gez v2, :cond_23

    .line 2039
    const/4 v2, 0x0

    .line 2058
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 2059
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 2062
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_29
    return-void

    .line 2043
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2044
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2046
    .restart local v2       #delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 2049
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2052
    :cond_49
    if-lez v2, :cond_23

    .line 2054
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1510
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_c

    .line 1637
    :goto_b
    return v2

    .line 1514
    :cond_c
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_13

    .line 1515
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1518
    :cond_13
    const/4 v1, 0x0

    .line 1519
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1521
    .local v0, action:I
    if-eq v0, v3, :cond_1d

    .line 1522
    sparse-switch p1, :sswitch_data_1ac

    .line 1621
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_18c

    move v2, v3

    .line 1622
    goto :goto_b

    .line 1524
    :sswitch_21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1525
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_35
    move v1, v3

    :goto_36
    goto :goto_1d

    :cond_37
    move v1, v2

    goto :goto_36

    .line 1530
    :sswitch_39
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1531
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_4d

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4d
    move v1, v3

    :goto_4e
    goto :goto_1d

    :cond_4f
    move v1, v2

    goto :goto_4e

    .line 1536
    :sswitch_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1537
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_65

    :cond_63
    move v1, v3

    :goto_64
    goto :goto_1d

    :cond_65
    move v1, v2

    goto :goto_64

    .line 1538
    :cond_67
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1539
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    :cond_79
    move v1, v3

    :goto_7a
    goto :goto_1d

    :cond_7b
    move v1, v2

    goto :goto_7a

    .line 1544
    :sswitch_7d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1545
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_8f
    move v1, v3

    :goto_90
    goto :goto_1d

    :cond_91
    move v1, v2

    goto :goto_90

    .line 1546
    :cond_93
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a5

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_a5
    move v1, v3

    :goto_a6
    goto/16 :goto_1d

    :cond_a8
    move v1, v2

    goto :goto_a6

    .line 1553
    :sswitch_aa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1555
    if-nez v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1557
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->keyPressed()V

    .line 1558
    const/4 v1, 0x1

    goto/16 :goto_1d

    .line 1564
    :sswitch_c8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1565
    :cond_d4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 1566
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_e6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_e9

    :cond_e6
    move v1, v3

    :goto_e7
    goto/16 :goto_1d

    :cond_e9
    move v1, v2

    goto :goto_e7

    .line 1567
    :cond_eb
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_100

    :cond_fd
    move v1, v3

    :goto_fe
    goto/16 :goto_1d

    :cond_100
    move v1, v2

    goto :goto_fe

    .line 1574
    :sswitch_102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 1575
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_114

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_117

    :cond_114
    move v1, v3

    :goto_115
    goto/16 :goto_1d

    :cond_117
    move v1, v2

    goto :goto_115

    .line 1576
    :cond_119
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1577
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12b

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_12e

    :cond_12b
    move v1, v3

    :goto_12c
    goto/16 :goto_1d

    :cond_12e
    move v1, v2

    goto :goto_12c

    .line 1582
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 1583
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_142

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_145

    :cond_142
    move v1, v3

    :goto_143
    goto/16 :goto_1d

    :cond_145
    move v1, v2

    goto :goto_143

    .line 1584
    :cond_147
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_159

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_15c

    :cond_159
    move v1, v3

    :goto_15a
    goto/16 :goto_1d

    :cond_15c
    move v1, v2

    goto :goto_15a

    .line 1590
    :sswitch_15e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1591
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_170

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_173

    :cond_170
    move v1, v3

    :goto_171
    goto/16 :goto_1d

    :cond_173
    move v1, v2

    goto :goto_171

    .line 1596
    :sswitch_175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1597
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_187

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18a

    :cond_187
    move v1, v3

    :goto_188
    goto/16 :goto_1d

    :cond_18a
    move v1, v2

    goto :goto_188

    .line 1625
    :cond_18c
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_195

    move v2, v3

    .line 1626
    goto/16 :goto_b

    .line 1629
    :cond_195
    packed-switch v0, :pswitch_data_1da

    goto/16 :goto_b

    .line 1631
    :pswitch_19a
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1633
    :pswitch_1a0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1635
    :pswitch_1a6
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1522
    :sswitch_data_1ac
    .sparse-switch
        0x13 -> :sswitch_51
        0x14 -> :sswitch_7d
        0x15 -> :sswitch_21
        0x16 -> :sswitch_39
        0x17 -> :sswitch_aa
        0x3e -> :sswitch_c8
        0x42 -> :sswitch_aa
        0x5c -> :sswitch_102
        0x5d -> :sswitch_130
        0x7a -> :sswitch_15e
        0x7b -> :sswitch_175
    .end sparse-switch

    .line 1629
    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_1a0
        :pswitch_1a6
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 13
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 578
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 579
    .local v6, lastPosition:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    .line 581
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 584
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 586
    .local v4, lastBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 590
    .local v1, end:I
    sub-int v0, v1, v4

    .line 592
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 593
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 597
    .local v3, firstTop:I
    if-lez v0, :cond_60

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    .line 598
    :cond_39
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 600
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 604
    :cond_46
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 605
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_60

    .line 608
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_54

    const/4 p1, 0x1

    .end local p1
    :cond_54
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 611
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 615
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_60
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 618
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_61

    if-lez p3, :cond_61

    .line 620
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 623
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 626
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 629
    .local v6, start:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 633
    .local v0, end:I
    sub-int v7, v2, v6

    .line 634
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 635
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 636
    .local v3, lastBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 640
    .local v5, lastPosition:I
    if-lez v7, :cond_61

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_61

    .line 641
    :cond_39
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 643
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 647
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 648
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_61

    .line 651
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_54

    const/4 p1, 0x1

    .end local p1
    :cond_54
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 654
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 658
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_61
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10
    .parameter "availableSpace"

    .prologue
    const/4 v7, 0x1

    .line 927
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 928
    .local v2, requestedHorizontalSpacing:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 929
    .local v4, stretchMode:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 930
    .local v1, requestedColumnWidth:I
    const/4 v0, 0x0

    .line 932
    .local v0, didNotInitiallyFit:Z
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 933
    if-lez v1, :cond_32

    .line 935
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 946
    :goto_16
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-gtz v5, :cond_1c

    .line 947
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 950
    :cond_1c
    packed-switch v4, :pswitch_data_74

    .line 958
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 961
    .local v3, spaceLeftOver:I
    if-gez v3, :cond_2e

    .line 962
    const/4 v0, 0x1

    .line 965
    :cond_2e
    packed-switch v4, :pswitch_data_7a

    .line 997
    .end local v3           #spaceLeftOver:I
    :goto_31
    return v0

    .line 939
    :cond_32
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_16

    .line 943
    :cond_36
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_16

    .line 953
    :pswitch_3b
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 954
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 968
    .restart local v3       #spaceLeftOver:I
    :pswitch_40
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 969
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 974
    :pswitch_4a
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 975
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_5a

    .line 976
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 979
    :cond_5a
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 985
    :pswitch_5f
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 986
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_6f

    .line 987
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 990
    :cond_6f
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 950
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch

    .line 965
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_40
        :pswitch_5f
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 8
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 277
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int v0, v3, v4

    .line 278
    .local v0, end:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 279
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 282
    :cond_14
    :goto_14
    if-ge p2, v0, :cond_30

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v3, :cond_30

    .line 283
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_22

    .line 285
    move-object v1, v2

    .line 290
    :cond_22
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 292
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 293
    goto :goto_14

    .line 295
    .end local v2           #temp:Landroid/view/View;
    :cond_30
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 409
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 410
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 412
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 413
    .local v0, invertedPosition:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 672
    .local v2, fadingEdgeLength:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 673
    .local v9, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 674
    .local v4, numColumns:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 677
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 679
    .local v6, rowEnd:I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_4f

    .line 680
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 691
    .local v7, rowStart:I
    :goto_13
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 692
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 695
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_69

    move v12, v6

    :goto_24
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 697
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 699
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 700
    .local v5, referenceView:Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 701
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 703
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_6b

    .line 704
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 705
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 706
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 714
    :goto_4e
    return-object v8

    .line 682
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_4f
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 684
    .local v3, invertedSelection:I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 685
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_13

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_69
    move v12, v7

    .line 695
    goto :goto_24

    .line 708
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_6b
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 709
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 710
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto :goto_4e
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .parameter "nextTop"

    .prologue
    .line 399
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 400
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 401
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 404
    :cond_1d
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 405
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 18
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 420
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 421
    .local v4, numColumns:I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 424
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 426
    .local v7, rowEnd:I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_4a

    .line 427
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 435
    .local v8, rowStart:I
    :goto_11
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 436
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 438
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_64

    move v13, v7

    :goto_20
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 439
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 441
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 443
    .local v6, referenceView:Landroid/view/View;
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_66

    .line 444
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 445
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToBottom(I)V

    .line 446
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 447
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 459
    :goto_49
    return-object v9

    .line 429
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_4a
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 431
    .local v3, invertedSelection:I
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 432
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_11

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_64
    move v13, v8

    .line 438
    goto :goto_20

    .line 449
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_66
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 451
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 452
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 453
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 454
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToTop(I)V

    .line 455
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 456
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto :goto_49
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "top"

    .prologue
    .line 517
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 520
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 522
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1d

    .line 523
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 531
    .local v5, motionRowStart:I
    :goto_b
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_37

    move v10, v4

    :goto_10
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 534
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 536
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 538
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_39

    .line 539
    const/4 v8, 0x0

    .line 572
    .end local v8           #temp:Landroid/view/View;
    :cond_1c
    :goto_1c
    return-object v8

    .line 525
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1d
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 527
    .local v3, invertedSelection:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 528
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_b

    .end local v3           #invertedSelection:I
    :cond_37
    move v10, v5

    .line 531
    goto :goto_10

    .line 542
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_39
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 547
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_67

    .line 548
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 549
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 550
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 552
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 553
    .local v2, childCount:I
    if-lez v2, :cond_61

    .line 554
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 567
    :cond_61
    :goto_61
    if-nez v8, :cond_1c

    .line 569
    if-eqz v0, :cond_8a

    move-object v8, v0

    .line 570
    goto :goto_1c

    .line 557
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_67
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 558
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 559
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 561
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 562
    .restart local v2       #childCount:I
    if-lez v2, :cond_61

    .line 563
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_61

    :cond_8a
    move-object v8, v1

    .line 572
    goto :goto_1c
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, selectedView:Landroid/view/View;
    const/4 v0, 0x0

    .line 365
    .local v0, end:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f

    .line 366
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 369
    :cond_f
    :goto_f
    if-le p2, v0, :cond_2a

    if-ltz p1, :cond_2a

    .line 371
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 372
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1a

    .line 373
    move-object v1, v2

    .line 376
    :cond_1a
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 378
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 380
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 381
    goto :goto_f

    .line 383
    .end local v2           #temp:Landroid/view/View;
    :cond_2a
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_36

    .line 384
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 387
    :cond_36
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 729
    move v0, p1

    .line 730
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 731
    sub-int/2addr v0, p2

    .line 733
    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 746
    move v0, p1

    .line 747
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_4

    .line 748
    add-int/2addr v0, p2

    .line 750
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1868
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1869
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1874
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_28

    .line 1875
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1876
    .local v3, rowStart:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1882
    .local v2, rowEnd:I
    :goto_1d
    sparse-switch p2, :sswitch_data_5e

    .line 1903
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1878
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_28
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1879
    .restart local v2       #rowEnd:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_1d

    .line 1886
    :sswitch_3d
    if-ne p1, v3, :cond_40

    .line 1901
    :cond_3f
    :goto_3f
    return v4

    :cond_40
    move v4, v5

    .line 1886
    goto :goto_3f

    .line 1889
    :sswitch_42
    if-eqz v3, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1892
    :sswitch_46
    if-eq p1, v2, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1895
    :sswitch_4a
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1898
    :sswitch_50
    if-ne p1, v3, :cond_54

    if-eqz v3, :cond_3f

    :cond_54
    move v4, v5

    goto :goto_3f

    .line 1901
    :sswitch_56
    if-ne p1, v2, :cond_5c

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    :cond_5c
    move v4, v5

    goto :goto_3f

    .line 1882
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_50
        0x11 -> :sswitch_46
        0x21 -> :sswitch_4a
        0x42 -> :sswitch_3d
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1314
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1315
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1318
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1330
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_19
    return-object v9

    .line 1325
    .end local v9           #child:Landroid/view/View;
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1328
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1330
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_19
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 19
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 299
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 300
    .local v8, columnWidth:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 303
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4d

    move v0, v10

    :goto_e
    add-int v4, v2, v0

    .line 306
    .local v4, nextLeft:I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_4f

    .line 307
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 317
    .local v12, last:I
    :cond_1e
    :goto_1e
    const/4 v14, 0x0

    .line 319
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v9

    .line 320
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 321
    .local v11, inClick:Z
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 323
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 324
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2c
    if-ge v1, v12, :cond_71

    .line 326
    if-ne v1, v13, :cond_6c

    const/4 v5, 0x1

    .line 329
    .local v5, selected:Z
    :goto_31
    if-eqz p3, :cond_6e

    const/4 v6, -0x1

    .local v6, where:I
    :goto_34
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 330
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 332
    add-int/2addr v4, v8

    .line 333
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_43

    .line 334
    add-int/2addr v4, v10

    .line 337
    :cond_43
    if-eqz v5, :cond_4a

    if-nez v9, :cond_49

    if-eqz v11, :cond_4a

    .line 338
    :cond_49
    move-object v14, v7

    .line 324
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 303
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4d
    const/4 v0, 0x0

    goto :goto_e

    .line 309
    .restart local v4       #nextLeft:I
    :cond_4f
    add-int/lit8 v12, p1, 0x1

    .line 310
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 312
    sub-int v0, v12, p1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-ge v0, v2, :cond_1e

    .line 313
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1e

    .line 326
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6c
    const/4 v5, 0x0

    goto :goto_31

    .line 329
    .restart local v5       #selected:Z
    :cond_6e
    sub-int v6, v1, p1

    goto :goto_34

    .line 342
    .end local v5           #selected:Z
    :cond_71
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 344
    if-eqz v14, :cond_79

    .line 345
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 348
    :cond_79
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 26
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 844
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 845
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 846
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 850
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 852
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9d

    .line 853
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 855
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 867
    .local v14, rowStart:I
    :goto_29
    sub-int v12, v14, v9

    .line 869
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 870
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 874
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 879
    if-lez v12, :cond_f5

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_e5

    const/4 v8, 0x0

    .line 887
    .local v8, oldBottom:I
    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f1

    move/from16 v19, v13

    :goto_54
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 888
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 890
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 913
    .end local v8           #oldBottom:I
    :goto_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_168

    .line 914
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 915
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 916
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 923
    :goto_9c
    return-object v15

    .line 857
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 859
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 860
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 862
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 863
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 864
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_29

    .line 884
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_4a

    .restart local v8       #oldBottom:I
    :cond_f1
    move/from16 v19, v14

    .line 887
    goto/16 :goto_54

    .line 891
    .end local v8           #oldBottom:I
    :cond_f5
    if-gez v12, :cond_135

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_127

    const/4 v10, 0x0

    .line 898
    .local v10, oldTop:I
    :goto_100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_132

    move/from16 v19, v13

    :goto_10a
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 899
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 901
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_6f

    .line 895
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_100

    .restart local v10       #oldTop:I
    :cond_132
    move/from16 v19, v14

    .line 898
    goto :goto_10a

    .line 906
    .end local v10           #oldTop:I
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_15a

    const/4 v10, 0x0

    .line 909
    .restart local v10       #oldTop:I
    :goto_13e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_165

    move/from16 v19, v13

    :goto_148
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 910
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_6f

    .line 906
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_13e

    .restart local v10       #oldTop:I
    :cond_165
    move/from16 v19, v14

    .line 909
    goto :goto_148

    .line 918
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_168
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 919
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 920
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_9c
.end method

.method private pinToBottom(I)V
    .registers 7
    .parameter "childrenBottom"

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 474
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_1c

    .line 475
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 476
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 477
    .local v2, offset:I
    if-lez v2, :cond_1c

    .line 478
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 481
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 5
    .parameter "childrenTop"

    .prologue
    .line 463
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v2, :cond_14

    .line 464
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 465
    .local v1, top:I
    sub-int v0, p1, v1

    .line 466
    .local v0, offset:I
    if-gez v0, :cond_14

    .line 467
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 470
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 34
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1351
    if-eqz p6, :cond_154

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_154

    const/4 v14, 0x1

    .line 1352
    .local v14, isSelected:Z
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_157

    const/16 v20, 0x1

    .line 1353
    .local v20, updateChildSelected:Z
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1354
    .local v16, mode:I
    if-lez v16, :cond_15b

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_15b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_15b

    const/4 v13, 0x1

    .line 1356
    .local v13, isPressed:Z
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_15e

    const/16 v19, 0x1

    .line 1358
    .local v19, updateChildPressed:Z
    :goto_3a
    if-eqz p7, :cond_44

    if-nez v20, :cond_44

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_162

    :cond_44
    const/16 v17, 0x1

    .line 1362
    .local v17, needToMeasure:Z
    :goto_46
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1363
    .local v18, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v18, :cond_61

    .line 1364
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v18           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1367
    .restart local v18       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1369
    if-eqz p7, :cond_166

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_166

    .line 1370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    :goto_8a
    if-eqz v20, :cond_96

    .line 1377
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1378
    if-eqz v14, :cond_96

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestFocus()Z

    .line 1383
    :cond_96
    if-eqz v19, :cond_9d

    .line 1384
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1387
    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ca

    .line 1388
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_17f

    move-object/from16 v22, p1

    .line 1389
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1396
    :cond_ca
    :goto_ca
    if-eqz v17, :cond_1ac

    .line 1397
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1400
    .local v7, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1402
    .local v11, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1407
    .end local v7           #childHeightSpec:I
    .end local v11           #childWidthSpec:I
    :goto_fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1408
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1411
    .local v12, h:I
    if-eqz p4, :cond_1b1

    move/from16 v10, p3

    .line 1413
    .local v10, childTop:I
    :goto_109
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getResolvedLayoutDirection()I

    move-result v15

    .line 1414
    .local v15, layoutDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1415
    .local v5, absoluteGravity:I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_1f0

    .line 1426
    :pswitch_11e
    move/from16 v8, p5

    .line 1430
    .local v8, childLeft:I
    :goto_120
    if-eqz v17, :cond_1d3

    .line 1431
    add-int v9, v8, v21

    .line 1432
    .local v9, childRight:I
    add-int v6, v10, v12

    .line 1433
    .local v6, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1439
    .end local v6           #childBottom:I
    .end local v9           #childRight:I
    :goto_12b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13c

    .line 1440
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1443
    :cond_13c
    if-eqz p7, :cond_153

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_153

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1447
    :cond_153
    return-void

    .line 1351
    .end local v5           #absoluteGravity:I
    .end local v8           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v15           #layoutDirection:I
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_154
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1352
    .restart local v14       #isSelected:Z
    :cond_157
    const/16 v20, 0x0

    goto/16 :goto_13

    .line 1354
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_15b
    const/4 v13, 0x0

    goto/16 :goto_30

    .line 1356
    .restart local v13       #isPressed:Z
    :cond_15e
    const/16 v19, 0x0

    goto/16 :goto_3a

    .line 1358
    .restart local v19       #updateChildPressed:Z
    :cond_162
    const/16 v17, 0x0

    goto/16 :goto_46

    .line 1372
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_166
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1373
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_8a

    .line 1390
    :cond_17f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_ca

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_ca

    .line 1404
    :cond_1ac
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_fd

    .line 1411
    .restart local v12       #h:I
    .restart local v21       #w:I
    :cond_1b1
    sub-int v10, p3, v12

    goto/16 :goto_109

    .line 1417
    .restart local v5       #absoluteGravity:I
    .restart local v10       #childTop:I
    .restart local v15       #layoutDirection:I
    :pswitch_1b5
    move/from16 v8, p5

    .line 1418
    .restart local v8       #childLeft:I
    goto/16 :goto_120

    .line 1420
    .end local v8           #childLeft:I
    :pswitch_1b9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1421
    .restart local v8       #childLeft:I
    goto/16 :goto_120

    .line 1423
    .end local v8           #childLeft:I
    :pswitch_1c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1424
    .restart local v8       #childLeft:I
    goto/16 :goto_120

    .line 1435
    :cond_1d3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_12b

    .line 1415
    nop

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_1b9
        :pswitch_11e
        :pswitch_1b5
        :pswitch_11e
        :pswitch_1c7
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 12
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1703
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1704
    .local v4, selectedPosition:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1709
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1711
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_30

    .line 1712
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1713
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1720
    .local v0, endOfRowPos:I
    :goto_1b
    sparse-switch p1, :sswitch_data_90

    .line 1751
    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2a

    .line 1752
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1753
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1756
    :cond_2a
    if-eqz v2, :cond_2f

    .line 1757
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1760
    :cond_2f
    return v2

    .line 1715
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_30
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1716
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1717
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_1b

    .line 1722
    .end local v1           #invertedSelection:I
    :sswitch_48
    if-lez v5, :cond_1e

    .line 1723
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1724
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1725
    const/4 v2, 0x1

    goto :goto_1e

    .line 1729
    :sswitch_57
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1e

    .line 1730
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1731
    add-int v6, v4, v3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1732
    const/4 v2, 0x1

    goto :goto_1e

    .line 1736
    :sswitch_6e
    if-le v4, v5, :cond_1e

    .line 1737
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1738
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1739
    const/4 v2, 0x1

    goto :goto_1e

    .line 1743
    :sswitch_7d
    if-ge v4, v0, :cond_1e

    .line 1744
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1745
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1746
    const/4 v2, 0x1

    goto :goto_1e

    .line 1720
    :sswitch_data_90
    .sparse-switch
        0x11 -> :sswitch_6e
        0x21 -> :sswitch_48
        0x42 -> :sswitch_7d
        0x82 -> :sswitch_57
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1092
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1095
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_d

    .line 1096
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1097
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1100
    :cond_d
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1101
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1102
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1103
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1105
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_2c

    .line 1106
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1107
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1114
    :goto_2b
    return-void

    .line 1109
    :cond_2c
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1111
    .local v1, invertedIndex:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1112
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2b
.end method

.method protected computeVerticalScrollExtent()I
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 2066
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2067
    .local v1, count:I
    if-lez v1, :cond_6a

    .line 2068
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2069
    .local v4, numColumns:I
    add-int v11, v1, v4

    add-int/lit8 v11, v11, -0x1

    div-int v7, v11, v4

    .line 2071
    .local v7, rowCount:I
    mul-int/lit8 v2, v7, 0x64

    .line 2073
    .local v2, extent:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2074
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2075
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2076
    .local v3, height:I
    if-lez v3, :cond_23

    .line 2077
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 2080
    :cond_23
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2081
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2082
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2083
    if-lez v3, :cond_3d

    .line 2084
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 2087
    :cond_3d
    move v6, v2

    .line 2089
    .local v6, retVal:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_65

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v2, v10, :cond_65

    .line 2091
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 2093
    .local v5, ratio:F
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .line 2097
    .end local v5           #ratio:F
    :cond_65
    const/4 v10, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2099
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v6           #retVal:I
    .end local v7           #rowCount:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :cond_6a
    return v10
.end method

.method protected computeVerticalScrollOffset()I
    .registers 15

    .prologue
    .line 2104
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v11, :cond_64

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_64

    .line 2105
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2106
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2107
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2108
    .local v1, height:I
    const/4 v4, 0x0

    .line 2109
    .local v4, retVal:I
    if-lez v1, :cond_42

    .line 2110
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2111
    .local v3, numColumns:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    div-int v10, v11, v3

    .line 2112
    .local v10, whichRow:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x1

    div-int v5, v11, v3

    .line 2115
    .local v5, rowCount:I
    mul-int/lit8 v11, v10, 0x64

    mul-int/lit8 v12, v8, 0x64

    div-int/2addr v12, v1

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    int-to-float v13, v5

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2119
    .end local v3           #numColumns:I
    .end local v5           #rowCount:I
    .end local v10           #whichRow:I
    :cond_42
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_63

    .line 2120
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v6, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2121
    .local v6, savedBounceExtent:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollExtent()I

    move-result v7

    .line 2122
    .local v7, shrinkedScrollExtent:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v12, 0x0

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2123
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollExtent()I

    move-result v2

    .line 2124
    .local v2, normalScrollExtent:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v6, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2126
    sub-int v0, v2, v7

    .line 2128
    .local v0, delta:I
    add-int/2addr v4, v0

    .line 2133
    .end local v0           #delta:I
    .end local v1           #height:I
    .end local v2           #normalScrollExtent:I
    .end local v4           #retVal:I
    .end local v6           #savedBounceExtent:F
    .end local v7           #shrinkedScrollExtent:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :cond_63
    :goto_63
    return v4

    :cond_64
    const/4 v4, 0x0

    goto :goto_63
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .prologue
    .line 2139
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2140
    .local v0, numColumns:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2141
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2142
    .local v1, result:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_28

    .line 2144
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2146
    :cond_28
    return v1
.end method

.method fillGap(Z)V
    .registers 11
    .parameter "down"

    .prologue
    const/16 v8, 0x22

    .line 227
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 228
    .local v1, numColumns:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 230
    .local v6, verticalSpacing:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 232
    .local v0, count:I
    if-eqz p1, :cond_3d

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, paddingTop:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_17

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingTop()I

    move-result v3

    .line 237
    :cond_17
    if-lez v0, :cond_3b

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 239
    .local v5, startOffset:I
    :goto_25
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 240
    .local v4, position:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_30

    .line 241
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 243
    :cond_30
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 261
    .end local v3           #paddingTop:I
    :goto_3a
    return-void

    .end local v4           #position:I
    .end local v5           #startOffset:I
    .restart local v3       #paddingTop:I
    :cond_3b
    move v5, v3

    .line 237
    goto :goto_25

    .line 246
    .end local v3           #paddingTop:I
    :cond_3d
    const/4 v2, 0x0

    .line 247
    .local v2, paddingBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_48

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingBottom()I

    move-result v2

    .line 250
    :cond_48
    if-lez v0, :cond_67

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 252
    .restart local v5       #startOffset:I
    :goto_55
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 253
    .restart local v4       #position:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6e

    .line 254
    sub-int/2addr v4, v1

    .line 258
    :goto_5c
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_3a

    .line 250
    .end local v4           #position:I
    .end local v5           #startOffset:I
    :cond_67
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_55

    .line 256
    .restart local v4       #position:I
    .restart local v5       #startOffset:I
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c
.end method

.method findMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 486
    .local v0, childCount:I
    if-lez v0, :cond_33

    .line 488
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 489
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 490
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_33

    .line 491
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 492
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 503
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1c
    return v3

    .line 490
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    .line 496
    .end local v1           #i:I
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_21
    if-ltz v1, :cond_33

    .line 497
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 498
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1c

    .line 496
    :cond_31
    sub-int/2addr v1, v2

    goto :goto_21

    .line 503
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_33
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method fullScroll(I)Z
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1674
    const/4 v0, 0x0

    .line 1675
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    .line 1676
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1677
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1678
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1679
    const/4 v0, 0x1

    .line 1687
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1691
    :cond_15
    return v0

    .line 1680
    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    .line 1681
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1682
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1683
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1684
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2013
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    .prologue
    .line 1972
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 22

    .prologue
    .line 1118
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1119
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_e

    .line 1120
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1124
    :cond_e
    :try_start_e
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2d

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_1c6

    .line 1287
    if-nez v3, :cond_2c

    .line 1288
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1291
    :cond_2c
    :goto_2c
    return-void

    .line 1134
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1135
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1137
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v5

    .line 1139
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1142
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1143
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1144
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1147
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_304

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1167
    .local v12, index:I
    if-ltz v12, :cond_7d

    if-ge v12, v5, :cond_7d

    .line 1168
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1172
    :cond_7d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1175
    .end local v12           #index:I
    :cond_87
    :goto_87
    :pswitch_87
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1176
    .local v8, dataChanged:Z
    if-eqz v8, :cond_90

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->handleDataChanged()V

    .line 1182
    :cond_90
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_d9

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_9e
    .catchall {:try_start_2d .. :try_end_9e} :catchall_1c6

    .line 1287
    if-nez v3, :cond_2c

    .line 1288
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto :goto_2c

    .line 1149
    .end local v8           #dataChanged:Z
    :pswitch_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1150
    .restart local v12       #index:I
    if-ltz v12, :cond_87

    if-ge v12, v5, :cond_87

    .line 1151
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_87

    .line 1160
    .end local v12           #index:I
    :pswitch_c2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_87

    .line 1161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_87

    .line 1188
    .restart local v8       #dataChanged:Z
    :cond_d9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1192
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1193
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1195
    .local v17, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-eqz v8, :cond_109

    .line 1196
    const/4 v11, 0x0

    .local v11, i:I
    :goto_f3
    if-ge v11, v5, :cond_10e

    .line 1197
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1196
    add-int/lit8 v11, v11, 0x1

    goto :goto_f3

    .line 1200
    .end local v11           #i:I
    :cond_109
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1205
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->detachAllViewsFromParent()V

    .line 1207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_314

    .line 1235
    if-nez v5, :cond_24d

    .line 1236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_223

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_132

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_21f

    :cond_132
    const/16 v19, -0x1

    :goto_134
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1239
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1261
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_141
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1263
    if-eqz v18, :cond_2b3

    .line 1264
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    .line 1265
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1274
    :cond_15b
    :goto_15b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1275
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1276
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->updateScrollIndicators()V

    .line 1281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_18e

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 1285
    :cond_18e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_191
    .catchall {:try_start_a9 .. :try_end_191} :catchall_1c6

    .line 1287
    if-nez v3, :cond_2c

    .line 1288
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_2c

    .line 1209
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_19d
    if-eqz v14, :cond_1ac

    .line 1210
    :try_start_19f
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_141

    .line 1212
    .end local v18           #sel:Landroid/view/View;
    :cond_1ac
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1214
    .restart local v18       #sel:Landroid/view/View;
    goto :goto_141

    .line 1216
    .end local v18           #sel:Landroid/view/View;
    :pswitch_1b3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1217
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1218
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V
    :try_end_1c4
    .catchall {:try_start_19f .. :try_end_1c4} :catchall_1c6

    goto/16 :goto_141

    .line 1287
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_1c6
    move-exception v19

    if-nez v3, :cond_1d1

    .line 1288
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_1d1
    throw v19

    .line 1221
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    :pswitch_1d2
    :try_start_1d2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1222
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_141

    .line 1225
    .end local v18           #sel:Landroid/view/View;
    :pswitch_1e7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1226
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .line 1228
    .end local v18           #sel:Landroid/view/View;
    :pswitch_1ff
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1229
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .line 1232
    .end local v18           #sel:Landroid/view/View;
    :pswitch_217
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1233
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .line 1237
    .end local v18           #sel:Landroid/view/View;
    :cond_21f
    const/16 v19, 0x0

    goto/16 :goto_134

    .line 1241
    :cond_223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1242
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_239

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_24a

    :cond_239
    const/16 v19, -0x1

    :goto_23b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1244
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1245
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .end local v18           #sel:Landroid/view/View;
    :cond_24a
    move/from16 v19, v13

    .line 1242
    goto :goto_23b

    .line 1247
    .end local v13           #last:I
    :cond_24d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_27e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_27e

    .line 1248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_279

    .end local v7           #childrenTop:I
    :goto_26f
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_279
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_26f

    .line 1250
    :cond_27e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2a7

    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_2a2

    .end local v7           #childrenTop:I
    :goto_298
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_2a2
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_298

    .line 1254
    :cond_2a7
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_141

    .line 1266
    .end local v7           #childrenTop:I
    :cond_2b3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_2f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2f0

    .line 1267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1268
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_15b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_15b

    .line 1270
    .end local v4           #child:Landroid/view/View;
    :cond_2f0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_301
    .catchall {:try_start_1d2 .. :try_end_301} :catchall_1c6

    goto/16 :goto_15b

    .line 1147
    nop

    :pswitch_data_304
    .packed-switch 0x1
        :pswitch_87
        :pswitch_a9
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_c2
    .end packed-switch

    .line 1207
    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_1b3
        :pswitch_19d
        :pswitch_1d2
        :pswitch_1e7
        :pswitch_1ff
        :pswitch_217
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 211
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 212
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move p1, v1

    .line 219
    .end local p1
    :cond_c
    :goto_c
    return p1

    .line 216
    .restart local p1
    :cond_d
    if-ltz p1, :cond_13

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lt p1, v2, :cond_c

    :cond_13
    move p1, v1

    .line 217
    goto :goto_c
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1823
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1825
    const/4 v1, -0x1

    .line 1826
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1827
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1831
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1832
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1833
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1834
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_37

    .line 1836
    invoke-direct {p0, v3, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1834
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1840
    :cond_24
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1841
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1842
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1843
    invoke-static {p3, v6, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1845
    .local v2, distance:I
    if-ge v2, v4, :cond_21

    .line 1846
    move v4, v2

    .line 1847
    move v1, v3

    goto :goto_21

    .line 1852
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_37
    if-ltz v1, :cond_40

    .line 1853
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelection(I)V

    .line 1857
    :goto_3f
    return-void

    .line 1855
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    goto :goto_3f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1496
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1501
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1003
    invoke-super/range {p0 .. p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1005
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1006
    .local v18, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1007
    .local v12, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1008
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1010
    .local v13, heightSize:I
    if-nez v18, :cond_45

    .line 1011
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_1fa

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1016
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1019
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1020
    .local v8, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->determineColumns(I)Z

    move-result v11

    .line 1022
    .local v11, didNotInitiallyFit:Z
    const/4 v5, 0x0

    .line 1023
    .local v5, childHeight:I
    const/4 v7, 0x0

    .line 1025
    .local v7, childState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_216

    const/16 v20, 0x0

    :goto_73
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1026
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1027
    .local v10, count:I
    if-lez v10, :cond_129

    .line 1028
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 1030
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1031
    .local v17, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v17, :cond_b1

    .line 1032
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v17           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1034
    .restart local v17       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1037
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1039
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1041
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1043
    .local v9, childWidthSpec:I
    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1045
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1046
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_129

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1053
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v17           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_129
    if-nez v12, :cond_14f

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1058
    :cond_14f
    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v12, v0, :cond_18e

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1061
    .local v16, ourSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1062
    .local v15, numColumns:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_174
    if-ge v14, v10, :cond_18c

    .line 1063
    add-int v16, v16, v5

    .line 1064
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_186

    .line 1065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1067
    :cond_186
    move/from16 v0, v16

    if-lt v0, v13, :cond_222

    .line 1068
    move/from16 v16, v13

    .line 1072
    :cond_18c
    move/from16 v13, v16

    .line 1075
    .end local v14           #i:I
    .end local v15           #numColumns:I
    .end local v16           #ourSize:I
    :cond_18e
    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1ec

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ec

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1079
    .restart local v16       #ourSize:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_1e8

    if-eqz v11, :cond_1ec

    .line 1080
    :cond_1e8
    const/high16 v20, 0x100

    or-int v19, v19, v20

    .line 1084
    .end local v16           #ourSize:I
    :cond_1ec
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->setMeasuredDimension(II)V

    .line 1085
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 1086
    return-void

    .line 1014
    .end local v5           #childHeight:I
    .end local v7           #childState:I
    .end local v8           #childWidth:I
    .end local v10           #count:I
    .end local v11           #didNotInitiallyFit:Z
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_3f

    .line 1025
    .restart local v5       #childHeight:I
    .restart local v7       #childState:I
    .restart local v8       #childWidth:I
    .restart local v11       #didNotInitiallyFit:Z
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_73

    .line 1062
    .restart local v10       #count:I
    .restart local v14       #i:I
    .restart local v15       #numColumns:I
    .restart local v16       #ourSize:I
    :cond_222
    add-int/2addr v14, v15

    goto/16 :goto_174
.end method

.method pageScroll(I)Z
    .registers 7
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1648
    const/4 v0, -0x1

    .line 1650
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1e

    .line 1651
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1656
    :cond_11
    :goto_11
    if-ltz v0, :cond_1d

    .line 1657
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1658
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1659
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1660
    const/4 v1, 0x1

    .line 1663
    :cond_1d
    return v1

    .line 1652
    :cond_1e
    const/16 v2, 0x82

    if-ne p1, v2, :cond_11

    .line 1653
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method sequenceScroll(I)Z
    .registers 15
    .parameter "direction"

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1768
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1769
    .local v5, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1770
    .local v4, numColumns:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1774
    .local v0, count:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_32

    .line 1775
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1776
    .local v7, startOfRow:I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1783
    .local v1, endOfRow:I
    :goto_1b
    const/4 v3, 0x0

    .line 1784
    .local v3, moved:Z
    const/4 v6, 0x0

    .line 1785
    .local v6, showScroll:Z
    packed-switch p1, :pswitch_data_68

    .line 1809
    :cond_20
    :goto_20
    if-eqz v3, :cond_2c

    .line 1810
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1811
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1814
    :cond_2c
    if-eqz v6, :cond_31

    .line 1815
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1818
    :cond_31
    return v3

    .line 1778
    .end local v1           #endOfRow:I
    .end local v3           #moved:Z
    .end local v6           #showScroll:Z
    .end local v7           #startOfRow:I
    :cond_32
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1779
    .local v2, invertedSelection:I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1780
    .restart local v1       #endOfRow:I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #startOfRow:I
    goto :goto_1b

    .line 1787
    .end local v2           #invertedSelection:I
    .restart local v3       #moved:Z
    .restart local v6       #showScroll:Z
    :pswitch_46
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_20

    .line 1789
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1790
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1791
    const/4 v3, 0x1

    .line 1793
    if-ne v5, v1, :cond_56

    move v6, v8

    :goto_55
    goto :goto_20

    :cond_56
    move v6, v9

    goto :goto_55

    .line 1798
    :pswitch_58
    if-lez v5, :cond_20

    .line 1800
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1801
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1802
    const/4 v3, 0x1

    .line 1804
    if-ne v5, v7, :cond_66

    move v6, v8

    :goto_65
    goto :goto_20

    :cond_66
    move v6, v9

    goto :goto_65

    .line 1785
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_46
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 7
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 167
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 171
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 172
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 174
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 175
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 178
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_71

    .line 181
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 182
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 183
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 186
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 187
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 192
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_6c

    .line 193
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 197
    .local v0, position:I
    :goto_5f
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 206
    .end local v0           #position:I
    :goto_68
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 207
    return-void

    .line 195
    :cond_6c
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_5f

    .line 201
    .end local v0           #position:I
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    goto :goto_68
.end method

.method public setColumnWidth(I)V
    .registers 3
    .parameter "columnWidth"

    .prologue
    .line 1983
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 1984
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 1985
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1987
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 1917
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1918
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 1919
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1921
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .parameter "horizontalSpacing"

    .prologue
    .line 1933
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 1934
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 1935
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1937
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .parameter "numColumns"

    .prologue
    .line 1997
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 1998
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    .line 1999
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2001
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1460
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1464
    :goto_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1465
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 1466
    return-void

    .line 1462
    :cond_10
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 9
    .parameter "position"

    .prologue
    .line 1475
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1477
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1478
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1480
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2c

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1482
    .local v0, next:I
    :goto_14
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2f

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1485
    .local v2, previous:I
    :goto_1e
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1486
    .local v1, nextRow:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1488
    .local v3, previousRow:I
    if-eq v1, v3, :cond_2b

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1492
    :cond_2b
    return-void

    .line 1480
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_2c
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    goto :goto_14

    .restart local v0       #next:I
    :cond_2f
    move v2, v4

    .line 1482
    goto :goto_1e
.end method

.method public setStretchMode(I)V
    .registers 3
    .parameter "stretchMode"

    .prologue
    .line 1965
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 1966
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 1967
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1969
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .parameter "verticalSpacing"

    .prologue
    .line 1950
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 1951
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 1952
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1954
    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 826
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 827
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 816
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 817
    return-void
.end method
