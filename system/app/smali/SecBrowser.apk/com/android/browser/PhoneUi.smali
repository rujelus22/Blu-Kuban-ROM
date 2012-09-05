.class public Lcom/android/browser/PhoneUi;
.super Lcom/android/browser/BaseUi;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PhoneUi$AnimScreen;
    }
.end annotation


# instance fields
.field public MINIMUM_WAITING_LIMIT:J

.field private isReaderVisible:Z

.field private mActionBarHeight:I

.field mExtendedMenuOpen:Z

.field private mNavScreen:Lcom/android/browser/NavScreen;

.field private mNavigationBar:Lcom/android/browser/NavigationBarPhone;

.field mOptionsMenuOpen:Z

.field private mPieControl:Lcom/android/browser/PieControlPhone;

.field private mReader:Lcom/android/browser/Reader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .registers 7
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 65
    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/android/browser/PhoneUi;->MINIMUM_WAITING_LIMIT:J

    .line 74
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setUseQuickControls(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v1

    check-cast v1, Lcom/android/browser/NavigationBarPhone;

    iput-object v1, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    .line 77
    new-instance v1, Lcom/android/browser/Reader;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/browser/Reader;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    iput-object v1, p0, Lcom/android/browser/PhoneUi;->mReader:Lcom/android/browser/Reader;

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 80
    .local v0, heightValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 82
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/PhoneUi;->mActionBarHeight:I

    .line 84
    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/PhoneUi;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->finishAnimationIn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/PhoneUi;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    return-void
.end method

.method private finishAnimateOut()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v2}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 484
    iput-object v2, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    .line 485
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 486
    return-void
.end method

.method private finishAnimationIn()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-eqz v0, :cond_12

    .line 386
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->sendAccessibilityEvent(I)V

    .line 387
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 389
    :cond_12
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mReader:Lcom/android/browser/Reader;

    invoke-virtual {v0}, Lcom/android/browser/Reader;->dismissDialog()V

    .line 120
    return-void
.end method

.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "code"
    .parameter "event"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public editUrl(Z)V
    .registers 4
    .parameter "clearInput"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v0, :cond_a

    .line 94
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 96
    :cond_a
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    .line 97
    return-void
.end method

