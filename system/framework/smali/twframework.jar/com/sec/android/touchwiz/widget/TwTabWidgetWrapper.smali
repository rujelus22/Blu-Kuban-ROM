.class Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
.super Landroid/widget/LinearLayout;
.source "TwTabWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;,
        Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;
    }
.end annotation


# instance fields
.field private TWTABIMAGE_SIDE_PADDING:F

.field private final debug:Z

.field protected mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

.field private mScale:F

.field mScrollToCurrentItem:Ljava/lang/Runnable;

.field private mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

.field private mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwTabHost;)V
    .registers 7
    .parameter "context"
    .parameter "tabHost"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->debug:Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScale:F

    .line 59
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    .line 178
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    .line 67
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 69
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    .line 70
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setFillViewport(Z)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScale:F

    .line 77
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    return-object v0
.end method


# virtual methods
.method public addTabWidget(Lcom/sec/android/touchwiz/widget/TwTabWidget;)V
    .registers 7
    .parameter "tabWidget"

    .prologue
    const/4 v4, 0x0

    .line 83
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 85
    .local v1, tabImageSizePadding:I
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    .line 86
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->addView(Landroid/view/View;)V

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 90
    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter "canvas"

    .prologue
    .line 264
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v13

    const/4 v14, 0x4

    if-gt v13, v14, :cond_19

    .line 381
    :cond_18
    :goto_18
    return-void

    .line 270
    :cond_19
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v9, rectOfFirstTab:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 272
    .local v10, rectOfLastTab:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v8, rectOfCurrentTab:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 274
    .local v11, rectOfScrollView:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 276
    .local v12, rectOfTabHostView:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 277
    .local v2, firstTab:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getTabCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 278
    .local v3, lastTab:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, currentTab:Landroid/view/View;
    if-eqz v1, :cond_18

    .line 284
    invoke-virtual {v2, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 285
    invoke-virtual {v3, v10}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v1, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v13, v11}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v13, v12}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v13, v2, v9}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v13, v3, v10}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v13, v1, v8}, Lcom/sec/android/touchwiz/widget/TwTabHost;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, mLightingLeft:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 304
    .local v5, mLightingRight:Landroid/graphics/drawable/Drawable;
    sget v13, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabIndicatorType:I

    if-nez v13, :cond_173

    .line 305
    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_137

    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v14, v12, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_137

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202022c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202008b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 332
    :goto_b3
    if-eqz v4, :cond_18

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->getAlpha()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 337
    if-eqz v5, :cond_18

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->getAlpha()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 345
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_101

    .line 346
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 348
    .local v6, rectLightingLeft:Landroid/graphics/Rect;
    invoke-virtual {v2, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getLeft()I

    move-result v13

    iput v13, v6, Landroid/graphics/Rect;->left:I

    .line 351
    iget v13, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v6, Landroid/graphics/Rect;->right:I

    .line 353
    const/16 v13, 0x10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-static {v13, v14, v15, v6, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 359
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 360
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    .end local v6           #rectLightingLeft:Landroid/graphics/Rect;
    :cond_101
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_18

    .line 364
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 366
    .local v7, rectLightingRight:Landroid/graphics/Rect;
    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getRight()I

    move-result v13

    iput v13, v7, Landroid/graphics/Rect;->right:I

    .line 369
    iget v13, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v7, Landroid/graphics/Rect;->left:I

    .line 371
    const/16 v13, 0x10

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-static {v13, v14, v15, v7, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 377
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 378
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_18

    .line 308
    .end local v7           #rectLightingRight:Landroid/graphics/Rect;
    :cond_137
    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_15b

    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    if-ge v13, v14, :cond_15b

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x2020089

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x2020230

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_b3

    .line 312
    :cond_15b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x2020089

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202008b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_b3

    .line 318
    :cond_173
    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_197

    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v14, v12, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_197

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202022b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202008a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_b3

    .line 321
    :cond_197
    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_1bb

    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    if-ge v13, v14, :cond_1bb

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x2020088

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202022f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_b3

    .line 325
    :cond_1bb
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x2020088

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x202008a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_b3
.end method

.method rescheduleSelectCurrentItem()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public scrollToTab(I)V
    .registers 3
    .parameter "tabIndex"

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(IZ)V

    .line 159
    return-void
.end method

.method public scrollToTab(IZ)V
    .registers 5
    .parameter "tabIndex"
    .parameter "animate"

    .prologue
    .line 162
    if-eqz p2, :cond_e

    .line 163
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToTabView(Landroid/view/View;)V

    .line 167
    :goto_d
    return-void

    .line 165
    :cond_e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mScrollView:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->access$000(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V

    goto :goto_d
.end method

.method public startLightingAni()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_d

    .line 253
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->show()V

    .line 254
    :cond_d
    return-void
.end method

.method public stopLightingAni()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->isAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 258
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mLightingAnimator:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->hide()V

    .line 259
    :cond_e
    return-void
.end method
