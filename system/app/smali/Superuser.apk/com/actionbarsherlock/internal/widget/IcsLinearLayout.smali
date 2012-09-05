.class public Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
.super Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;


# static fields
.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field private static final LinearLayout:[I = null

.field private static final LinearLayout_baselineAlignedChildIndex:I = 0x0

.field private static final LinearLayout_divider:I = 0x2

.field private static final LinearLayout_dividerPadding:I = 0x5

.field private static final LinearLayout_measureWithLargestChild:I = 0x3

.field private static final LinearLayout_showDividers:I = 0x4

.field private static final LinearLayout_weightSum:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->LinearLayout:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x27t 0x1t 0x1t 0x1t
        0x28t 0x1t 0x1t 0x1t
        0x29t 0x1t 0x1t 0x1t
        0xd4t 0x2t 0x1t 0x1t
        0x29t 0x3t 0x1t 0x1t
        0x2at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineChildTop:I

    const v0, 0x800033

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineChildTop:I

    const v0, 0x800033

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    sget-object v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->LinearLayout:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mWeightSum:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static combineMeasuredStatesInt(II)I
    .registers 3

    or-int v0, p0, p1

    return v0
.end method

.method private forceUniformHeight(II)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    :goto_c
    if-lt v7, p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_37

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    iget v0, v6, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_37

    iget v8, v6, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v6, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    :cond_37
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    return v0
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .registers 4

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .registers 3

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 5

    const/4 v0, -0x1

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v1, :cond_a

    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/NineViewGroup;->getBaseline()I

    move-result v0

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v1, v2, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-ne v2, v0, :cond_32

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAlignedChildIndex:I

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineChildTop:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_9
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_d
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_1b

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_a

    :cond_1b
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_36

    add-int/lit8 v2, p1, -0x1

    :goto_23
    if-gez v2, :cond_27

    move v0, v1

    goto :goto_a

    :cond_27
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_a

    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    :cond_36
    move v0, v1

    goto :goto_a
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureNullChild(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v2, :cond_2b

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_54

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    :goto_27
    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_4

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_50

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_54
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_27
.end method

.method protected onLayout(ZIIII)V
    .registers 26

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int v13, v2, v3

    sub-int/2addr v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int v14, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildCount()I

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    and-int/lit8 v12, v2, 0x70

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v10

    const/4 v11, 0x0

    :goto_3b
    if-lt v11, v15, :cond_3e

    return-void

    :cond_3e
    mul-int/lit8 v2, v11, 0x1

    add-int/lit8 v19, v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_59

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v10, v2

    move v2, v11

    :goto_56
    add-int/lit8 v11, v2, 0x1

    goto :goto_3b

    :cond_59
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v4, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    if-eqz v16, :cond_ef

    iget v2, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_ef

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    :goto_7c
    iget v4, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    if-gez v4, :cond_81

    move v4, v12

    :cond_81
    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_f4

    move v5, v9

    :cond_87
    :goto_87
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    move-object/from16 v0, p0

    iget v2, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, v10

    :goto_96
    iget v4, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int v10, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v10, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v2, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v10, v2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v11

    goto :goto_56

    :sswitch_bc
    iget v4, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int v5, v9, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_87

    const/4 v4, 0x1

    aget v4, v17, v4

    sub-int v2, v4, v2

    add-int/2addr v5, v2

    goto :goto_87

    :sswitch_ca
    sub-int v2, v14, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v4, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    goto :goto_87

    :sswitch_d7
    sub-int v4, v13, v7

    iget v5, v8, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v4, v5

    const/4 v4, -0x1

    if-eq v2, v4, :cond_87

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v4, v2

    const/4 v4, 0x2

    aget v4, v18, v4

    sub-int v2, v4, v2

    sub-int/2addr v5, v2

    goto :goto_87

    :cond_ed
    move v2, v10

    goto :goto_96

    :cond_ef
    move v2, v4

    goto :goto_7c

    :cond_f1
    move v2, v11

    goto/16 :goto_56

    :sswitch_data_f4
    .sparse-switch
        0x10 -> :sswitch_ca
        0x30 -> :sswitch_bc
        0x50 -> :sswitch_d7
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 31

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildCount()I

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_36

    :cond_28
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v24, v7

    aput v8, v24, v5

    aput v8, v24, v4

    aput v8, v24, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v4

    aput v8, v25, v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mUseLargestChild:Z

    move/from16 v27, v0

    const/high16 v3, 0x4000

    move/from16 v0, v22

    if-ne v0, v3, :cond_207

    const/4 v3, 0x1

    move v11, v3

    :goto_70
    const/high16 v13, -0x8000

    const/4 v5, 0x0

    :goto_73
    move/from16 v0, v21

    if-lt v5, v0, :cond_20b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    if-lez v3, :cond_94

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_94

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :cond_94
    const/4 v3, 0x1

    aget v3, v24, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_ac

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_ac

    const/4 v3, 0x2

    aget v3, v24, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_ac

    const/4 v3, 0x3

    aget v3, v24, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_598

    :cond_ac
    const/4 v3, 0x3

    aget v3, v24, v3

    const/4 v4, 0x0

    aget v4, v24, v4

    const/4 v5, 0x1

    aget v5, v24, v5

    const/4 v7, 0x2

    aget v7, v24, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v25, v4

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v7, 0x1

    aget v7, v25, v7

    const/4 v8, 0x2

    aget v8, v25, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_e3
    if-eqz v27, :cond_f7

    const/high16 v3, -0x8000

    move/from16 v0, v22

    if-eq v0, v3, :cond_ed

    if-nez v22, :cond_f7

    :cond_ed
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    const/4 v4, 0x0

    :goto_f3
    move/from16 v0, v21

    if-lt v4, v0, :cond_3b1

    :cond_f7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsView;->resolveSizeAndState(III)I

    move-result v19

    const v3, 0xffffff

    and-int v3, v3, v19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    sub-int v7, v3, v4

    if-eqz v7, :cond_537

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_537

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mWeightSum:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mWeightSum:F

    :cond_13b
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v24, v8

    aput v9, v24, v5

    aput v9, v24, v4

    aput v9, v24, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v25, v8

    aput v9, v25, v5

    aput v9, v25, v4

    aput v9, v25, v3

    const/4 v8, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    const/4 v3, 0x0

    move/from16 v16, v3

    move v5, v6

    move v10, v15

    move/from16 v13, v17

    move v15, v8

    move/from16 v8, v18

    :goto_165
    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_41a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    const/4 v3, 0x1

    aget v3, v24, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_195

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_195

    const/4 v3, 0x2

    aget v3, v24, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_195

    const/4 v3, 0x3

    aget v3, v24, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_584

    :cond_195
    const/4 v3, 0x3

    aget v3, v24, v3

    const/4 v4, 0x0

    aget v4, v24, v4

    const/4 v5, 0x1

    aget v5, v24, v5

    const/4 v6, 0x2

    aget v6, v24, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v25, v4

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    aget v6, v25, v6

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v15, v10

    move v3, v13

    move/from16 v18, v8

    :goto_1ce
    if-nez v15, :cond_581

    const/high16 v5, 0x4000

    move/from16 v0, v23

    if-eq v0, v5, :cond_581

    :goto_1d6
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, -0x100

    and-int v4, v4, v18

    or-int v4, v4, v19

    shl-int/lit8 v5, v18, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Lcom/actionbarsherlock/internal/widget/IcsView;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setMeasuredDimension(II)V

    if-eqz v12, :cond_206

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->forceUniformHeight(II)V

    :cond_206
    return-void

    :cond_207
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_70

    :cond_20b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_226

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :goto_222
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_73

    :cond_226
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-eq v3, v7, :cond_59f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_243

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :cond_243
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    iget v3, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    add-float v14, v6, v3

    const/high16 v3, 0x4000

    move/from16 v0, v22

    if-ne v0, v3, :cond_321

    iget v3, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_321

    iget v3, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_321

    if-eqz v11, :cond_30d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    iget v6, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :goto_26f
    if-eqz v26, :cond_27a

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    :cond_27a
    :goto_27a
    const/4 v3, 0x0

    const/high16 v6, 0x4000

    move/from16 v0, v23

    if-eq v0, v6, :cond_59c

    iget v6, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_59c

    const/4 v6, 0x1

    const/4 v3, 0x1

    :goto_288
    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    iget v8, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    invoke-static {v4}, Lcom/actionbarsherlock/internal/widget/IcsView;->getMeasuredStateInt(Landroid/view/View;)I

    move-result v7

    move/from16 v0, v18

    invoke-static {v0, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->combineMeasuredStatesInt(II)I

    move-result v12

    if-eqz v26, :cond_2d2

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v18

    const/4 v7, -0x1

    move/from16 v0, v18

    if-eq v0, v7, :cond_2d2

    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    if-gez v7, :cond_393

    move-object/from16 v0, p0

    iget v7, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    :goto_2b0
    and-int/lit8 v7, v7, 0x70

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    aget v20, v24, v7

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    aput v20, v24, v7

    aget v20, v25, v7

    sub-int v18, v9, v18

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v25, v7

    :cond_2d2
    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    if-eqz v15, :cond_397

    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v7, v15, :cond_397

    const/4 v7, 0x1

    :goto_2e0
    iget v10, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_39d

    if-eqz v3, :cond_39a

    move v3, v8

    :goto_2ea
    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v7

    move v9, v3

    move/from16 v10, v17

    move v7, v14

    move v3, v13

    move/from16 v13, v18

    :goto_2f8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v12

    move/from16 v19, v13

    move v13, v3

    move v12, v6

    move v6, v7

    goto/16 :goto_222

    :cond_30d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    iget v6, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    goto/16 :goto_26f

    :cond_321
    const/high16 v3, -0x8000

    iget v6, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    if-nez v6, :cond_332

    iget v6, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_332

    const/4 v3, 0x0

    const/4 v6, -0x2

    iput v6, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    :cond_332
    move/from16 v20, v3

    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-nez v3, :cond_375

    move-object/from16 v0, p0

    iget v7, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :goto_33d
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v3, -0x8000

    move/from16 v0, v20

    if-eq v0, v3, :cond_351

    move/from16 v0, v20

    iput v0, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    :cond_351
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eqz v11, :cond_377

    move-object/from16 v0, p0

    iget v6, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :goto_36d
    if-eqz v27, :cond_27a

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_27a

    :cond_375
    const/4 v7, 0x0

    goto :goto_33d

    :cond_377
    move-object/from16 v0, p0

    iget v6, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    add-int v7, v6, v3

    iget v8, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    goto :goto_36d

    :cond_393
    iget v7, v10, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_2b0

    :cond_397
    const/4 v7, 0x0

    goto/16 :goto_2e0

    :cond_39a
    move v3, v9

    goto/16 :goto_2ea

    :cond_39d
    if-eqz v3, :cond_3af

    :goto_39f
    move/from16 v0, v17

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v7

    move/from16 v9, v16

    move v10, v3

    move v7, v14

    move v3, v13

    move/from16 v13, v18

    goto/16 :goto_2f8

    :cond_3af
    move v8, v9

    goto :goto_39f

    :cond_3b1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3cd

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measureNullChild(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move v3, v4

    :goto_3c9
    add-int/lit8 v4, v3, 0x1

    goto/16 :goto_f3

    :cond_3cd
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_3dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_3c9

    :cond_3dd
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    if-eqz v11, :cond_3fd

    move-object/from16 v0, p0

    iget v8, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    iget v9, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v13

    iget v3, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move v3, v4

    goto :goto_3c9

    :cond_3fd
    move-object/from16 v0, p0

    iget v8, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    add-int v9, v8, v13

    iget v10, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    move v3, v4

    goto :goto_3c9

    :cond_41a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_590

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_590

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    iget v9, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-lez v4, :cond_58b

    int-to-float v4, v7

    mul-float/2addr v4, v9

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-float v9, v5, v9

    sub-int/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v5, v14

    iget v14, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v14

    iget v14, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v14

    iget v14, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v5, v14}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildMeasureSpec(III)I

    move-result v14

    iget v5, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->width:I

    if-nez v5, :cond_461

    const/high16 v5, 0x4000

    move/from16 v0, v22

    if-eq v0, v5, :cond_504

    :cond_461
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_469

    const/4 v4, 0x0

    :cond_469
    move-object v5, v6

    :goto_46a
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v4, v14}, Landroid/view/View;->measure(II)V

    invoke-static {v6}, Lcom/actionbarsherlock/internal/widget/IcsView;->getMeasuredStateInt(Landroid/view/View;)I

    move-result v4

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    invoke-static {v8, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->combineMeasuredStatesInt(II)I

    move-result v14

    move v8, v9

    move v9, v7

    :goto_482
    if-eqz v11, :cond_50d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v7, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v7, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    :goto_49e
    const/high16 v4, 0x4000

    move/from16 v0, v23

    if-eq v0, v4, :cond_52d

    iget v4, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_52d

    const/4 v4, 0x1

    :goto_4aa
    iget v5, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->topMargin:I

    iget v7, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-eqz v4, :cond_530

    move v4, v5

    :goto_4bb
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v10, :cond_532

    iget v4, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_532

    const/4 v4, 0x1

    :goto_4c7
    if-eqz v26, :cond_4f2

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_4f2

    iget v10, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    if-gez v10, :cond_534

    move-object/from16 v0, p0

    iget v3, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mGravity:I

    :goto_4d8
    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    aget v10, v24, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v24, v3

    aget v10, v25, v3

    sub-int v6, v7, v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v25, v3

    :cond_4f2
    move v3, v8

    move v6, v5

    move v7, v14

    move v5, v4

    move v8, v15

    move v4, v9

    :goto_4f8
    add-int/lit8 v9, v16, 0x1

    move/from16 v16, v9

    move v10, v5

    move v13, v6

    move v15, v8

    move v8, v7

    move v5, v3

    move v7, v4

    goto/16 :goto_165

    :cond_504
    if-lez v4, :cond_509

    move-object v5, v6

    goto/16 :goto_46a

    :cond_509
    const/4 v4, 0x0

    move-object v5, v6

    goto/16 :goto_46a

    :cond_50d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v7, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v7, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mTotalLength:I

    goto/16 :goto_49e

    :cond_52d
    const/4 v4, 0x0

    goto/16 :goto_4aa

    :cond_530
    move v4, v7

    goto :goto_4bb

    :cond_532
    const/4 v4, 0x0

    goto :goto_4c7

    :cond_534
    iget v3, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->gravity:I

    goto :goto_4d8

    :cond_537
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v27, :cond_549

    if-nez v22, :cond_549

    const/4 v3, 0x0

    move v6, v3

    :goto_545
    move/from16 v0, v21

    if-lt v6, v0, :cond_54d

    :cond_549
    move v3, v4

    move v4, v5

    goto/16 :goto_1ce

    :cond_54d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_57d

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-eq v3, v8, :cond_57d

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;

    iget v3, v3, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;->weight:F

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-lez v3, :cond_57d

    const/high16 v3, 0x4000

    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x4000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/view/View;->measure(II)V

    :cond_57d
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_545

    :cond_581
    move v3, v4

    goto/16 :goto_1d6

    :cond_584
    move v3, v13

    move/from16 v18, v8

    move v4, v15

    move v15, v10

    goto/16 :goto_1ce

    :cond_58b
    move v9, v7

    move v14, v8

    move v8, v5

    goto/16 :goto_482

    :cond_590
    move v3, v5

    move v4, v7

    move v6, v13

    move v5, v10

    move v7, v8

    move v8, v15

    goto/16 :goto_4f8

    :cond_598
    move/from16 v5, v19

    goto/16 :goto_e3

    :cond_59c
    move v6, v12

    goto/16 :goto_288

    :cond_59f
    move v3, v13

    move v7, v6

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move v6, v12

    move/from16 v13, v19

    move/from16 v12, v18

    goto/16 :goto_2f8
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    :goto_10
    if-nez p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->requestLayout()V

    goto :goto_5

    :cond_1a
    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->mDividerWidth:I

    goto :goto_10
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