.method hideNavScreen(IZ)V
    .registers 41
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v33, v0

    if-nez v33, :cond_9

    .line 478
    :goto_8
    return-void

    .line 393
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v25

    .line 394
    .local v25, tab:Lcom/android/browser/Tab;
    if-eqz v25, :cond_1f

    if-nez p2, :cond_55

    .line 395
    :cond_1f
    if-eqz v25, :cond_37

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 401
    :cond_28
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    goto :goto_8

    .line 397
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v33

    if-lez v33, :cond_28

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_28

    .line 405
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->getTabView(I)Lcom/android/browser/NavTabView;

    move-result-object v26

    .line 406
    .local v26, tabview:Lcom/android/browser/NavTabView;
    if-nez v26, :cond_92

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v33

    if-lez v33, :cond_82

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 411
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    goto/16 :goto_8

    .line 415
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-interface/range {v33 .. v34}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    new-instance v20, Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v33, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 419
    .local v20, screen:Lcom/android/browser/PhoneUi$AnimScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v34

    sget-object v35, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v33 .. v35}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/view/View;->layout(IIII)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/browser/NavTabScroller;->finishScroller()V

    .line 423
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    .line 424
    .local v27, target:Landroid/widget/ImageView;
    const/16 v29, 0x0

    .line 425
    .local v29, toLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v31

    .line 426
    .local v31, toTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    .line 427
    .local v30, toRight:I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    .line 428
    .local v32, width:I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 429
    .local v12, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v33

    sub-int v33, v33, v32

    div-int/lit8 v9, v33, 0x2

    .line 432
    .local v9, fromLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v33

    sub-int v33, v33, v12

    div-int/lit8 v11, v33, 0x2

    .line 435
    .local v11, fromTop:I
    add-int v10, v9, v32

    .line 436
    .local v10, fromRight:I
    add-int v8, v11, v12

    .line 437
    .local v8, fromBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v19, v33, v34

    .line 438
    .local v19, scaleFactor:F
    int-to-float v0, v12

    move/from16 v33, v0

    mul-float v33, v33, v19

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int v28, v31, v33

    .line 439
    .local v28, toBottom:I
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "left"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v9, v35, v36

    const/16 v36, 0x1

    aput v9, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 441
    .local v14, l1:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "top"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v11, v35, v36

    const/16 v36, 0x1

    aput v11, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 443
    .local v24, t1:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "right"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v10, v35, v36

    const/16 v36, 0x1

    aput v10, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 445
    .local v17, r1:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "bottom"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v8, v35, v36

    const/16 v36, 0x1

    aput v8, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 447
    .local v4, b1:Landroid/animation/ObjectAnimator;
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    .line 448
    .local v21, set1:Landroid/animation/AnimatorSet;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v33

    const-string v34, "alpha"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    fill-array-data v35, :array_344

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 449
    .local v7, fade2:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    fill-array-data v35, :array_34c

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 450
    .local v6, fade1:Landroid/animation/ObjectAnimator;
    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v14, v33, v34

    const/16 v34, 0x1

    aput-object v24, v33, v34

    const/16 v34, 0x2

    aput-object v17, v33, v34

    const/16 v34, 0x3

    aput-object v4, v33, v34

    const/16 v34, 0x4

    aput-object v6, v33, v34

    const/16 v34, 0x5

    aput-object v7, v33, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 451
    const-wide/16 v33, 0x64

    move-object/from16 v0, v21

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 452
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    .line 453
    .local v22, set2:Landroid/animation/AnimatorSet;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "left"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v9, v35, v36

    const/16 v36, 0x1

    aput v29, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 455
    .local v13, l:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "top"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v11, v35, v36

    const/16 v36, 0x1

    aput v31, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 457
    .local v23, t:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "right"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v10, v35, v36

    const/16 v36, 0x1

    aput v30, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 459
    .local v16, r:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v33

    const-string v34, "bottom"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v8, v35, v36

    const/16 v36, 0x1

    aput v28, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 461
    .local v3, b:Landroid/animation/ObjectAnimator;
    const-string v33, "scaleFactor"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/high16 v36, 0x3f80

    aput v36, v34, v35

    const/16 v35, 0x1

    aput v19, v34, v35

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 463
    .local v18, scale:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    fill-array-data v35, :array_354

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 464
    .local v15, otheralpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v33, 0x64

    move-wide/from16 v0, v33

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 465
    const/16 v33, 0x5

    move/from16 v0, v33

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v13, v33, v34

    const/16 v34, 0x1

    aput-object v23, v33, v34

    const/16 v34, 0x2

    aput-object v16, v33, v34

    const/16 v34, 0x3

    aput-object v3, v33, v34

    const/16 v34, 0x4

    aput-object v18, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 466
    const-wide/16 v33, 0xc8

    move-object/from16 v0, v22

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 467
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 468
    .local v5, combo:Landroid/animation/AnimatorSet;
    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v21, v33, v34

    const/16 v34, 0x1

    aput-object v22, v33, v34

    const/16 v34, 0x2

    aput-object v15, v33, v34

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 469
    new-instance v33, Lcom/android/browser/PhoneUi$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/browser/PhoneUi$2;-><init>(Lcom/android/browser/PhoneUi;Lcom/android/browser/PhoneUi$AnimScreen;)V

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_8

    .line 448
    :array_344
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 449
    :array_34c
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 463
    :array_354
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public isWebShowing()Z
    .registers 2

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/browser/BaseUi;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public needsRestoreAllTabs()Z
    .registers 2

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Z)V
    .registers 4
    .parameter "inLoad"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 266
    if-eqz p1, :cond_19

    .line 267
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v0, :cond_16

    .line 268
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 270
    :cond_16
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 272
    :cond_19
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_a

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 261
    :goto_9
    return-void

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/PhoneUi;->mActionBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_9
.end method

