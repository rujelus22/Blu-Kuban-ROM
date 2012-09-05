.class public Lcom/android/browser/WebView_to_WebView_RotationAnimator;
.super Landroid/widget/FrameLayout;
.source "WebView_to_WebView_RotationAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebView_to_WebView_RotationAnimator$6;,
        Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;,
        Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;,
        Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;
    }
.end annotation


# instance fields
.field private final CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

.field private final CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

.field private final DEBUG_TRACE:Z

.field private mAnimBeginTime:D

.field private final mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

.field private mAnimViewAFTER:Lcom/android/browser/AnimView;

.field private mAnimViewAFTER_dScale:F

.field private mAnimViewAFTER_dx:F

.field private mAnimViewAFTER_dy:F

.field private mAnimViewAFTER_dz:F

.field private mAnimViewBEFORE:Lcom/android/browser/AnimView;

.field private mAnimViewBEFORE_dScale:F

.field private mAnimViewBEFORE_dx:F

.field private mAnimViewBEFORE_dy:F

.field private mAnimViewBEFORE_dz:F

.field private mAnimating:Z

.field private mBrowserTabFocusListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;

.field private mCamera1:Landroid/graphics/Camera;

.field private mCamera2:Landroid/graphics/Camera;

.field private mContext:Landroid/app/Activity;

.field private mDepthZ:F

.field private mFromDegrees:F

.field private mH:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mNewWebView:Landroid/webkit/WebView;

.field private mOldPriority:Ljava/lang/Integer;

.field mOldWebView:Landroid/webkit/WebView;

.field private mToDegrees:F

.field private mToastScreenshotFrame:Landroid/widget/FrameLayout;

