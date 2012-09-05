.class public Lcom/sec/android/touchwiz/widget/TwListView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListView$1;,
        Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;,
        Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;,
        Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field protected mShowAnimationOnDataChange:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 156
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 112
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 130
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 132
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    .line 135
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 141
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;-><init>(Lcom/sec/android/touchwiz/widget/TwListView$1;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    .line 162
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 166
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_3b

    .line 167
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    :cond_3b
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_44

    .line 175
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_44
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 180
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4e

    .line 181
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_4e
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 186
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_58

    .line 187
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_58
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 193
    .local v2, dividerHeight:I
    if-eqz v2, :cond_62

    .line 194
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    .line 197
    :cond_62
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    .line 198
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    .line 203
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3023
    add-int/lit8 v2, p2, -0x1

    .line 3024
    .local v2, abovePosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3025
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3026
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3028
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3032
    add-int/lit8 v2, p2, 0x1

    .line 3033
    .local v2, belowPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3034
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3035
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3036
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 221
    .local v1, childCount:I
    if-lez v1, :cond_29

    .line 224
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 227
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 229
    .local v2, delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 232
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 234
    :cond_20
    if-gez v2, :cond_23

    .line 237
    const/4 v2, 0x0

    .line 255
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 256
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 259
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_29
    return-void

    .line 241
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 244
    .restart local v2       #delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 247
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 250
    :cond_49
    if-lez v2, :cond_23

    .line 251
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private amountToScroll(II)I
    .registers 15
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2638
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2639
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2641
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    .line 2643
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_72

    .line 2644
    add-int/lit8 v3, v7, -0x1

    .line 2645
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1f

    .line 2646
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2649
    :cond_1f
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2650
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2652
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2653
    .local v1, goalBottom:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_33

    .line 2654
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2657
    :cond_33
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3b

    .line 2659
    const/4 v10, 0x0

    .line 2707
    .end local v1           #goalBottom:I
    :goto_3a
    return v10

    .line 2662
    .restart local v1       #goalBottom:I
    :cond_3b
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4c

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4c

    .line 2666
    const/4 v10, 0x0

    goto :goto_3a

    .line 2669
    :cond_4c
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2671
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_69

    .line 2673
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2674
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2677
    .end local v6           #max:I
    :cond_69
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3a

    .line 2679
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_72
    const/4 v3, 0x0

    .line 2680
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7a

    .line 2681
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2683
    :cond_7a
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2684
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2685
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2686
    .local v2, goalTop:I
    if-lez v8, :cond_8a

    .line 2687
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2689
    :cond_8a
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_92

    .line 2691
    const/4 v10, 0x0

    goto :goto_3a

    .line 2694
    :cond_92
    const/4 v10, -0x1

    if-eq p2, v10, :cond_a2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_a2

    .line 2698
    const/4 v10, 0x0

    goto :goto_3a

    .line 2701
    :cond_a2
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2702
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_bb

    .line 2704
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2705
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2707
    .end local v6           #max:I
    :cond_bb
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3a
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 8
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2898
    const/4 v0, 0x0

    .line 2899
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2900
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2901
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2b

    .line 2902
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 2903
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2904
    if-lez p3, :cond_2a

    .line 2905
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2917
    :cond_2a
    :goto_2a
    return v0

    .line 2909
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2910
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_2a

    .line 2911
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2912
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_2a

    .line 2913
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2a
.end method

.method private arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    .registers 19
    .parameter "direction"

    .prologue
    .line 2797
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2799
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_4a

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 2800
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2801
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2823
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_1c
    if-eqz v7, :cond_113

    .line 2824
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2828
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_d9

    .line 2829
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2830
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_d9

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_40

    if-lt v10, v9, :cond_48

    :cond_40
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_d9

    if-le v10, v9, :cond_d9

    .line 2832
    :cond_48
    const/4 v14, 0x0

    .line 2855
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_49
    return-object v14

    .line 2803
    .end local v7           #newFocus:Landroid/view/View;
    :cond_4a
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_94

    .line 2804
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v14, :cond_8e

    const/4 v12, 0x1

    .line 2805
    .local v12, topFadingEdgeShowing:Z
    :goto_57
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_90

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_63
    add-int v5, v15, v14

    .line 2807
    .local v5, listTop:I
    if-eqz v11, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2810
    .local v13, ySearchPoint:I
    :goto_71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2820
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_7d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_1c

    .line 2804
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_8e
    const/4 v12, 0x0

    goto :goto_57

    .line 2805
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_90
    const/4 v14, 0x0

    goto :goto_63

    .restart local v5       #listTop:I
    :cond_92
    move v13, v5

    .line 2807
    goto :goto_71

    .line 2812
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_94
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_d3

    const/4 v2, 0x1

    .line 2813
    .local v2, bottomFadingEdgeShowing:Z
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_d5

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_b8
    sub-int v4, v15, v14

    .line 2815
    .local v4, listBottom:I
    if-eqz v11, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2818
    .restart local v13       #ySearchPoint:I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7d

    .line 2812
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_d3
    const/4 v2, 0x0

    goto :goto_a6

    .line 2813
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_d5
    const/4 v14, 0x0

    goto :goto_b8

    .restart local v4       #listBottom:I
    :cond_d7
    move v13, v4

    .line 2815
    goto :goto_c6

    .line 2836
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_d9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2838
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v6

    .line 2839
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_f9

    .line 2841
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->populate(II)V

    .line 2843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 2844
    :cond_f9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_113

    .line 2850
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2851
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->populate(II)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 2855
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_113
    const/4 v14, 0x0

    goto/16 :goto_49
.end method

.method private arrowScrollImpl(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2414
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_a

    .line 2492
    :cond_9
    :goto_9
    return v9

    .line 2418
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2419
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 2421
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2422
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->amountToScroll(II)I

    move-result v0

    .line 2425
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_aa

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2427
    .local v1, focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v1, :cond_2a

    .line 2428
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2429
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2432
    :cond_2a
    if-eqz v1, :cond_ad

    move v3, v8

    .line 2433
    .local v3, needToRedraw:Z
    :goto_2d
    if-eq v4, v10, :cond_53

    .line 2434
    if-eqz v1, :cond_b0

    move v7, v8

    :goto_32
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2436
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 2437
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 2438
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2439
    move v5, v4

    .line 2440
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_4f

    if-nez v1, :cond_4f

    .line 2443
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2444
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_4f

    .line 2445
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2448
    .end local v2           #focused:Landroid/view/View;
    :cond_4f
    const/4 v3, 0x1

    .line 2449
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    .line 2452
    :cond_53
    if-lez v0, :cond_5d

    .line 2453
    const/16 v7, 0x21

    if-ne p1, v7, :cond_b2

    .end local v0           #amountToScroll:I
    :goto_59
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->scrollListItemsBy(I)V

    .line 2454
    const/4 v3, 0x1

    .line 2459
    :cond_5d
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7e

    if-nez v1, :cond_7e

    if-eqz v6, :cond_7e

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 2461
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2462
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7e

    .line 2463
    :cond_7b
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2469
    .end local v2           #focused:Landroid/view/View;
    :cond_7e
    if-ne v4, v10, :cond_8e

    if-eqz v6, :cond_8e

    invoke-direct {p0, v6, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 2471
    const/4 v6, 0x0

    .line 2472
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hideSelector()V

    .line 2477
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 2480
    :cond_8e
    if-eqz v3, :cond_9

    .line 2481
    if-eqz v6, :cond_9b

    .line 2482
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 2483
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 2485
    :cond_9b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a4

    .line 2486
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 2488
    :cond_a4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2489
    goto/16 :goto_9

    .line 2425
    .end local v1           #focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_aa
    const/4 v1, 0x0

    goto/16 :goto_20

    .restart local v1       #focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    :cond_ad
    move v3, v9

    .line 2432
    goto/16 :goto_2d

    .restart local v3       #needToRedraw:Z
    :cond_b0
    move v7, v9

    .line 2434
    goto :goto_32

    .line 2453
    :cond_b2
    neg-int v0, v0

    goto :goto_59
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 532
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 534
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 535
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 536
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 537
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 538
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 534
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 542
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1f
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2098
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-nez v5, :cond_11

    :cond_f
    move v4, v3

    .line 2249
    :cond_10
    :goto_10
    return v4

    .line 2102
    :cond_11
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_18

    .line 2103
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 2106
    :cond_18
    const/4 v2, 0x0

    .line 2107
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2109
    .local v0, action:I
    if-eq v0, v4, :cond_22

    .line 2110
    sparse-switch p1, :sswitch_data_19e

    .line 2230
    :cond_22
    :goto_22
    if-nez v2, :cond_10

    .line 2234
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2238
    packed-switch v0, :pswitch_data_1cc

    move v4, v3

    .line 2249
    goto :goto_10

    .line 2112
    :sswitch_2f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2113
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2114
    if-nez v2, :cond_22

    move v1, p2

    .line 2115
    .end local p2
    .local v1, count:I
    :goto_3c
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_22

    .line 2116
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2117
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_3c

    .line 2123
    .end local v1           #count:I
    .restart local p2
    :cond_49
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2124
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_5b
    move v2, v4

    :goto_5c
    goto :goto_22

    :cond_5d
    move v2, v3

    goto :goto_5c

    .line 2129
    :sswitch_5f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 2130
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2131
    if-nez v2, :cond_22

    move v1, p2

    .line 2132
    .end local p2
    .restart local v1       #count:I
    :goto_6c
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_22

    .line 2133
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2134
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_6c

    .line 2140
    .end local v1           #count:I
    .restart local p2
    :cond_79
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_8b

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    :cond_8b
    move v2, v4

    :goto_8c
    goto :goto_22

    :cond_8d
    move v2, v3

    goto :goto_8c

    .line 2146
    :sswitch_8f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2147
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_22

    .line 2152
    :sswitch_9c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2153
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_22

    .line 2159
    :sswitch_aa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2160
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2161
    if-nez v2, :cond_22

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_22

    .line 2162
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->keyPressed()V

    .line 2163
    const/4 v2, 0x1

    goto/16 :goto_22

    .line 2169
    :sswitch_c8
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_d4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_22

    .line 2170
    :cond_d4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 2171
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_e6

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_ea

    :cond_e6
    move v2, v4

    .line 2175
    :cond_e7
    :goto_e7
    const/4 v2, 0x1

    goto/16 :goto_22

    :cond_ea
    move v2, v3

    .line 2171
    goto :goto_e7

    .line 2172
    :cond_ec
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 2173
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_fe

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_100

    :cond_fe
    move v2, v4

    :goto_ff
    goto :goto_e7

    :cond_100
    move v2, v3

    goto :goto_ff

    .line 2180
    :sswitch_102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_119

    .line 2181
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_114

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_117

    :cond_114
    move v2, v4

    :goto_115
    goto/16 :goto_22

    :cond_117
    move v2, v3

    goto :goto_115

    .line 2182
    :cond_119
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2183
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12b

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12e

    :cond_12b
    move v2, v4

    :goto_12c
    goto/16 :goto_22

    :cond_12e
    move v2, v3

    goto :goto_12c

    .line 2188
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_147

    .line 2189
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_142

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_145

    :cond_142
    move v2, v4

    :goto_143
    goto/16 :goto_22

    :cond_145
    move v2, v3

    goto :goto_143

    .line 2190
    :cond_147
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2191
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_159

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_15c

    :cond_159
    move v2, v4

    :goto_15a
    goto/16 :goto_22

    :cond_15c
    move v2, v3

    goto :goto_15a

    .line 2196
    :sswitch_15e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2197
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_170

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_173

    :cond_170
    move v2, v4

    :goto_171
    goto/16 :goto_22

    :cond_173
    move v2, v3

    goto :goto_171

    .line 2202
    :sswitch_175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2203
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_187

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18a

    :cond_187
    move v2, v4

    :goto_188
    goto/16 :goto_22

    :cond_18a
    move v2, v3

    goto :goto_188

    .line 2240
    :pswitch_18c
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_10

    .line 2243
    :pswitch_192
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_10

    .line 2246
    :pswitch_198
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_10

    .line 2110
    :sswitch_data_19e
    .sparse-switch
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_5f
        0x15 -> :sswitch_8f
        0x16 -> :sswitch_9c
        0x17 -> :sswitch_aa
        0x3e -> :sswitch_c8
        0x42 -> :sswitch_aa
        0x5c -> :sswitch_102
        0x5d -> :sswitch_130
        0x7a -> :sswitch_15e
        0x7b -> :sswitch_175
    .end sparse-switch

    .line 2238
    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_18c
        :pswitch_192
        :pswitch_198
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .parameter "childCount"

    .prologue
    .line 1386
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1387
    .local v6, lastPosition:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_64

    if-lez p1, :cond_64

    .line 1390
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1393
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1396
    .local v4, lastBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1401
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1402
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1403
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1409
    .local v3, firstTop:I
    if-lez v0, :cond_64

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_64

    :cond_39
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldCorrectTooHigh()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1411
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_4c

    .line 1413
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1416
    :cond_4c
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 1417
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_64

    .line 1421
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 1423
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1428
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_64
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .parameter "descendant"

    .prologue
    .line 2928
    const/4 v0, 0x0

    .line 2929
    .local v0, distance:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2930
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2931
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2932
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2b

    .line 2933
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2937
    :cond_2a
    :goto_2a
    return v0

    .line 2934
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_2a

    .line 2935
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_2a
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 797
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 798
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 799
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 800
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 801
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 807
    :goto_1d
    return-void

    .line 803
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 804
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 805
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    goto :goto_1d
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 12
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 766
    sub-int v6, p2, p1

    .line 768
    .local v6, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->reconcileSelectedPosition()I

    move-result v1

    .line 770
    .local v1, position:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 771
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 773
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 774
    .local v8, selHeight:I
    if-gt v8, v6, :cond_21

    .line 775
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 778
    :cond_21
    invoke-direct {p0, v7, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 780
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_30

    .line 781
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 786
    :goto_2f
    return-object v7

    .line 783
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_2f
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 821
    .local v8, fadingEdgeLength:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 825
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 827
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 830
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 833
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_47

    .line 836
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 840
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 841
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 844
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 860
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_38
    :goto_38
    invoke-direct {p0, v10, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 862
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_61

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 868
    :goto_46
    return-object v10

    .line 845
    :cond_47
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_38

    .line 848
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 852
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 853
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 856
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_38

    .line 865
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_61
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_46
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 4
    .parameter "nextTop"

    .prologue
    .line 747
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 748
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 749
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 752
    :cond_1d
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1332
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3e

    move v5, v3

    .line 1333
    .local v5, tempIsSelected:Z
    :goto_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1335
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1340
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1341
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_40

    .line 1342
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1345
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1346
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1347
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v8

    .line 1348
    .local v8, childCount:I
    if-lez v8, :cond_3b

    .line 1349
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 1363
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_63

    .line 1368
    .end local v10           #temp:Landroid/view/View;
    :goto_3d
    return-object v10

    .line 1332
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_3e
    const/4 v5, 0x0

    goto :goto_6

    .line 1352
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_40
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1355
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1356
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1357
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v8

    .line 1358
    .restart local v8       #childCount:I
    if-lez v8, :cond_3b

    .line 1359
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_3b

    .line 1365
    :cond_63
    if-eqz v6, :cond_67

    move-object v10, v6

    .line 1366
    goto :goto_3d

    :cond_67
    move-object v10, v7

    .line 1368
    goto :goto_3d
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2621
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .registers 6
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 881
    move v0, p1

    .line 882
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 883
    sub-int/2addr v0, p2

    .line 885
    :cond_8
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 898
    move v0, p1

    .line 899
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_4

    .line 900
    add-int/2addr v0, p2

    .line 902
    :cond_4
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    .line 2346
    const/16 v5, 0x11

    if-eq p1, v5, :cond_10

    const/16 v5, 0x42

    if-eq p1, v5, :cond_10

    .line 2347
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2351
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v3

    .line 2352
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_6d

    if-lez v3, :cond_6d

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6d

    .line 2353
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2354
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_6d

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6d

    .line 2357
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2358
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2360
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_58

    .line 2363
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2364
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2365
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2366
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2367
    const/4 v5, 0x1

    .line 2383
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_57
    return v5

    .line 2376
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_58
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2378
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_6d

    .line 2379
    invoke-direct {p0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_57

    .line 2383
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_6d
    const/4 v5, 0x0

    goto :goto_57
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 15
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2512
    const/4 v8, -0x1

    if-ne p3, v8, :cond_b

    .line 2513
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2523
    :cond_b
    const/4 v5, 0x0

    .line 2524
    .local v5, topSelected:Z
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2525
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2526
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_41

    .line 2527
    move v7, v2

    .line 2528
    .local v7, topViewIndex:I
    move v1, v4

    .line 2529
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2530
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2531
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2539
    :goto_22
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v3

    .line 2542
    .local v3, numChildren:I
    if-eqz v6, :cond_33

    .line 2543
    if-nez p4, :cond_49

    if-eqz v5, :cond_49

    const/4 v8, 0x1

    :goto_2d
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2544
    invoke-direct {p0, v6, v7, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2548
    :cond_33
    if-eqz v0, :cond_40

    .line 2549
    if-nez p4, :cond_4b

    if-nez v5, :cond_4b

    const/4 v8, 0x1

    :goto_3a
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2550
    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2552
    :cond_40
    return-void

    .line 2533
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_41
    move v7, v4

    .line 2534
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2535
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2536
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_22

    .line 2543
    .restart local v3       #numChildren:I
    :cond_49
    const/4 v8, 0x0

    goto :goto_2d

    .line 2549
    :cond_4b
    const/4 v8, 0x0

    goto :goto_3a
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1763
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1764
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1765
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_19

    .line 1766
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_16

    move v5, v6

    .line 1777
    :goto_15
    return v5

    .line 1765
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1770
    :cond_19
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1771
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1772
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_31

    .line 1773
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2e

    move v5, v6

    .line 1774
    goto :goto_15

    .line 1772
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1777
    :cond_31
    const/4 v5, 0x0

    goto :goto_15
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2878
    if-ne p1, p2, :cond_4

    .line 2883
    :cond_3
    :goto_3
    return v1

    .line 2882
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2883
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2746
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2747
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_3e

    .line 2748
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_19

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2750
    .local v5, startPos:I
    :goto_f
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_1b

    move v4, v6

    .line 2784
    :cond_18
    :goto_18
    return v4

    .end local v5           #startPos:I
    :cond_19
    move v5, v1

    .line 2748
    goto :goto_f

    .line 2753
    .restart local v5       #startPos:I
    :cond_1b
    if-ge v5, v1, :cond_1e

    .line 2754
    move v5, v1

    .line 2757
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getLastVisiblePosition()I

    move-result v3

    .line 2758
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2759
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_27
    if-gt v4, v3, :cond_80

    .line 2760
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2759
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2766
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_3e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2767
    .local v2, last:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_59

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2769
    .restart local v5       #startPos:I
    :goto_4d
    if-ltz v5, :cond_57

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_61

    :cond_57
    move v4, v6

    .line 2770
    goto :goto_18

    .line 2767
    .end local v5           #startPos:I
    :cond_59
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_4d

    .line 2772
    .restart local v5       #startPos:I
    :cond_61
    if-le v5, v2, :cond_64

    .line 2773
    move v5, v2

    .line 2776
    :cond_64
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2777
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_69
    if-lt v4, v1, :cond_80

    .line 2778
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7d

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2777
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_69

    .end local v2           #last:I
    :cond_80
    move v4, v6

    .line 2784
    goto :goto_18
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1797
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 1799
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1800
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1808
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1821
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_17
    return-object v8

    .line 1816
    .end local v8           #child:Landroid/view/View;
    :cond_18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1819
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

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1821
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_17
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2563
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2564
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureItem(Landroid/view/View;)V

    .line 2565
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_24

    .line 2567
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2570
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2571
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_18
    if-ge v1, p3, :cond_24

    .line 2572
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2571
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2575
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_24
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 10
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2583
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2584
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_e

    .line 2585
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2589
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2591
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2593
    .local v2, lpHeight:I
    if-lez v2, :cond_2d

    .line 2594
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2598
    .local v0, childHeightSpec:I
    :goto_29
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2599
    return-void

    .line 2596
    .end local v0           #childHeightSpec:I
    :cond_2d
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_29
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .registers 11
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1173
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1174
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v3, :cond_13

    .line 1175
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1177
    .restart local v3       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    :cond_13
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1180
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1182
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1184
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1186
    .local v2, lpHeight:I
    if-lez v2, :cond_3b

    .line 1187
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1191
    .local v0, childHeightSpec:I
    :goto_37
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1192
    return-void

    .line 1189
    .end local v0           #childHeightSpec:I
    :cond_3b
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_37
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 25
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 948
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 952
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 954
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 957
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_bd

    .line 970
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 973
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 976
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 981
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_6f

    .line 985
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 989
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 992
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 993
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 994
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 997
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 999
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1003
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_99

    .line 1004
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1006
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1081
    .end local v9           #dividerHeight:I
    :goto_98
    return-object v14

    .line 1008
    .restart local v9       #dividerHeight:I
    :cond_99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1009
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1010
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    goto :goto_98

    .line 1012
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_bd
    if-gez p3, :cond_111

    .line 1024
    if-eqz p2, :cond_fd

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1037
    .restart local v14       #sel:Landroid/view/View;
    :goto_d4
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_f7

    .line 1040
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1044
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1047
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1048
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1049
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1052
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1056
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_f7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_98

    .line 1032
    .end local v14           #sel:Landroid/view/View;
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_d4

    .line 1059
    .end local v14           #sel:Landroid/view/View;
    :cond_111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1064
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1067
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_139

    .line 1070
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1071
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_139

    .line 1073
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1078
    .end local v12           #newBottom:I
    :cond_139
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_98
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 7
    .parameter "newFocus"

    .prologue
    .line 2863
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v2

    .line 2864
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_18

    .line 2865
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2866
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2867
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2864
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2870
    .end local v0           #child:Landroid/view/View;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 9
    .parameter "child"

    .prologue
    .line 2608
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2609
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2610
    .local v4, h:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2611
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2612
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2613
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2614
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2615
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 338
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 339
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    .line 340
    .local v1, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iget-object v3, v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 341
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    .end local v1           #info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_14
    return-void

    .line 338
    .restart local v1       #info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private scrollListItemsBy(I)V
    .registers 14
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 2947
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 2949
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2950
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2951
    .local v6, listTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 2953
    .local v8, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-gez p1, :cond_76

    .line 2957
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    .line 2958
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2959
    .local v1, last:Landroid/view/View;
    :goto_20
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_38

    .line 2960
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 2961
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_38

    .line 2962
    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2963
    add-int/lit8 v7, v7, 0x1

    .line 2967
    goto :goto_20

    .line 2972
    .end local v3           #lastVisiblePosition:I
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_47

    .line 2973
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 2977
    :cond_47
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2978
    .local v0, first:Landroid/view/View;
    :goto_4b
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_d2

    .line 2979
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 2980
    .local v4, layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 2981
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2982
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2986
    :goto_67
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2987
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_4b

    .line 2984
    :cond_72
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_67

    .line 2991
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_76
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2994
    .restart local v0       #first:Landroid/view/View;
    :goto_7a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_91

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v9, :cond_91

    .line 2995
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2996
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_7a

    .line 3001
    :cond_91
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_a0

    .line 3002
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 3005
    :cond_a0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3006
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3009
    .restart local v1       #last:Landroid/view/View;
    :goto_aa
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_d2

    .line 3010
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 3011
    .restart local v4       #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 3012
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3013
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3017
    :goto_c7
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3018
    goto :goto_aa

    .line 3015
    :cond_ce
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_c7

    .line 3020
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_d2
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 30
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1840
    if-eqz p6, :cond_151

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_151

    const/4 v11, 0x1

    .line 1841
    .local v11, isSelected:Z
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_154

    const/16 v17, 0x1

    .line 1842
    .local v17, updateChildSelected:Z
    :goto_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 1843
    .local v13, mode:I
    if-lez v13, :cond_158

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_158

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_158

    const/4 v10, 0x1

    .line 1845
    .local v10, isPressed:Z
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_15b

    const/16 v16, 0x1

    .line 1846
    .local v16, updateChildPressed:Z
    :goto_36
    if-eqz p7, :cond_40

    if-nez v17, :cond_40

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_15f

    :cond_40
    const/4 v14, 0x1

    .line 1851
    .local v14, needToMeasure:Z
    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1852
    .local v15, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v15, :cond_5a

    .line 1853
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v15           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1856
    .restart local v15       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1858
    if-eqz p7, :cond_74

    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_86

    :cond_74
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_166

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_166

    .line 1860
    :cond_86
    if-eqz p4, :cond_162

    const/16 v19, -0x1

    :goto_8a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1869
    :goto_93
    if-eqz v17, :cond_9a

    .line 1870
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1873
    :cond_9a
    if-eqz v16, :cond_a1

    .line 1874
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1877
    :cond_a1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_ce

    .line 1878
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_194

    move-object/from16 v19, p1

    .line 1879
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1885
    :cond_ce
    :goto_ce
    if-eqz v14, :cond_1cb

    .line 1886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

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

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1888
    .local v8, childWidthSpec:I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1890
    .local v12, lpHeight:I
    if-lez v12, :cond_1c1

    .line 1891
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1895
    .local v5, childHeightSpec:I
    :goto_104
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1900
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :goto_109
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1901
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1902
    .local v9, h:I
    if-eqz p4, :cond_1d0

    move/from16 v7, p3

    .line 1904
    .local v7, childTop:I
    :goto_115
    if-eqz v14, :cond_1d4

    .line 1905
    add-int v6, p5, v18

    .line 1906
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 1907
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 1913
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_139

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_139

    .line 1914
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1917
    :cond_139
    if-eqz p7, :cond_150

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_150

    .line 1919
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1921
    :cond_150
    return-void

    .line 1840
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_151
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 1841
    .restart local v11       #isSelected:Z
    :cond_154
    const/16 v17, 0x0

    goto/16 :goto_13

    .line 1843
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_158
    const/4 v10, 0x0

    goto/16 :goto_2c

    .line 1845
    .restart local v10       #isPressed:Z
    :cond_15b
    const/16 v16, 0x0

    goto/16 :goto_36

    .line 1846
    .restart local v16       #updateChildPressed:Z
    :cond_15f
    const/4 v14, 0x0

    goto/16 :goto_41

    .line 1860
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_162
    const/16 v19, 0x0

    goto/16 :goto_8a

    .line 1862
    :cond_166
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1863
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17e

    .line 1864
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1866
    :cond_17e
    if-eqz p4, :cond_191

    const/16 v19, -0x1

    :goto_182
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_93

    :cond_191
    const/16 v19, 0x0

    goto :goto_182

    .line 1880
    :cond_194
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_ce

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_ce

    .line 1893
    .restart local v8       #childWidthSpec:I
    .restart local v12       #lpHeight:I
    :cond_1c1
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto/16 :goto_104

    .line 1897
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :cond_1cb
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_109

    .line 1902
    .restart local v9       #h:I
    .restart local v18       #w:I
    :cond_1d0
    sub-int v7, p3, v9

    goto/16 :goto_115

    .line 1909
    .restart local v7       #childTop:I
    :cond_1d4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1910
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_122
.end method

.method private showingBottomFadingEdge()Z
    .registers 7

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 557
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 558
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 560
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 562
    .local v3, listBottom:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_28

    if-ge v0, v3, :cond_2a

    :cond_28
    const/4 v4, 0x1

    :goto_29
    return v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private showingTopFadingEdge()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 548
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 549
    .local v0, listTop:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_17

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 393
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 367
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 368
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 369
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 370
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 371
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1d

    .line 376
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_1d
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 307
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 7
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    if-nez v1, :cond_12

    .line 277
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_12
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 282
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 283
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 284
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 285
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2f

    .line 290
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 292
    :cond_2f
    return-void
.end method

.method arrowScroll(I)Z
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2394
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2395
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2396
    .local v0, handled:Z
    if-eqz v0, :cond_11

    .line 2397
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->playSoundEffect(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_14

    .line 2401
    :cond_11
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_14
    move-exception v1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1925
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method correctTooLow(I)V
    .registers 13
    .parameter "childCount"

    .prologue
    .line 1442
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_5e

    if-lez p1, :cond_5e

    .line 1445
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1448
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1451
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1454
    .local v6, start:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1459
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1460
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1461
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1462
    .local v3, lastBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1468
    .local v5, lastPosition:I
    if-lez v7, :cond_5e

    .line 1469
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_5f

    .line 1470
    :cond_39
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 1472
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1475
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 1476
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5e

    .line 1480
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1482
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1489
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_5e
    :goto_5e
    return-void

    .line 1484
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_5f
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_5e

    .line 1485
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto :goto_5e
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 36
    .parameter "canvas"

    .prologue
    .line 3131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 3132
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    .line 3136
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3137
    .local v10, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3138
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3139
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_1b5

    const/4 v13, 0x1

    .line 3140
    .local v13, drawOverscrollHeader:Z
    :goto_23
    if-eqz v26, :cond_1b8

    const/4 v12, 0x1

    .line 3141
    .local v12, drawOverscrollFooter:Z
    :goto_26
    if-lez v10, :cond_1bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1bb

    const/4 v11, 0x1

    .line 3143
    .local v11, drawDividers:Z
    :goto_31
    if-nez v11, :cond_37

    if-nez v13, :cond_37

    if-eqz v12, :cond_21b

    .line 3146
    :cond_37
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3147
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3150
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    .line 3151
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3152
    .local v20, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v23, v0

    .line 3153
    .local v23, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v23, v32

    add-int/lit8 v19, v32, -0x1

    .line 3154
    .local v19, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3155
    .local v21, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3156
    .local v18, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3157
    .local v17, first:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 3158
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3163
    .local v4, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_1be

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_1be

    const/16 v16, 0x1

    .line 3165
    .local v16, fillForMissingDividers:Z
    :goto_a9
    if-eqz v16, :cond_d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_d3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d3

    .line 3166
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3169
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3171
    .local v28, paint:Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3172
    .local v15, effectivePaddingTop:I
    const/4 v14, 0x0

    .line 3173
    .local v14, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_ff

    .line 3174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3178
    :cond_ff
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    sub-int v32, v32, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v33, v0

    add-int v24, v32, v33

    .line 3179
    .local v24, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_21f

    .line 3180
    const/4 v6, 0x0

    .line 3183
    .local v6, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v29, v0

    .line 3184
    .local v29, scrollY:I
    if-lez v9, :cond_13f

    if-gez v29, :cond_13f

    .line 3185
    if-eqz v13, :cond_1c2

    .line 3186
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3187
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3196
    :cond_13f
    :goto_13f
    const/16 v22, 0x0

    .local v22, i:I
    :goto_141
    move/from16 v0, v22

    if-ge v0, v9, :cond_1f0

    .line 3197
    if-nez v21, :cond_14f

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_1b2

    :cond_14f
    if-nez v18, :cond_159

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_1b2

    .line 3199
    :cond_159
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3200
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3204
    if-eqz v11, :cond_1b2

    move/from16 v0, v24

    if-ge v6, v0, :cond_1b2

    if-eqz v12, :cond_175

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b2

    .line 3206
    :cond_175
    if-nez v5, :cond_1a1

    add-int v32, v17, v22

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1de

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_1de

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_1a1

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_1de

    .line 3209
    :cond_1a1
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3210
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3211
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3196
    .end local v8           #child:Landroid/view/View;
    :cond_1b2
    :goto_1b2
    add-int/lit8 v22, v22, 0x1

    goto :goto_141

    .line 3139
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v11           #drawDividers:Z
    .end local v12           #drawOverscrollFooter:Z
    .end local v13           #drawOverscrollHeader:Z
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_1b5
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 3140
    .restart local v13       #drawOverscrollHeader:Z
    :cond_1b8
    const/4 v12, 0x0

    goto/16 :goto_26

    .line 3141
    .restart local v12       #drawOverscrollFooter:Z
    :cond_1bb
    const/4 v11, 0x0

    goto/16 :goto_31

    .line 3163
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    :cond_1be
    const/16 v16, 0x0

    goto/16 :goto_a9

    .line 3189
    .restart local v6       #bottom:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_1c2
    if-eqz v11, :cond_13f

    .line 3190
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3191
    neg-int v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3192
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_13f

    .line 3212
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    :cond_1de
    if-eqz v16, :cond_1b2

    .line 3213
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3214
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3215
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1b2

    .line 3221
    .end local v8           #child:Landroid/view/View;
    :cond_1f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3222
    .local v25, overFooterBottom:I
    if-eqz v12, :cond_21b

    add-int v32, v17, v9

    move/from16 v0, v32

    move/from16 v1, v23

    if-ne v0, v1, :cond_21b

    move/from16 v0, v25

    if-le v0, v6, :cond_21b

    .line 3223
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3224
    move/from16 v0, v25

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3225
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3285
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_21b
    :goto_21b
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3286
    return-void

    .line 3230
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_21f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v29, v0

    .line 3232
    .restart local v29       #scrollY:I
    if-lez v9, :cond_248

    if-eqz v13, :cond_248

    .line 3233
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3234
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3238
    :cond_248
    if-eqz v13, :cond_2ba

    const/16 v30, 0x1

    .line 3239
    .local v30, start:I
    :goto_24c
    move/from16 v22, v30

    .restart local v22       #i:I
    :goto_24e
    move/from16 v0, v22

    if-ge v0, v9, :cond_2d1

    .line 3240
    if-nez v21, :cond_25c

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_2b7

    :cond_25c
    if-nez v18, :cond_266

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b7

    .line 3242
    :cond_266
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3243
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3246
    .local v31, top:I
    move/from16 v0, v31

    if-le v0, v15, :cond_2b7

    .line 3247
    if-nez v5, :cond_2a2

    add-int v32, v17, v22

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2bd

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_2bd

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_2a2

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_2bd

    .line 3250
    :cond_2a2
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3251
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3258
    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3239
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_2b7
    :goto_2b7
    add-int/lit8 v22, v22, 0x1

    goto :goto_24e

    .line 3238
    .end local v22           #i:I
    .end local v30           #start:I
    :cond_2ba
    const/16 v30, 0x0

    goto :goto_24c

    .line 3259
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_2bd
    if-eqz v16, :cond_2b7

    .line 3260
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3261
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3262
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2b7

    .line 3268
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_2d1
    if-lez v9, :cond_21b

    if-lez v29, :cond_21b

    .line 3269
    if-eqz v12, :cond_2ee

    .line 3270
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    .line 3271
    .local v3, absListBottom:I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3272
    add-int v32, v3, v29

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_21b

    .line 3274
    .end local v3           #absListBottom:I
    :cond_2ee
    if-eqz v11, :cond_21b

    .line 3275
    move/from16 v0, v24

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3276
    add-int v32, v24, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3277
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_21b
.end method

.method protected dispatchDrawWithBounce(Landroid/graphics/Canvas;)V
    .registers 32
    .parameter "canvas"

    .prologue
    .line 3302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_204

    const/4 v8, 0x1

    .line 3303
    .local v8, clipToPadding:Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/touchwiz/widget/TwBounceController;->bounce(Landroid/graphics/Canvas;Z)I

    move-result v26

    .line 3306
    .local v26, saveCount:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3307
    .local v10, dividerHeight:I
    if-lez v10, :cond_207

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_207

    const/4 v11, 0x1

    .line 3309
    .local v11, drawDividers:Z
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    .line 3310
    .local v9, count:I
    if-eqz v11, :cond_323

    .line 3313
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3314
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3318
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v22, v0

    .line 3319
    .local v22, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v22, v28

    add-int/lit8 v17, v28, -0x1

    .line 3320
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3321
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3322
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3323
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 3324
    .local v4, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3329
    .local v3, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isOpaque()Z

    move-result v28

    if-eqz v28, :cond_20a

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOpaque()Z

    move-result v28

    if-nez v28, :cond_20a

    const/4 v14, 0x1

    .line 3331
    .local v14, fillForMissingDividers:Z
    :goto_9f
    if-eqz v14, :cond_c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    if-nez v28, :cond_c9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c9

    .line 3332
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCacheColorHint()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 3335
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 3337
    .local v25, paint:Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3338
    .local v13, effectivePaddingTop:I
    const/4 v12, 0x0

    .line 3339
    .local v12, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f5

    .line 3340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 3341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 3344
    :cond_f5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v29, v0

    add-int v23, v28, v29

    .line 3345
    .local v23, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_21f

    .line 3346
    const/4 v5, 0x0

    .line 3349
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_153

    if-lez v9, :cond_153

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_153

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingTop()I

    move-result v28

    sub-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3351
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3352
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3355
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_19a

    if-lez v9, :cond_19a

    add-int v28, v15, v9

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_19a

    .line 3358
    add-int/lit8 v28, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 3360
    .local v21, itemBottom:I
    move/from16 v0, v21

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3361
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3362
    add-int/lit8 v28, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3365
    .end local v21           #itemBottom:I
    :cond_19a
    const/16 v20, 0x0

    .local v20, i:I
    :goto_19c
    move/from16 v0, v20

    if-ge v0, v9, :cond_323

    .line 3366
    if-nez v19, :cond_1aa

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_201

    :cond_1aa
    if-nez v16, :cond_1b4

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_201

    .line 3368
    :cond_1b4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3369
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3373
    move/from16 v0, v23

    if-ge v5, v0, :cond_201

    .line 3374
    if-nez v4, :cond_1f0

    add-int v28, v15, v20

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_20d

    add-int v28, v15, v20

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_20d

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f0

    add-int v28, v15, v20

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_20d

    .line 3377
    :cond_1f0
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3378
    add-int v28, v5, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3365
    .end local v7           #child:Landroid/view/View;
    :cond_201
    :goto_201
    add-int/lit8 v20, v20, 0x1

    goto :goto_19c

    .line 3302
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v5           #bottom:I
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #clipToPadding:Z
    .end local v9           #count:I
    .end local v10           #dividerHeight:I
    .end local v11           #drawDividers:Z
    .end local v12           #effectivePaddingBottom:I
    .end local v13           #effectivePaddingTop:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v26           #saveCount:I
    :cond_204
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 3307
    .restart local v8       #clipToPadding:Z
    .restart local v10       #dividerHeight:I
    .restart local v26       #saveCount:I
    :cond_207
    const/4 v11, 0x0

    goto/16 :goto_2e

    .line 3329
    .restart local v3       #adapter:Landroid/widget/ListAdapter;
    .restart local v4       #areAllItemsSelectable:Z
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v15       #first:I
    .restart local v16       #footerDividers:Z
    .restart local v17       #footerLimit:I
    .restart local v18       #headerCount:I
    .restart local v19       #headerDividers:Z
    .restart local v22       #itemCount:I
    :cond_20a
    const/4 v14, 0x0

    goto/16 :goto_9f

    .line 3380
    .restart local v5       #bottom:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v12       #effectivePaddingBottom:I
    .restart local v13       #effectivePaddingTop:I
    .restart local v14       #fillForMissingDividers:Z
    .restart local v20       #i:I
    .restart local v23       #listBottom:I
    .restart local v25       #paint:Landroid/graphics/Paint;
    :cond_20d
    if-eqz v14, :cond_201

    .line 3381
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3382
    add-int v28, v5, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3383
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_201

    .line 3390
    .end local v5           #bottom:I
    .end local v7           #child:Landroid/view/View;
    .end local v20           #i:I
    :cond_21f
    move/from16 v24, v13

    .line 3393
    .local v24, listTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_26a

    if-lez v9, :cond_26a

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_26a

    .line 3394
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    sub-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3395
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3396
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3399
    :cond_26a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_29f

    if-lez v9, :cond_29f

    add-int v28, v15, v9

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_29f

    .line 3401
    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3402
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3406
    :cond_29f
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_2a1
    move/from16 v0, v20

    if-ge v0, v9, :cond_323

    .line 3407
    if-nez v19, :cond_2af

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_30c

    :cond_2af
    if-nez v16, :cond_2b9

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_30c

    .line 3409
    :cond_2b9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3410
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3413
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_30c

    .line 3414
    if-nez v4, :cond_2f7

    add-int v28, v15, v20

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_30f

    add-int v28, v15, v20

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_30f

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_2f7

    add-int v28, v15, v20

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_30f

    .line 3417
    :cond_2f7
    sub-int v28, v27, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3418
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3425
    add-int/lit8 v28, v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3406
    .end local v7           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_30c
    :goto_30c
    add-int/lit8 v20, v20, 0x1

    goto :goto_2a1

    .line 3426
    .restart local v7       #child:Landroid/view/View;
    .restart local v27       #top:I
    :cond_30f
    if-eqz v14, :cond_30c

    .line 3427
    sub-int v28, v27, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3428
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3429
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_30c

    .line 3439
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #child:Landroid/view/View;
    .end local v12           #effectivePaddingBottom:I
    .end local v13           #effectivePaddingTop:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v24           #listTop:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v27           #top:I
    :cond_323
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3441
    if-ltz v26, :cond_33f

    .line 3442
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3443
    if-eqz v8, :cond_33f

    .line 3444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x22

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 3446
    :cond_33f
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 2069
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2070
    .local v1, handled:Z
    if-nez v1, :cond_1a

    .line 2072
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2073
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2076
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2079
    .end local v0           #focused:Landroid/view/View;
    :cond_1a
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3290
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3291
    .local v0, more:Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    .line 3294
    :cond_f
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3461
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3462
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3463
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3113
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3115
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3116
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3118
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3119
    .local v1, span:I
    if-ge v1, v0, :cond_17

    .line 3120
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3123
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3124
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3127
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3096
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3098
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3099
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3101
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3102
    .local v1, span:I
    if-ge v1, v0, :cond_17

    .line 3103
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3106
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3107
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3110
    return-void
.end method

.method fillDown(II)Landroid/view/View;
    .registers 12
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 684
    const/4 v8, 0x0

    .line 686
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int v7, v0, v1

    .line 687
    .local v7, end:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_15

    .line 688
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 691
    :cond_15
    :goto_15
    if-ge p2, v7, :cond_3b

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3b

    .line 693
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_39

    move v5, v3

    .line 694
    .local v5, selected:Z
    :goto_20
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 696
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 697
    if-eqz v5, :cond_36

    .line 698
    move-object v8, v6

    .line 700
    :cond_36
    add-int/lit8 p1, p1, 0x1

    .line 701
    goto :goto_15

    .line 693
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_39
    const/4 v5, 0x0

    goto :goto_20

    .line 703
    :cond_3b
    return-object v8
.end method

.method fillGap(Z)V
    .registers 8
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 652
    .local v0, count:I
    if-eqz p1, :cond_33

    .line 653
    const/4 v2, 0x0

    .line 654
    .local v2, paddingTop:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_13

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getListPaddingTop()I

    move-result v2

    .line 657
    :cond_13
    if-lez v0, :cond_31

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 659
    .local v3, startOffset:I
    :goto_23
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 671
    .end local v2           #paddingTop:I
    :goto_30
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_31
    move v3, v2

    .line 657
    goto :goto_23

    .line 662
    .end local v2           #paddingTop:I
    :cond_33
    const/4 v1, 0x0

    .line 663
    .local v1, paddingBottom:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3e

    .line 664
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getListPaddingBottom()I

    move-result v1

    .line 666
    :cond_3e
    if-lez v0, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 668
    .restart local v3       #startOffset:I
    :goto_4d
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_30

    .line 666
    .end local v3           #startOffset:I
    :cond_5c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_4d
.end method

.method fillUp(II)Landroid/view/View;
    .registers 12
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 716
    const/4 v8, 0x0

    .line 718
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 719
    .local v7, end:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_f

    .line 720
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 723
    :cond_f
    :goto_f
    if-le p2, v7, :cond_33

    if-ltz p1, :cond_33

    .line 725
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_31

    const/4 v5, 0x1

    .line 726
    .local v5, selected:Z
    :goto_18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 727
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 728
    if-eqz v5, :cond_2e

    .line 729
    move-object v8, v6

    .line 731
    :cond_2e
    add-int/lit8 p1, p1, -0x1

    .line 732
    goto :goto_f

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_31
    move v5, v3

    .line 725
    goto :goto_18

    .line 734
    :cond_33
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 736
    return-object v8
.end method

.method findMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 1301
    .local v0, childCount:I
    if-lez v0, :cond_33

    .line 1302
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1e

    .line 1303
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_33

    .line 1304
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1306
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1318
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1a
    return v3

    .line 1303
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1310
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1e
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_20
    if-ltz v1, :cond_33

    .line 1311
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1312
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_30

    .line 1313
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1a

    .line 1310
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 1318
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_33
    const/4 v3, -0x1

    goto :goto_1a
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3774
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3775
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3778
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_23

    .line 3779
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3781
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3782
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3784
    if-eqz v2, :cond_20

    .line 3790
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1f
    return-object v2

    .line 3778
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3790
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3753
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3754
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3755
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3756
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3765
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3760
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3761
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3762
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3765
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3678
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3679
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3682
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3683
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3685
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3686
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3688
    if-eqz v2, :cond_1e

    .line 3694
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3682
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3694
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 5
    .parameter "id"

    .prologue
    .line 3659
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3660
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3661
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3662
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3670
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3665
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3666
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3667
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3670
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3725
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3726
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3729
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3730
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3732
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3733
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3735
    if-eqz v2, :cond_1e

    .line 3741
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3729
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3741
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .parameter "tag"

    .prologue
    .line 3705
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3706
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3707
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3708
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3717
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3712
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3713
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3714
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3717
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method fullScroll(I)Z
    .registers 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2306
    const/4 v0, 0x0

    .line 2307
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_29

    .line 2308
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1a

    .line 2309
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2310
    .local v1, position:I
    if-ltz v1, :cond_19

    .line 2311
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2312
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2313
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    .line 2315
    :cond_19
    const/4 v0, 0x1

    .line 2329
    .end local v1           #position:I
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2330
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    .line 2331
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 2334
    :cond_28
    return v0

    .line 2317
    :cond_29
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1a

    .line 2318
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1a

    .line 2319
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2320
    .restart local v1       #position:I
    if-ltz v1, :cond_48

    .line 2321
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2322
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    .line 2325
    :cond_48
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3804
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3805
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3835
    :cond_11
    :goto_11
    return-object v5

    .line 3811
    :cond_12
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_4c

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_4c

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4c

    .line 3812
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3813
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3814
    .local v3, count:I
    new-array v5, v3, [J

    .line 3815
    .local v5, ids:[J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3817
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3818
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_2b
    if-ge v4, v3, :cond_43

    .line 3819
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 3820
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3818
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_2b

    .line 3826
    :cond_43
    if-eq v2, v3, :cond_11

    .line 3829
    new-array v6, v2, [J

    .line 3830
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3832
    goto :goto_11

    .line 3835
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_4c
    new-array v5, v10, [J

    goto :goto_11

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4f
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_3f
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3471
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .prologue
    .line 3498
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3057
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 210
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 3062
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_19

    :cond_13
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_19
    const/4 v4, 0x1

    .line 3064
    .local v4, retValue:Z
    :goto_1a
    if-eqz v4, :cond_31

    .line 3067
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3068
    .local v3, listTop:I
    :goto_24
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3069
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    :cond_30
    move v4, v6

    .line 3079
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_31
    :goto_31
    return v4

    :cond_32
    move v4, v6

    .line 3062
    goto :goto_1a

    .line 3067
    .restart local v4       #retValue:Z
    :cond_34
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    goto :goto_24

    .line 3072
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_59

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_43
    sub-int v2, v7, v5

    .line 3074
    .local v2, listBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3075
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_31

    :cond_57
    move v4, v6

    .line 3076
    goto :goto_31

    .line 3072
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_59
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    goto :goto_43
.end method

.method protected layoutChildren()V
    .registers 27

    .prologue
    .line 1493
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1494
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_24

    .line 1495
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1501
    :try_start_b
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_25

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_125

    .line 1751
    if-nez v8, :cond_24

    .line 1752
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1755
    :cond_24
    :goto_24
    return-void

    .line 1511
    :cond_25
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1512
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1514
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    .line 1515
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1516
    .local v19, index:I
    const/4 v5, 0x0

    .line 1519
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1520
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1521
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1523
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1526
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_3ae

    .line 1541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1542
    if-ltz v19, :cond_72

    move/from16 v0, v19

    if-ge v0, v10, :cond_72

    .line 1543
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1547
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1549
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_8b

    .line 1550
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1554
    :cond_8b
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1557
    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1558
    .local v11, dataChanged:Z
    if-eqz v11, :cond_9c

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->handleDataChanged()V

    .line 1564
    :cond_9c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v2, :cond_cc

    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V
    :try_end_a8
    .catchall {:try_start_25 .. :try_end_a8} :catchall_125

    .line 1751
    if-nez v8, :cond_24

    .line 1752
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_24

    .line 1528
    .end local v11           #dataChanged:Z
    :pswitch_b1
    :try_start_b1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1529
    if-ltz v19, :cond_93

    move/from16 v0, v19

    if-ge v0, v10, :cond_93

    .line 1530
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_93

    .line 1568
    .restart local v11       #dataChanged:Z
    :cond_cc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_131

    .line 1569
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but TwListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_125
    .catchall {:try_start_b1 .. :try_end_125} :catchall_125

    .line 1751
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_125
    move-exception v2

    if-nez v8, :cond_130

    .line 1752
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_130
    throw v2

    .line 1576
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_131
    :try_start_131
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 1580
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1581
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1584
    .local v22, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1588
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_179

    .line 1589
    const/16 v18, 0x0

    .local v18, i:I
    :goto_149
    move/from16 v0, v18

    if-ge v0, v10, :cond_17e

    .line 1590
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v2, :cond_167

    .line 1591
    add-int v2, v18, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addShouldRetainView(ILandroid/view/View;)V

    .line 1589
    :goto_164
    add-int/lit8 v18, v18, 0x1

    goto :goto_149

    .line 1593
    :cond_167
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_164

    .line 1603
    .end local v18           #i:I
    :cond_179
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1610
    :cond_17e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1611
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_19e

    .line 1618
    if-eqz v11, :cond_190

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 1619
    :cond_190
    move-object/from16 v13, v17

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1622
    if-eqz v14, :cond_19b

    .line 1624
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1627
    :cond_19b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestFocus()Z

    .line 1631
    :cond_19e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->detachAllViewsFromParent()V

    .line 1633
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_3bc

    .line 1660
    if-nez v10, :cond_2d2

    .line 1661
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_2ad

    .line 1662
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1663
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 1664
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1685
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_1c8
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1687
    if-eqz v23, :cond_33f

    .line 1690
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_335

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_335

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_335

    .line 1691
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_1e9

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1ef

    :cond_1e9
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_323

    :cond_1ef
    const/4 v15, 0x1

    .line 1694
    .local v15, focusWasTaken:Z
    :goto_1f0
    if-nez v15, :cond_326

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1700
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_1fb

    .line 1701
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1703
    :cond_1fb
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 1711
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_203
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1734
    :cond_20b
    :goto_20b
    if-eqz v14, :cond_216

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_216

    .line 1735
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1738
    :cond_216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1740
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 1743
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->updateScrollIndicators()V

    .line 1745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v2, :cond_23a

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    .line 1749
    :cond_23a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V
    :try_end_23d
    .catchall {:try_start_131 .. :try_end_23d} :catchall_125

    .line 1751
    if-nez v8, :cond_24

    .line 1752
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_24

    .line 1635
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_246
    if-eqz v4, :cond_254

    .line 1636
    :try_start_248
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .line 1638
    .end local v23           #sel:Landroid/view/View;
    :cond_254
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1640
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .line 1642
    .end local v23           #sel:Landroid/view/View;
    :pswitch_25c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1643
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .line 1645
    .end local v23           #sel:Landroid/view/View;
    :pswitch_270
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1646
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1c8

    .line 1649
    .end local v23           #sel:Landroid/view/View;
    :pswitch_281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1650
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1651
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1c8

    .line 1654
    .end local v23           #sel:Landroid/view/View;
    :pswitch_291
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1655
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .end local v23           #sel:Landroid/view/View;
    :pswitch_2a5
    move-object/from16 v2, p0

    .line 1657
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1658
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .line 1666
    .end local v23           #sel:Landroid/view/View;
    :cond_2ad
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1667
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 1668
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1669
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .line 1671
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_2d2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2f9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_2f9

    .line 1672
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_2f4

    .end local v6           #childrenTop:I
    :goto_2ec
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_2f4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_2ec

    .line 1674
    :cond_2f9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_31a

    .line 1675
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v20, :cond_315

    .end local v6           #childrenTop:I
    :goto_30d
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_315
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_30d

    .line 1678
    :cond_31a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_1c8

    .line 1691
    .end local v6           #childrenTop:I
    :cond_323
    const/4 v15, 0x0

    goto/16 :goto_1f0

    .line 1705
    .restart local v15       #focusWasTaken:Z
    :cond_326
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_203

    .line 1709
    .end local v15           #focusWasTaken:Z
    :cond_335
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_203

    .line 1713
    :cond_33f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-lez v2, :cond_3a1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_3a1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v2, v0, :cond_3a1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v2, :cond_3a1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3a1

    .line 1716
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1717
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_394

    .line 1718
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 1727
    .end local v9           #child:Landroid/view/View;
    :cond_394
    :goto_394
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_20b

    if-eqz v14, :cond_20b

    .line 1728
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_20b

    .line 1720
    :cond_3a1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_3ad
    .catchall {:try_start_248 .. :try_end_3ad} :catchall_125

    goto :goto_394

    .line 1526
    :pswitch_data_3ae
    .packed-switch 0x1
        :pswitch_93
        :pswitch_b1
        :pswitch_93
        :pswitch_93
        :pswitch_93
    .end packed-switch

    .line 1633
    :pswitch_data_3bc
    .packed-switch 0x1
        :pswitch_281
        :pswitch_246
        :pswitch_270
        :pswitch_291
        :pswitch_25c
        :pswitch_2a5
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 7
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2015
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2016
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2042
    :cond_b
    :goto_b
    return v2

    .line 2020
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2021
    .local v1, count:I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_3d

    .line 2022
    if-eqz p2, :cond_26

    .line 2023
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2024
    :goto_1b
    if-ge p1, v1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2025
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2028
    :cond_26
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2029
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2030
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2034
    :cond_37
    if-ltz p1, :cond_b

    if-ge p1, v1, :cond_b

    move v2, p1

    .line 2037
    goto :goto_b

    .line 2039
    :cond_3d
    if-ltz p1, :cond_b

    if-ge p1, v1, :cond_b

    move v2, p1

    .line 2042
    goto :goto_b
.end method

.method final measureHeightOfChildren(IIIII)I
    .registers 18
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1234
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_f

    .line 1235
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1295
    :cond_e
    :goto_e
    return v6

    .line 1239
    :cond_f
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1240
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    if-lez v10, :cond_6e

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6e

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1243
    .local v3, dividerHeight:I
    :goto_23
    const/4 v6, 0x0

    .line 1248
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2d

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1249
    :cond_2d
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 1250
    .local v7, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->recycleOnMeasure()Z

    move-result v8

    .line 1251
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 1253
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_36
    if-gt v4, p3, :cond_7a

    .line 1254
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1256
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1258
    if-lez v4, :cond_42

    .line 1260
    add-int/2addr v9, v3

    .line 1264
    :cond_42
    if-eqz v8, :cond_56

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1267
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1270
    :cond_56
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1272
    move/from16 v0, p4

    if-lt v9, v0, :cond_70

    .line 1276
    if-ltz p5, :cond_6b

    move/from16 v0, p5

    if-le v4, v0, :cond_6b

    if-lez v6, :cond_6b

    move/from16 v0, p4

    if-ne v9, v0, :cond_e

    :cond_6b
    move/from16 v6, p4

    goto :goto_e

    .line 1240
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6e
    const/4 v3, 0x0

    goto :goto_23

    .line 1288
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_70
    if-ltz p5, :cond_77

    move/from16 v0, p5

    if-lt v4, v0, :cond_77

    .line 1289
    move v6, v9

    .line 1253
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .end local v2           #child:Landroid/view/View;
    :cond_7a
    move v6, v9

    .line 1295
    goto :goto_e
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3640
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFinishInflate()V

    .line 3642
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 3643
    .local v0, count:I
    if-lez v0, :cond_19

    .line 3644
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3645
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;)V

    .line 3644
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3647
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->removeAllViews()V

    .line 3649
    .end local v1           #i:I
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 16
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3579
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3581
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3582
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    .line 3583
    .local v2, closetChildIndex:I
    if-eqz v0, :cond_58

    if-eqz p1, :cond_58

    if-eqz p3, :cond_58

    .line 3584
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3589
    if-nez v0, :cond_19

    .line 3590
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 3631
    :goto_18
    return-void

    .line 3596
    :cond_19
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_2c

    .line 3597
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3598
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 3603
    :cond_2c
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3604
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3605
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 3606
    .local v1, childCount:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3608
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_38
    if-ge v5, v1, :cond_58

    .line 3610
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_45

    .line 3608
    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 3614
    :cond_45
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3615
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3616
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3617
    invoke-static {p3, v8, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3619
    .local v3, distance:I
    if-ge v3, v6, :cond_42

    .line 3620
    move v6, v3

    .line 3621
    move v2, v5

    goto :goto_42

    .line 3626
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_58
    if-ltz v2, :cond_61

    .line 3627
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_18

    .line 3629
    :cond_61
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    goto :goto_18
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2084
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2089
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2094
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1121
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1124
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1125
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1126
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1128
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1129
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1130
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1132
    .local v8, childState:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_92

    move v0, v2

    :goto_1d
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1133
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_5b

    if-eqz v11, :cond_27

    if-nez v10, :cond_5b

    .line 1135
    :cond_27
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1137
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1139
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1140
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1141
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1150
    .end local v6           #child:Landroid/view/View;
    :cond_5b
    if-nez v11, :cond_99

    .line 1151
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1157
    :goto_6d
    if-nez v10, :cond_81

    .line 1158
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1162
    :cond_81
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_8c

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1165
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1168
    :cond_8c
    invoke-virtual {p0, v12, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setMeasuredDimension(II)V

    .line 1169
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 1170
    return-void

    .line 1132
    :cond_92
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1d

    .line 1154
    :cond_99
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_6d
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1104
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 1105
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1106
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1107
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1108
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1109
    .local v4, top:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    if-nez v5, :cond_35

    .line 1110
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/touchwiz/widget/TwListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    .line 1112
    :cond_35
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->setup(II)Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->post(Ljava/lang/Runnable;)Z

    .line 1115
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSizeChanged(IIII)V

    .line 1116
    return-void
.end method

.method pageScroll(I)Z
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2260
    const/4 v1, -0x1

    .line 2261
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2263
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_51

    .line 2264
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2270
    :cond_15
    :goto_15
    if-ltz v1, :cond_68

    .line 2271
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2272
    .local v2, position:I
    if-ltz v2, :cond_68

    .line 2273
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2274
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2276
    if-eqz v0, :cond_37

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_37

    .line 2277
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2280
    :cond_37
    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_41

    .line 2281
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2284
    :cond_41
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2285
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    .line 2286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_50

    .line 2287
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 2294
    .end local v2           #position:I
    :cond_50
    :goto_50
    return v3

    .line 2265
    :cond_51
    const/16 v5, 0x82

    if-ne p1, v5, :cond_15

    .line 2266
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2267
    const/4 v0, 0x1

    goto :goto_15

    :cond_68
    move v3, v4

    .line 2294
    goto :goto_50
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1201
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 411
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 412
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 414
    :cond_20
    const/4 v0, 0x1

    .line 416
    :cond_21
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 419
    .end local v0           #result:Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 325
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 326
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 328
    :cond_20
    const/4 v0, 0x1

    .line 330
    :cond_21
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 333
    .end local v0           #result:Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 19
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 568
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 571
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v6

    .line 575
    .local v6, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getScrollY()I

    move-result v8

    .line 576
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 577
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 579
    .local v5, fadingEdge:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 581
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_3a

    if-le v9, v5, :cond_3b

    .line 582
    :cond_3a
    add-int/2addr v8, v5

    .line 586
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v2

    .line 587
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 589
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 592
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_5f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_60

    .line 594
    :cond_5f
    sub-int/2addr v7, v5

    .line 598
    :cond_60
    const/4 v11, 0x0

    .line 600
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_9f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_9f

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_98

    .line 607
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 614
    :goto_79
    sub-int v4, v1, v7

    .line 615
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 636
    .end local v4           #distanceToBottom:I
    :cond_7f
    :goto_7f
    if-eqz v11, :cond_d0

    const/4 v10, 0x1

    .line 637
    .local v10, scroll:Z
    :goto_82
    if-eqz v10, :cond_97

    .line 638
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->scrollListItemsBy(I)V

    .line 639
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 643
    :cond_97
    return v10

    .line 610
    .end local v10           #scroll:Z
    :cond_98
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_79

    .line 616
    :cond_9f
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_7f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_7f

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_c8

    .line 623
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 631
    :goto_b8
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 632
    .local v12, top:I
    sub-int v3, v12, v8

    .line 633
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7f

    .line 626
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_c8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_b8

    .line 636
    :cond_d0
    const/4 v10, 0x0

    goto :goto_82
.end method

.method resetList()V
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 525
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 528
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 462
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 465
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 466
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 468
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_29

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 469
    :cond_29
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 474
    :goto_34
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 475
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 478
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_97

    .line 481
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 482
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 483
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkFocus()V

    .line 486
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 487
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 492
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_92

    .line 493
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 497
    .local v0, position:I
    :goto_7e
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 500
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v1, :cond_8b

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    .line 511
    .end local v0           #position:I
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 512
    return-void

    .line 471
    :cond_8f
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_34

    .line 495
    :cond_92
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_7e

    .line 505
    .end local v0           #position:I
    :cond_97
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 506
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkFocus()V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    goto :goto_8b
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 3084
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    .line 3085
    .local v0, opaque:Z
    :goto_7
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    .line 3086
    if-eqz v0, :cond_1b

    .line 3087
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_16

    .line 3088
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3090
    :cond_16
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3092
    :cond_1b
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 3093
    return-void

    .line 3084
    .end local v0           #opaque:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3482
    if-eqz p1, :cond_1e

    .line 3483
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3487
    :goto_9
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3488
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerIsOpaque:Z

    .line 3489
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 3490
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3491
    return-void

    .line 3485
    :cond_1e
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    goto :goto_9
.end method

.method public setDividerHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 3509
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3510
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 3511
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3512
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .parameter "footerDividersEnabled"

    .prologue
    .line 3534
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    .line 3535
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3536
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .parameter "headerDividersEnabled"

    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    .line 3523
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3524
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .parameter "itemsCanFocus"

    .prologue
    .line 3046
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    .line 3047
    if-nez p1, :cond_9

    .line 3048
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDescendantFocusability(I)V

    .line 3050
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "footer"

    .prologue
    .line 3566
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3567
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3568
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 3545
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3546
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-gez v0, :cond_9

    .line 3547
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3549
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1938
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    .line 1939
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .prologue
    .line 2051
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2052
    .local v0, count:I
    if-lez v0, :cond_c

    .line 2053
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 2064
    :goto_b
    return-void

    .line 2057
    :cond_c
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 2058
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_b

    .line 2060
    :cond_14
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 2061
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_b
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 1975
    :cond_4
    :goto_4
    return-void

    .line 1955
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1956
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1957
    if-ltz p1, :cond_15

    .line 1958
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 1964
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 1965
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1966
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1968
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2f

    .line 1969
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1970
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1973
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    goto :goto_4

    .line 1961
    :cond_33
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_15
.end method

.method setSelectionInt(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 1984
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 1985
    const/4 v0, 0x0

    .line 1987
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1989
    .local v1, selectedPosition:I
    if-ltz v1, :cond_d

    .line 1990
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_16

    .line 1991
    const/4 v0, 0x1

    .line 1997
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1999
    if-eqz v0, :cond_15

    .line 2000
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    .line 2002
    :cond_15
    return-void

    .line 1992
    :cond_16
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_d

    .line 1993
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected shouldCorrectTooHigh()Z
    .registers 2

    .prologue
    .line 1373
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 925
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 926
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 913
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 914
    return-void
.end method