.method public onBackKey()Z
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-eqz v0, :cond_15

    .line 133
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->close(I)V

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_14
    return v0

    :cond_15
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onBackKey()Z

    move-result v0

    goto :goto_14
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .registers 3
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 247
    if-eqz p2, :cond_5

    .line 248
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 250
    :cond_5
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 243
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-eqz v0, :cond_12

    .line 235
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 237
    :cond_12
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/PhoneUi;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .registers 5
    .parameter "tab"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 147
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 148
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 149
    const/16 v1, 0x64

    if-ne v0, v1, :cond_29

    .line 150
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    if-nez v1, :cond_28

    .line 151
    :cond_1b
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->suggestHideTitleBar()V

    .line 152
    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v1, :cond_28

    .line 153
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 166
    .end local v0           #progress:I
    :cond_28
    :goto_28
    return-void

    .line 157
    .restart local v0       #progress:I
    :cond_29
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    if-eqz v1, :cond_28

    .line 158
    :cond_31
    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v1

    if-nez v1, :cond_48

    .line 159
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 160
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setTitleGravity(I)V

    .line 162
    :cond_48
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    goto :goto_28
.end method

.method public runDialog()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mReader:Lcom/android/browser/Reader;

    iget-wide v1, p0, Lcom/android/browser/PhoneUi;->MINIMUM_WAITING_LIMIT:J

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Reader;->runDialog(J)V

    .line 113
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .registers 6
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 172
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 173
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 176
    .local v0, view:Lcom/android/browser/BrowserWebView;
    if-nez v0, :cond_1f

    .line 177
    const-string v1, "PhoneUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_1e
    return-void

    .line 181
    :cond_1f
    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v1, :cond_50

    .line 182
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlPhone;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 189
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 190
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/PhoneUi;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 195
    :goto_3b
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    invoke-virtual {v1, v3}, Lcom/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/browser/PhoneUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 197
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 198
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_1e

    .line 185
    :cond_50
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 186
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    goto :goto_2a

    .line 192
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/android/browser/PhoneUi;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    goto :goto_3b
.end method

.method public setReaderNavBar(Z)V
    .registers 3
    .parameter "val"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarPhone;->setReader(Z)V

    .line 128
    return-void
.end method

.method protected setTitleGravity(I)V
    .registers 4
    .parameter "gravity"

    .prologue
    .line 276
    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v1, :cond_14

    .line 277
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_13
    return-void

    .line 282
    :cond_14
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_13
.end method

.method public setUseQuickControls(Z)V
    .registers 6
    .parameter "useQuickControls"

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    .line 289
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-boolean v2, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setUseQuickControls(Z)V

    .line 290
    if-eqz p1, :cond_2b

    .line 291
    new-instance v1, Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/browser/PieControlPhone;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    iput-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    .line 292
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlPhone;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 294
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_27

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 311
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->updateUrlBarAutoShowManagerTarget()V

    .line 312
    return-void

    .line 298
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_2b
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    if-eqz v1, :cond_36

    .line 299
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlPhone;->removeFromContainer(Landroid/widget/FrameLayout;)V

    .line 301
    :cond_36
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 302
    .restart local v0       #web:Landroid/webkit/WebView;
    if-eqz v0, :cond_5a

    .line 304
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 305
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_55
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 309
    :cond_5a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setTitleGravity(I)V

    goto :goto_27
.end method

