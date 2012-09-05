.class public Lcom/sec/android/touchwiz/widget/TwTabWidget;
.super Landroid/widget/LinearLayout;
.source "TwTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwTabWidget$1;,
        Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;,
        Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwTabWidget"

.field public static final TW_TABWIDGET_PAGE_INDICATOR_COUNT:I = 0x4

.field public static final TW_TABWIDGET_PAGE_INDICATOR_MIN_WIDTH:I = 0x50


# instance fields
.field private final debug:Z

.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBottomStrips:Z

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/high16 v0, 0x201

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->debug:Z

    .line 86
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    .line 92
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDrawBottomStrips:Z

    .line 120
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->initTabWidget()V

    .line 122
    sget-object v1, Ltouchwiz/R$styleable;->TwTabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwTabWidget;)Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .registers 4

    .prologue
    .line 148
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setOrientation(I)V

    .line 149
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mGroupFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mGroupFlags:I

    .line 151
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mContext:Landroid/content/Context;

    .line 152
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x2020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 156
    const v2, 0x2020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 161
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setFocusable(Z)V

    .line 162
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 8
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 425
    if-eqz p1, :cond_9

    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_a

    .line 476
    :cond_9
    :goto_9
    return-void

    .line 429
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 430
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 433
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1d
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 439
    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 445
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_4d

    .line 446
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, divider:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 450
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4d
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;ILcom/sec/android/touchwiz/widget/TwTabWidget$1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_9
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->invalidate()V

    .line 234
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 235
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 338
    :cond_7
    :goto_7
    return-void

    .line 294
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 302
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDrawBottomStrips:Z

    if-eqz v3, :cond_7

    .line 307
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 309
    .local v2, selectedChild:Landroid/view/View;
    if-eqz v2, :cond_7

    .line 313
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 314
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 316
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mStripMoved:Z

    if-eqz v3, :cond_84

    .line 317
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 319
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getHeight()I

    move-result v0

    .line 321
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mStripMoved:Z

    .line 336
    .end local v0           #myHeight:I
    .end local v1           #selBounds:Landroid/graphics/Rect;
    :cond_84
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method public focusCurrentTab(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 397
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 410
    :cond_8
    :goto_8
    return-void

    .line 401
    :cond_9
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    .line 404
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setCurrentTab(I)V

    .line 407
    if-eq v0, p1, :cond_8

    .line 408
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_8
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 138
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_7

    .line 139
    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    .line 143
    .end local p2
    :cond_6
    :goto_6
    return p2

    .line 140
    .restart local p2
    :cond_7
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_6

    .line 141
    add-int/lit8 p2, p2, 0x1

    goto :goto_6
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 177
    mul-int/lit8 p1, p1, 0x2

    .line 179
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v0

    .line 194
    .local v0, children:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 195
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 197
    :cond_c
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 548
    if-ne p1, p0, :cond_16

    if-eqz p2, :cond_16

    .line 549
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 550
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 567
    :cond_15
    :goto_15
    return-void

    .line 555
    :cond_16
    if-eqz p2, :cond_15

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, i:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    .line 558
    .local v1, numTabs:I
    :goto_1d
    if-ge v0, v1, :cond_15

    .line 559
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2f

    .line 560
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setCurrentTab(I)V

    .line 561
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_15

    .line 564
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 481
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 483
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v11

    if-nez v11, :cond_a

    .line 538
    :goto_9
    return-void

    .line 494
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v10

    .line 497
    .local v10, tabCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 498
    .local v7, p:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    .line 500
    .local v8, parentWidth:I
    move v6, v8

    .line 511
    .local v6, myWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v9, v11, Landroid/util/DisplayMetrics;->density:F

    .line 512
    .local v9, scale:F
    int-to-float v11, v6

    div-float/2addr v11, v9

    const/high16 v12, 0x42a0

    div-float/2addr v11, v12

    float-to-int v5, v11

    .line 513
    .local v5, minTabCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v11

    div-int v3, v6, v11

    .line 514
    .local v3, indicatorWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v11

    if-le v11, v5, :cond_41

    if-eqz v5, :cond_41

    .line 515
    add-int v11, v6, v5

    add-int/lit8 v11, v11, -0x1

    div-int v3, v11, v5

    .line 518
    :cond_41
    if-lez v3, :cond_6e

    .line 519
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    if-ge v1, v10, :cond_6e

    .line 520
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 524
    .local v2, indicator:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 525
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v11, v3, v11

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v0, v11, v12

    .line 530
    .local v0, MeasureIndicatorWidth:I
    const/high16 v11, 0x4000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/view/View;->measure(II)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 535
    .end local v0           #MeasureIndicatorWidth:I
    .end local v1           #i:I
    .end local v2           #indicator:Landroid/view/View;
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6e
    mul-int v11, v3, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mStripMoved:Z

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 132
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 368
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 380
    :cond_9
    :goto_9
    return-void

    .line 372
    :cond_a
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 376
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 377
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    .line 378
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 379
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mStripMoved:Z

    goto :goto_9
.end method

.method public setDividerDrawable(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "drawable"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    return-void
.end method

.method setDrawBottomStrips(Z)V
    .registers 2
    .parameter "drawBottomStrips"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mDrawBottomStrips:Z

    .line 226
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v1

    .line 417
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 418
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 421
    .end local v0           #child:Landroid/view/View;
    :cond_14
    return-void
.end method

.method setTabSelectionListener(Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    .line 545
    return-void
.end method