.field private mWebPageNavegationListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

    .line 64
    sget-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    .line 154
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebPageNavegationListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mH:Landroid/os/Handler;

    .line 310
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 311
    iput-boolean v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->DEBUG_TRACE:Z

    .line 710
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;

    invoke-direct {v0, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mBrowserTabFocusListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

    .line 64
    sget-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    .line 154
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebPageNavegationListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mH:Landroid/os/Handler;

    .line 310
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 311
    iput-boolean v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->DEBUG_TRACE:Z

    .line 710
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;

    invoke-direct {v0, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mBrowserTabFocusListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

    .line 64
    sget-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    .line 154
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$2;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebPageNavegationListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mH:Landroid/os/Handler;

    .line 310
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 311
    iput-boolean v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->DEBUG_TRACE:Z

    .line 710
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;

    invoke-direct {v0, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$5;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mBrowserTabFocusListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->init(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Lcom/android/browser/AnimView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Lcom/android/browser/AnimView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/WebView_to_WebView_RotationAnimator;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private createWindowWithView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 677
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    .line 680
    .local v4, windowManager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 681
    .local v3, w:I
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 682
    .local v0, h:I
    const/16 v3, 0x1e0

    .line 683
    const/16 v0, 0x320

    .line 685
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 686
    .local v1, layoutParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 687
    const/4 v5, 0x0

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 688
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 689
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 691
    const/16 v5, 0x788

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 696
    const/4 v5, 0x1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 697
    const/16 v5, 0x7d5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 698
    const/16 v5, 0x33

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 700
    invoke-interface {v4, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    .line 705
    .end local v0           #h:I
    .end local v1           #layoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #w:I
    .end local v4           #windowManager:Landroid/view/WindowManager;
    :goto_39
    return-void

    .line 702
    :catch_3a
    move-exception v2

    .line 703
    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39
.end method

.method private dispatchDraw_SlideLeftAnimation_3D(Landroid/graphics/Canvas;)V
    .registers 24
    .parameter "canvas"

    .prologue
    .line 619
    const/16 v19, 0x14

    .line 620
    .local v19, MAX_SHADOW_WIDTH:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dz:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dz:F

    sub-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4034

    mul-double/2addr v5, v7

    double-to-int v0, v5

    move/from16 v20, v0

    .line 622
    .local v20, shadowSize:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    if-ne v2, v5, :cond_bb

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    if-ne v2, v5, :cond_bb

    .line 625
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dx:F

    .line 626
    .local v4, shadow_x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    .line 627
    .local v3, shadow_y0:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    .line 628
    .local v21, shadow_y1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5b

    .line 629
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    .line 630
    :cond_5b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    cmpl-float v2, v21, v2

    if-lez v2, :cond_8c

    .line 631
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    .line 633
    :cond_8c
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 634
    .local v10, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, v20

    int-to-float v2, v0

    sub-float v2, v4, v2

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    const v6, 0x777777

    const v7, 0x77777777

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v5, v3

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 635
    .local v1, shader:Landroid/graphics/Shader;
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 636
    move/from16 v0, v20

    int-to-float v2, v0

    sub-float v6, v4, v2

    const/high16 v2, 0x3f80

    add-float v9, v21, v2

    move-object/from16 v5, p1

    move v7, v3

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 655
    .end local v1           #shader:Landroid/graphics/Shader;
    .end local v3           #shadow_y0:F
    .end local v4           #shadow_x:F
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v21           #shadow_y1:F
    :cond_ba
    :goto_ba
    return-void

    .line 638
    :cond_bb
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    if-ne v2, v5, :cond_ba

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    if-ne v2, v5, :cond_ba

    .line 641
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dx:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float v4, v2, v5

    .line 642
    .restart local v4       #shadow_x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    .line 643
    .restart local v3       #shadow_y0:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    .line 644
    .restart local v21       #shadow_y1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_110

    .line 645
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    .line 646
    :cond_110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    cmpl-float v2, v21, v2

    if-lez v2, :cond_141

    .line 647
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    invoke-virtual {v5}, Lcom/android/browser/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    .line 649
    :cond_141
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 650
    .restart local v10       #paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, v20

    int-to-float v2, v0

    add-float v14, v4, v2

    const v16, 0x77777777

    const v17, 0x777777

    sget-object v18, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v11, v1

    move v12, v4

    move v13, v3

    move v15, v3

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 651
    .restart local v1       #shader:Landroid/graphics/Shader;
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 652
    move/from16 v0, v20

    int-to-float v2, v0

    add-float v8, v4, v2

    const/high16 v2, 0x3f80

    add-float v9, v21, v2

    move-object/from16 v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_ba
.end method

.method private getChildStaticTransformation_RotateOnYAxisAnimation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 20
    .parameter "child"
    .parameter "t"

    .prologue
    .line 349
    const-wide/high16 v1, 0x4089

    .line 350
    .local v1, ANIMATION_LENGTH:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getWidth()I

    move-result v13

    int-to-double v3, v13

    .line 351
    .local v3, SCREEN_WIDTH:D
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    if-eqz v13, :cond_11b

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-double v13, v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimBeginTime:D

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4089

    div-double v11, v13, v15

    .line 354
    .local v11, time:D
    const-wide/high16 v13, 0x3ff0

    cmpl-double v13, v11, v13

    if-lez v13, :cond_28

    .line 355
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    .line 356
    const-wide/high16 v11, 0x3ff0

    .line 358
    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    double-to-float v14, v11

    invoke-interface {v13, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    float-to-double v11, v13

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 362
    .local v10, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_a7

    .line 364
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mFromDegrees:F

    .line 365
    const/high16 v13, -0x3d4c

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToDegrees:F

    .line 366
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mDepthZ:F

    .line 368
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mFromDegrees:F

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToDegrees:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mFromDegrees:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v15, v15

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    double-to-float v9, v13

    .line 369
    .local v9, degrees:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float v7, v13, v14

    .line 370
    .local v7, centerX:F
    const/4 v8, 0x0

    .line 371
    .local v8, centerY:F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mCamera1:Landroid/graphics/Camera;

    .line 373
    .local v6, camera:Landroid/graphics/Camera;
    const-wide/high16 v13, 0x3ff0

    sub-double/2addr v13, v11

    double-to-float v5, v13

    .line 374
    .local v5, alpha:F
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 376
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 377
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 378
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mDepthZ:F

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 379
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 380
    invoke-virtual {v6, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 381
    const/4 v13, 0x0

    const/4 v14, 0x0

    neg-float v15, v7

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 383
    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 384
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 386
    neg-float v13, v7

    const/high16 v14, -0x8000

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 387
    const/4 v13, 0x0

    invoke-virtual {v10, v7, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 391
    .end local v5           #alpha:F
    .end local v6           #camera:Landroid/graphics/Camera;
    .end local v7           #centerX:F
    .end local v8           #centerY:F
    .end local v9           #degrees:F
    :cond_a7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_105

    .line 394
    const/high16 v13, 0x42b4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mFromDegrees:F

    .line 395
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToDegrees:F

    .line 396
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToDegrees:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mFromDegrees:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v11

    double-to-float v9, v13

    .line 398
    .restart local v9       #degrees:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float v7, v13, v14

    .line 399
    .restart local v7       #centerX:F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mCamera2:Landroid/graphics/Camera;

    .line 401
    .restart local v6       #camera:Landroid/graphics/Camera;
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_110

    .line 403
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 411
    :goto_e3
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 413
    const/high16 v13, 0x42b4

    invoke-virtual {v6, v13}, Landroid/graphics/Camera;->rotateY(F)V

    .line 414
    const/4 v13, 0x0

    const/4 v14, 0x0

    neg-double v15, v3

    double-to-float v15, v15

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 416
    const/4 v13, 0x0

    invoke-virtual {v6, v7, v13, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 417
    invoke-virtual {v6, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 418
    neg-float v13, v7

    const/4 v14, 0x0

    neg-float v15, v7

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 420
    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 421
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 424
    .end local v6           #camera:Landroid/graphics/Camera;
    .end local v7           #centerX:F
    .end local v9           #degrees:F
    :cond_105
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    if-eqz v13, :cond_117

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->invalidate()V

    .line 429
    :goto_10e
    const/4 v13, 0x1

    .line 431
    .end local v10           #matrix:Landroid/graphics/Matrix;
    .end local v11           #time:D
    :goto_10f
    return v13

    .line 406
    .restart local v6       #camera:Landroid/graphics/Camera;
    .restart local v7       #centerX:F
    .restart local v9       #degrees:F
    .restart local v10       #matrix:Landroid/graphics/Matrix;
    .restart local v11       #time:D
    :cond_110
    double-to-float v5, v11

    .line 407
    .restart local v5       #alpha:F
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_e3

    .line 427
    .end local v5           #alpha:F
    .end local v6           #camera:Landroid/graphics/Camera;
    .end local v7           #centerX:F
    .end local v9           #degrees:F
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->finishAnimation()V

    goto :goto_10e

    .line 431
    .end local v10           #matrix:Landroid/graphics/Matrix;
    .end local v11           #time:D
    :cond_11b
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v13

    goto :goto_10f
.end method

.method private getChildStaticTransformation_SlideLeftAnimation_2D(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 19
    .parameter "child"
    .parameter "t"

    .prologue
    .line 316
    const-wide v1, 0x4097700000000000L

    .line 317
    .local v1, ANIMATION_LENGTH:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getWidth()I

    move-result v12

    int-to-double v5, v12

    .line 318
    .local v5, SCREEN_WIDTH:D
    const-wide/high16 v3, 0x4024

    .line 319
    .local v3, GAP:D
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    if-eqz v12, :cond_74

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimBeginTime:D

    sub-double/2addr v12, v14

    const-wide v14, 0x4097700000000000L

    div-double v10, v12, v14

    .line 322
    .local v10, time:D
    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_30

    .line 323
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    .line 324
    const-wide/high16 v10, 0x3ff0

    .line 326
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    double-to-float v13, v10

    invoke-interface {v12, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    float-to-double v10, v12

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    .line 330
    .local v9, m:Landroid/graphics/Matrix;
    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4024

    add-double/2addr v14, v5

    mul-double/2addr v14, v10

    sub-double v7, v12, v14

    .line 332
    .local v7, dx:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_53

    .line 333
    double-to-float v12, v7

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 335
    :cond_53
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_65

    .line 336
    add-double v12, v7, v5

    const-wide/high16 v14, 0x4024

    add-double/2addr v12, v14

    double-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 338
    :cond_65
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    if-eqz v12, :cond_70

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->invalidate()V

    .line 343
    :goto_6e
    const/4 v12, 0x1

    .line 345
    .end local v7           #dx:D
    .end local v9           #m:Landroid/graphics/Matrix;
    .end local v10           #time:D
    :goto_6f
    return v12

    .line 341
    .restart local v7       #dx:D
    .restart local v9       #m:Landroid/graphics/Matrix;
    .restart local v10       #time:D
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->finishAnimation()V

    goto :goto_6e

    .line 345
    .end local v7           #dx:D
    .end local v9           #m:Landroid/graphics/Matrix;
    .end local v10           #time:D
    :cond_74
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v12

    goto :goto_6f
.end method

.method private getChildStaticTransformation_SlideLeftAnimation_3D(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 27
    .parameter "child"
    .parameter "t"

    .prologue
    .line 467
    const-wide/high16 v3, 0x4089

    .line 468
    .local v3, ANIMATION_LENGTH:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v8, v0

    .line 469
    .local v8, SCREEN_WIDTH:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v7, v0

    .line 470
    .local v7, SCREEN_HEIGHT:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_228

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimBeginTime:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4089

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v17, v0

    .line 473
    .local v17, time:F
    const/high16 v20, 0x3f80

    cmpl-float v20, v17, v20

    if-lez v20, :cond_42

    .line 474
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    .line 475
    const/high16 v17, 0x3f80

    .line 478
    :cond_42
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    .line 480
    .local v14, m:Landroid/graphics/Matrix;
    const v20, 0x3f28f5c2

    mul-float v6, v20, v8

    .line 481
    .local v6, MAX_SHIFT_LEFT:F
    const v5, 0x3e4ccccd

    .line 483
    .local v5, GAP:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_dc

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    const v21, 0x3f4ccccd

    div-float v21, v17, v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    .line 486
    .local v18, time_accl:F
    const v20, 0x3f4ccccd

    cmpl-float v20, v17, v20

    if-lez v20, :cond_72

    const/high16 v18, 0x3f80

    .line 487
    :cond_72
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gez v20, :cond_7a

    const/16 v18, 0x0

    .line 488
    :cond_7a
    const/high16 v20, 0x3f80

    cmpl-float v20, v18, v20

    if-lez v20, :cond_82

    const/high16 v18, 0x3f80

    .line 490
    :cond_82
    const/16 v20, 0x0

    mul-float v21, v18, v6

    sub-float v15, v20, v21

    .line 491
    .local v15, pre_dx:F
    const/16 v16, 0x0

    .line 492
    .local v16, pre_dy:F
    move/from16 v13, v18

    .line 494
    .local v13, dz:F
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getTitleBarHeight()F

    move-result v19

    .line 496
    .local v19, titleBarHeight:F
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->get_dy(FZ)F

    move-result v20

    mul-float v20, v20, v7

    add-float v12, v16, v20

    .line 497
    .local v12, dy:F
    add-float v12, v12, v19

    .line 499
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->get_scale(FZ)F

    move-result v10

    .line 500
    .local v10, dScale:F
    sub-float v20, v7, v19

    div-float v9, v20, v7

    .line 501
    .local v9, a:F
    const/high16 v20, 0x3f80

    sub-float v20, v9, v20

    mul-float v20, v20, v13

    const/high16 v21, 0x3f80

    add-float v20, v20, v21

    mul-float v10, v10, v20

    .line 503
    const/high16 v20, 0x4000

    div-float v20, v8, v20

    const/high16 v21, 0x3f80

    sub-float v21, v21, v10

    mul-float v20, v20, v21

    add-float v11, v15, v20

    .line 515
    .local v11, dx:F
    invoke-virtual {v14, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 516
    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 518
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dx:F

    .line 519
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dy:F

    .line 520
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dz:F

    .line 521
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE_dScale:F

    .line 524
    .end local v9           #a:F
    .end local v10           #dScale:F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v13           #dz:F
    .end local v15           #pre_dx:F
    .end local v16           #pre_dy:F
    .end local v18           #time_accl:F
    .end local v19           #titleBarHeight:F
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15b

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    const v21, 0x3e4ccccd

    sub-float v21, v17, v21

    const v22, 0x3f4ccccd

    div-float v21, v21, v22

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    .line 527
    .restart local v18       #time_accl:F
    const v20, 0x3e4ccccd

    cmpg-float v20, v17, v20

    if-gez v20, :cond_105

    const/16 v18, 0x0

    .line 528
    :cond_105
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gez v20, :cond_10d

    const/16 v18, 0x0

    .line 529
    :cond_10d
    const/high16 v20, 0x3f80

    cmpl-float v20, v18, v20

    if-lez v20, :cond_115

    const/high16 v18, 0x3f80

    .line 531
    :cond_115
    const/high16 v20, 0x3f80

    sub-float v20, v20, v18

    mul-float v15, v6, v20

    .line 532
    .restart local v15       #pre_dx:F
    const/16 v16, 0x0

    .line 533
    .restart local v16       #pre_dy:F
    const/high16 v20, 0x3f80

    sub-float v13, v20, v18

    .line 535
    .restart local v13       #dz:F
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->get_dy(FZ)F

    move-result v20

    mul-float v20, v20, v7

    add-float v12, v16, v20

    .line 536
    .restart local v12       #dy:F
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->get_scale(FZ)F

    move-result v10

    .line 537
    .restart local v10       #dScale:F
    const/high16 v20, 0x4000

    div-float v20, v8, v20

    const/high16 v21, 0x3f80

    sub-float v21, v21, v10

    mul-float v20, v20, v21

    add-float v11, v15, v20

    .line 550
    .restart local v11       #dx:F
    invoke-virtual {v14, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 551
    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 553
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dx:F

    .line 554
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dy:F

    .line 555
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dz:F

    .line 556
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER_dScale:F

    .line 559
    .end local v10           #dScale:F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v13           #dz:F
    .end local v15           #pre_dx:F
    .end local v16           #pre_dy:F
    .end local v18           #time_accl:F
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1be

    .line 561
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1cc

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1cc

    .line 564
    const/high16 v20, 0x3f00

    cmpg-float v20, v17, v20

    if-gez v20, :cond_1be

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->removeAllViews()V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->addView(Landroid/view/View;I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->addView(Landroid/view/View;I)V

    .line 583
    :cond_1be
    :goto_1be
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_224

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->invalidate()V

    .line 588
    :goto_1c9
    const/16 v20, 0x1

    .line 590
    .end local v5           #GAP:F
    .end local v6           #MAX_SHIFT_LEFT:F
    .end local v14           #m:Landroid/graphics/Matrix;
    .end local v17           #time:F
    :goto_1cb
    return v20

    .line 571
    .restart local v5       #GAP:F
    .restart local v6       #MAX_SHIFT_LEFT:F
    .restart local v14       #m:Landroid/graphics/Matrix;
    .restart local v17       #time:F
    :cond_1cc
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1be

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1be

    .line 574
    const/high16 v20, 0x3f00

    cmpl-float v20, v17, v20

    if-lez v20, :cond_1be

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->removeAllViews()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->addView(Landroid/view/View;I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->addView(Landroid/view/View;I)V

    goto :goto_1be

    .line 586
    :cond_224
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->finishAnimation()V

    goto :goto_1c9

    .line 590
    .end local v5           #GAP:F
    .end local v6           #MAX_SHIFT_LEFT:F
    .end local v14           #m:Landroid/graphics/Matrix;
    .end local v17           #time:F
    :cond_228
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v20

    goto :goto_1cb
.end method

.method private getTitleBarHeight()F
    .registers 3

    .prologue
    .line 463
    const/high16 v0, 0x42a6

    .line 464
    .local v0, TITLE_BAR_HEIGHT:F
    const/high16 v1, 0x42a6

    return v1
.end method

.method private get_dy(FZ)F
    .registers 10
    .parameter "dz"
    .parameter "urlBarIsVisible"

    .prologue
    const/high16 v6, 0x44c2

    const/high16 v5, 0x4292

    .line 439
    if-eqz p2, :cond_22

    .line 441
    const/high16 v0, 0x4292

    .local v0, a:F
    const/high16 v1, 0x44c2

    .local v1, b:F
    const/high16 v2, 0x4387

    .local v2, c:F
    const/high16 v3, 0x43ca

    .line 442
    .local v3, d:F
    const/high16 v0, 0x437b

    const v1, 0x44494000

    const/high16 v2, 0x4387

    const v3, 0x43e38000

    .line 444
    mul-float v4, v2, p1

    add-float/2addr v4, v1

    div-float v4, v0, v4

    mul-float/2addr v4, v1

    sub-float v4, v0, v4

    div-float/2addr v4, v3

    .line 447
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v2           #c:F
    .end local v3           #d:F
    :goto_21
    return v4

    :cond_22
    const/high16 v4, 0x4387

    mul-float/2addr v4, p1

    add-float/2addr v4, v6

    div-float v4, v5, v4

    mul-float/2addr v4, v6

    sub-float v4, v5, v4

    const/high16 v5, 0x43ca

    div-float/2addr v4, v5

    goto :goto_21
.end method

.method private get_scale(FZ)F
    .registers 9
    .parameter "dz"
    .parameter "urlBarIsVisible"

    .prologue
    const/high16 v5, 0x44c2

    .line 450
    if-eqz p2, :cond_1c

    .line 452
    const/high16 v0, 0x4292

    .local v0, a:F
    const/high16 v1, 0x44c2

    .local v1, b:F
    const/high16 v2, 0x4387

    .local v2, c:F
    const/high16 v3, 0x43ca

    .line 453
    .local v3, d:F
    const/high16 v0, 0x437b

    const v1, 0x44494000

    const/high16 v2, 0x4387

    const v3, 0x43e38000

    .line 454
    mul-float v4, v2, p1

    add-float/2addr v4, v1

    div-float v4, v1, v4

    .line 457
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v2           #c:F
    .end local v3           #d:F
    :goto_1b
    return v4

    :cond_1c
    const/high16 v4, 0x4387

    mul-float/2addr v4, p1

    add-float/2addr v4, v5

    div-float v4, v5, v4

    goto :goto_1b
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;

    .line 87
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mCamera1:Landroid/graphics/Camera;

    .line 88
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mCamera2:Landroid/graphics/Camera;

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    return-void
.end method

.method private maximizeCurrentThreadPriority()V
    .registers 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldPriority:Ljava/lang/Integer;

    if-nez v0, :cond_13

    .line 742
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldPriority:Ljava/lang/Integer;

    .line 744
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 745
    return-void
.end method

.method private overrideWebView(Z)V
    .registers 8
    .parameter "doOverride"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 173
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, mainContentView:Landroid/view/View;
    if-eqz p1, :cond_15

    .line 176
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0, v4}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->setVisibility(I)V

    .line 188
    :goto_14
    return-void

    .line 181
    :cond_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mContext:Landroid/app/Activity;

    const v3, 0x7f050002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 183
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 184
    invoke-virtual {p0, v5}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->setVisibility(I)V

    .line 185
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    goto :goto_14
.end method

.method private restoreCurrentThreadPriority()V
    .registers 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldPriority:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 749
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldPriority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mOldPriority:Ljava/lang/Integer;

    .line 752
    :cond_14
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 597
    sget-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$6;->$SwitchMap$com$android$browser$WebView_to_WebView_RotationAnimator$AnimationType:[I

    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    invoke-virtual {v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 609
    :goto_10
    :pswitch_10
    return-void

    .line 606
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->dispatchDraw_SlideLeftAnimation_3D(Landroid/graphics/Canvas;)V

    goto :goto_10

    .line 597
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected finishAnimation()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->restoreCurrentThreadPriority()V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->overrideWebView(Z)V

    .line 284
    iput-boolean v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebView:Landroid/webkit/WebView;

    .line 287
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$4;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method public getBrowserTabFocusListener()Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mBrowserTabFocusListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$BrowserTabFocusListener;

    return-object v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 5
    .parameter "child"
    .parameter "t"

    .prologue
    .line 660
    sget-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$6;->$SwitchMap$com$android$browser$WebView_to_WebView_RotationAnimator$AnimationType:[I

    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    invoke-virtual {v1}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 670
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    :goto_11
    return v0

    .line 663
    :pswitch_12
    invoke-direct {p0, p1, p2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildStaticTransformation_SlideLeftAnimation_2D(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_11

    .line 665
    :pswitch_17
    invoke-direct {p0, p1, p2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildStaticTransformation_RotateOnYAxisAnimation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_11

    .line 667
    :pswitch_1c
    invoke-direct {p0, p1, p2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->getChildStaticTransformation_SlideLeftAnimation_3D(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_11

    .line 660
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public getWebPageNavegationListener()Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebPageNavegationListener:Lcom/android/browser/WebView_to_WebView_RotationAnimator$WebPageNavegationListener;

    return-object v0
.end method

.method protected initializeAnimation(Landroid/webkit/WebView;)V
    .registers 7
    .parameter "oldWebView"

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    check-cast v2, Lcom/android/browser/WebViewScreenShot;

    invoke-virtual {v2, p1}, Lcom/android/browser/WebViewScreenShot;->setScreenShot(Landroid/webkit/WebView;)V

    .line 193
    iput-object p1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebView:Landroid/webkit/WebView;

    .line 208
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_19

    .line 209
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 210
    .local v1, windowManager:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 211
    iput-object v4, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    .line 213
    .end local v1           #windowManager:Landroid/view/WindowManager;
    :cond_19
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040038

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    .line 214
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    const v3, 0x7f0d0093

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/WebViewScreenShot;

    .line 215
    .local v0, toastScreenshotView:Lcom/android/browser/WebViewScreenShot;
    invoke-virtual {v0, p1}, Lcom/android/browser/WebViewScreenShot;->setScreenShot(Landroid/webkit/WebView;)V

    .line 216
    iget-object v2, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->createWindowWithView(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 117
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AnimView;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    .line 118
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AnimView;

    iput-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    .line 121
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimType:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    sget-object v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    if-ne v0, v1, :cond_38

    .line 122
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AnimView;->setShadowEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AnimView;->setShadowEnabled(Z)V

    .line 131
    :goto_2a
    invoke-virtual {p0, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->setStaticTransformationsEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$1;-><init>(Lcom/android/browser/WebView_to_WebView_RotationAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void

    .line 127
    :cond_38
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewBEFORE:Lcom/android/browser/AnimView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AnimView;->setShadowEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AnimView;->setShadowEnabled(Z)V

    goto :goto_2a
.end method

.method protected startAnimation_PART1(Landroid/webkit/WebView;Z)V
    .registers 5
    .parameter "newWebView"
    .parameter "forceSameViews"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mWebView:Landroid/webkit/WebView;

    if-eq v1, p1, :cond_6

    if-nez p2, :cond_16

    .line 231
    :cond_6
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    instance-of v1, v1, Lcom/android/browser/WebViewLiveProxy;

    if-eqz v1, :cond_27

    .line 232
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    check-cast v1, Lcom/android/browser/WebViewLiveProxy;

    invoke-virtual {v1, p1}, Lcom/android/browser/WebViewLiveProxy;->setWebView(Landroid/webkit/WebView;)V

    .line 236
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->startAnimation_PART2()V

    .line 257
    :cond_16
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    .line 259
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    .line 260
    .local v0, windowManager:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    .line 265
    .end local v0           #windowManager:Landroid/view/WindowManager;
    :cond_26
    return-void

    .line 233
    :cond_27
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    instance-of v1, v1, Lcom/android/browser/WebViewScreenShot;

    if-eqz v1, :cond_13

    .line 234
    iget-object v1, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimViewAFTER:Lcom/android/browser/AnimView;

    check-cast v1, Lcom/android/browser/WebViewScreenShot;

    invoke-virtual {v1, p1}, Lcom/android/browser/WebViewScreenShot;->setScreenShot(Landroid/webkit/WebView;)V

    goto :goto_13
.end method

.method protected startAnimation_PART2()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, v0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->overrideWebView(Z)V

    .line 271
    invoke-direct {p0}, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->maximizeCurrentThreadPriority()V

    .line 273
    iput-boolean v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimating:Z

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/android/browser/WebView_to_WebView_RotationAnimator;->mAnimBeginTime:D

    .line 275
    return-void
.end method