.method public shouldCaptureThumbnails()Z
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method showNavScreen()V
    .registers 32

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v27

    if-lez v27, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v27

    if-gtz v27, :cond_20

    .line 381
    :cond_1f
    :goto_1f
    return-void

    .line 329
    :cond_20
    new-instance v27, Lcom/android/browser/NavScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/browser/Tab;->capture()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v27 .. v29}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v5, Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v5, v0, v1, v2}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 334
    .local v5, ascreen:Lcom/android/browser/PhoneUi$AnimScreen;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v4

    .line 335
    .local v4, animView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 338
    const/4 v8, 0x0

    .line 339
    .local v8, fromLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v10

    .line 340
    .local v10, fromTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    .line 341
    .local v9, fromRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 342
    .local v7, fromBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0034

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 343
    .local v26, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0033

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 344
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b003d

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 345
    .local v13, ntth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v27

    sub-int v27, v27, v26

    div-int/lit8 v20, v27, 0x2

    .line 346
    .local v20, toLeft:I
    sub-int v27, v7, v11

    div-int/lit8 v22, v27, 0x2

    .line 347
    .local v22, toTop:I
    add-int v21, v20, v26

    .line 348
    .local v21, toRight:I
    add-int v19, v22, v11

    .line 349
    .local v19, toBottom:I
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v14, v27, v28

    .line 350
    .local v14, scaleFactor:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->detachTab(Lcom/android/browser/Tab;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 352
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 353
    .local v15, set1:Landroid/animation/AnimatorSet;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 354
    .local v12, inanim:Landroid/animation/AnimatorSet;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v27

    const-string v28, "left"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput v8, v29, v30

    const/16 v30, 0x1

    aput v20, v29, v30

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 356
    .local v24, tx:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v27

    const-string v28, "top"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput v10, v29, v30

    const/16 v30, 0x1

    aput v22, v29, v30

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 358
    .local v25, ty:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v27

    const-string v28, "right"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput v9, v29, v30

    const/16 v30, 0x1

    aput v21, v29, v30

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 360
    .local v23, tr:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v27

    const-string v28, "bottom"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput v7, v29, v30

    const/16 v30, 0x1

    aput v19, v29, v30

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 362
    .local v17, tb:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$200(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v27

    const-string v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_240

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 364
    .local v18, title:Landroid/animation/ObjectAnimator;
    const-string v27, "scaleFactor"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v30, 0x3f80

    aput v30, v28, v29

    const/16 v29, 0x1

    aput v14, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 366
    .local v16, sx:Landroid/animation/ObjectAnimator;
    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static {v5}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v27

    const-string v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_248

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 367
    .local v6, blend1:Landroid/animation/ObjectAnimator;
    const-wide/16 v27, 0x64

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v24, v27, v28

    const/16 v28, 0x1

    aput-object v25, v27, v28

    const/16 v28, 0x2

    aput-object v23, v27, v28

    const/16 v28, 0x3

    aput-object v17, v27, v28

    const/16 v28, 0x4

    aput-object v16, v27, v28

    const/16 v28, 0x5

    aput-object v18, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 370
    const-wide/16 v27, 0xc8

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 371
    new-instance v27, Lcom/android/browser/PhoneUi$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/browser/PhoneUi$1;-><init>(Lcom/android/browser/PhoneUi;Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v12, v27, v28

    const/16 v28, 0x1

    aput-object v6, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 380
    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1f

    .line 362
    :array_240
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 366
    :array_248
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public showWeb(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->showWeb(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 323
    return-void
.end method

.method public toggleNavScreen()V
    .registers 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v0, :cond_8

    .line 495
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showNavScreen()V

    .line 499
    :goto_7
    return-void

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    goto :goto_7
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .registers 8
    .parameter "tab"
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    const v2, 0x7f0d0114

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 217
    .local v1, nt:Landroid/view/MenuItem;
    if-eqz v1, :cond_13

    .line 218
    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v2, :cond_4c

    move v2, v3

    :goto_10
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    :cond_13
    const v2, 0x7f0d00fe

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 221
    .local v0, abm:Landroid/view/MenuItem;
    if-eqz v0, :cond_2b

    .line 222
    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v2, :cond_4e

    :goto_28
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    :cond_2b
    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-eqz v2, :cond_4b

    .line 225
    const v2, 0x7f0d0116

    invoke-interface {p2, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 226
    const v2, 0x7f0d011b

    invoke-interface {p2, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 227
    const v2, 0x7f0d011e

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    const v2, 0x7f0d0111

    invoke-interface {p2, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 230
    :cond_4b
    return-void

    .end local v0           #abm:Landroid/view/MenuItem;
    :cond_4c
    move v2, v4

    .line 218
    goto :goto_10

    .restart local v0       #abm:Landroid/view/MenuItem;
    :cond_4e
    move v3, v4

    .line 222
    goto :goto_28
.end method

.method public updateReaderIcon()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mReader:Lcom/android/browser/Reader;

    invoke-virtual {v0}, Lcom/android/browser/Reader;->getReaderVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/PhoneUi;->isReaderVisible:Z

    .line 105
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->isReaderVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarPhone;->setReader(Z)V

    .line 106
    return-void
.end method
