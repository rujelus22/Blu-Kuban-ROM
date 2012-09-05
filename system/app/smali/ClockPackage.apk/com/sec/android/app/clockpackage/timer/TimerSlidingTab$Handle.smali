.class Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;
.super Ljava/lang/Object;
.source "TimerSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;,
        Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;
    }
.end annotation


# instance fields
.field private final ARROW_ANI_DURATION:I

.field final ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final RESET_DURATION:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private mArrowContainer:Landroid/widget/LinearLayout;

.field private mArrowImageViews:[Landroid/widget/ImageView;

.field private mCircleColor:I

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowContainer:Landroid/widget/LinearLayout;

.field private mLeftArrowImageViews:[Landroid/widget/ImageView;

.field private mLeftHandler:Landroid/os/Handler;

.field private mParent:Landroid/view/ViewGroup;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

.field private mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x384

    .line 598
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->FIRST_WAVE_DELAY:I

    .line 550
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->SECOND_WAVE_DELAY:I

    .line 554
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->START_WAVE:I

    .line 556
    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->ARROW_ANI_DURATION:I

    .line 572
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->ARROW_COUNT:I

    .line 576
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 578
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    .line 862
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$2;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    .line 900
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$3;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    .line 1078
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->MAKE_TARGET_DURATION:I

    .line 1080
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->RESET_DURATION:I

    .line 600
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 602
    iput p4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    .line 604
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    .line 606
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->init()V

    .line 608
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private hideArrow()V
    .registers 8

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x4

    .line 843
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_28

    .line 847
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 849
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_28

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1e
    if-ge v1, v3, :cond_28

    aget-object v2, v0, v1

    .line 851
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 856
    .end local v0           #arr$:[Landroid/widget/ImageView;
    .end local v1           #i$:I
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v3           #len$:I
    :cond_28
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .restart local v0       #arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_31
    if-ge v1, v3, :cond_3b

    aget-object v2, v0, v1

    .line 858
    .restart local v2       #imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 860
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_3b
    return-void
.end method

.method private init()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 613
    iput v7, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCurrentState:I

    .line 617
    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$1;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 645
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 649
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v1, v4, 0x5

    .line 653
    .local v1, diameter:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 657
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 663
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 671
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 673
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a5

    .line 679
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 681
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f02014e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 683
    const v4, -0x57e5f1

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCircleColor:I

    .line 695
    :cond_5b
    :goto_5b
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->makeAlarmLeftArrowViews(Landroid/widget/FrameLayout;I)V

    .line 699
    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x9

    div-int/lit8 v6, v6, 0x32

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    .line 701
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 703
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 707
    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    .line 709
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 711
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 716
    return-void

    .line 685
    :cond_a5
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5b

    .line 687
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 689
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f020150

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 691
    const v4, -0x951d1

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCircleColor:I

    goto :goto_5b
.end method

.method private makeAlarmLeftArrowViews(Landroid/widget/FrameLayout;I)V
    .registers 15
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 720
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 722
    const/high16 v0, 0x41a0

    .line 724
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 725
    const/4 v2, 0x0

    .line 726
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 728
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x3

    div-int/lit8 v8, v8, 0x36

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x50

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 731
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    const/4 v8, 0x3

    if-ge v3, v8, :cond_6c

    .line 732
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 733
    const/4 v1, 0x0

    .line 735
    .local v1, alpha:I
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    int-to-float v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 736
    const v2, 0x7f020026

    .line 737
    const/16 v4, 0x13

    .line 739
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    const/4 v8, 0x2

    if-eq v3, v8, :cond_5b

    .line 743
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    :cond_5b
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 731
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 750
    .end local v1           #alpha:I
    :cond_6c
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 753
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 758
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    mul-int/lit8 v8, p2, 0xb

    div-int/lit16 v8, v8, 0xb4

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 760
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    return-void
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .registers 4

    .prologue
    .line 938
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 939
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 944
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .registers 15
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 767
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 769
    const/high16 v0, 0x41a0

    .line 771
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 772
    const/4 v2, 0x0

    .line 773
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 775
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x3

    div-int/lit8 v8, v8, 0x36

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x50

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 778
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    const/4 v8, 0x3

    if-ge v3, v8, :cond_a0

    .line 779
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 780
    const/4 v1, 0x0

    .line 782
    .local v1, alpha:I
    iget v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_74

    .line 783
    const v2, 0x7f020027

    .line 784
    const/16 v4, 0x15

    .line 785
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    rsub-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 788
    if-eqz v3, :cond_5a

    .line 789
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    :cond_5a
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 804
    :cond_63
    :goto_63
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 805
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 778
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 793
    :cond_74
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    int-to-float v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 794
    const v2, 0x7f020028

    .line 795
    const/16 v4, 0x13

    .line 797
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    const/4 v8, 0x2

    if-eq v3, v8, :cond_63

    .line 801
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_63

    .line 808
    .end local v1           #alpha:I
    :cond_a0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 811
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 815
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c5

    .line 816
    mul-int/lit8 v8, p2, 0xb

    div-int/lit16 v8, v8, 0xb4

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 820
    :goto_bf
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    return-void

    .line 818
    :cond_c5
    mul-int/lit8 v8, p2, 0xb

    div-int/lit16 v8, v8, 0xb4

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_bf
.end method

.method private reset()V
    .registers 10

    .prologue
    const/high16 v2, 0x3f00

    const/high16 v1, 0x3f80

    .line 1136
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1140
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1146
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1150
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1152
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1154
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1155
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1158
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 1162
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1163
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1164
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->showArrow()V

    .line 1166
    return-void
.end method

.method private setDisable()V
    .registers 4

    .prologue
    .line 1178
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1180
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1187
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->hideArrow()V

    .line 1189
    return-void
.end method

.method private setEnable()V
    .registers 4

    .prologue
    .line 1201
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1203
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1207
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1209
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1210
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->showArrow()V

    .line 1212
    return-void
.end method

.method private showArrow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 835
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 839
    :cond_33
    return-void
.end method

.method private showTarget()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    .line 1094
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1098
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1102
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1106
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1108
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1114
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1117
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1119
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->setAlpha(I)V

    .line 1121
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 1122
    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    .prologue
    .line 1072
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->access$1100(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->access$1100(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTopOffset:I

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->log(Ljava/lang/String;)V

    .line 1289
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTopOffset:I

    if-gez v0, :cond_47

    .line 1290
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTopOffset:I

    .line 1293
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 958
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    if-ne v4, v5, :cond_6e

    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, leftHandleTop:I
    const/4 v0, 0x0

    .line 963
    .local v0, leftHandleLeft:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_49

    .line 964
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    add-int v1, v4, v5

    .line 967
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    add-int v0, v4, v5

    .line 977
    :goto_35
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1006
    .end local v0           #leftHandleLeft:I
    .end local v1           #leftHandleTop:I
    :cond_48
    :goto_48
    return-void

    .line 970
    .restart local v0       #leftHandleLeft:I
    .restart local v1       #leftHandleTop:I
    :cond_49
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x10

    add-int v0, v4, v5

    .line 973
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x8

    add-int v1, v4, v5

    goto :goto_35

    .line 986
    .end local v0           #leftHandleLeft:I
    .end local v1           #leftHandleTop:I
    :cond_6e
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48

    .line 988
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x10

    add-int v2, v4, v5

    .line 992
    .local v2, rightHandleLeft:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    add-int v3, v4, v5

    .line 996
    .local v3, rightHandleTop:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_48
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "motion"

    .prologue
    const/4 v6, 0x0

    .line 1228
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_49

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1232
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1236
    .local v3, y:F
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1238
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1240
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->clearAnimation()V

    .line 1242
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->setAlpha(I)V

    .line 1244
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1246
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->access$702(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;Z)Z

    .line 1248
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    iget v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandleType:I

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->access$800(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;I)V

    .line 1250
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setGrabbedState(I)V
    invoke-static {v4, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->access$900(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;I)V

    .line 1252
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$4;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1279
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_49
    :goto_49
    return-void

    .line 1265
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_4a
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1266
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->showArrow()V

    .line 1271
    :goto_55
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 1272
    .local v0, ratio:D
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1273
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TargetCircle;->setAlpha(I)V

    .line 1274
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle$TabCircle;->invalidate()V

    goto :goto_49

    .line 1268
    .end local v0           #ratio:D
    :cond_7d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->hideArrow()V

    goto :goto_55
.end method

.method public setState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 1020
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCurrentState:I

    .line 1022
    .local v0, preState:I
    iput p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCurrentState:I

    .line 1024
    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_20

    .line 1058
    :cond_9
    :goto_9
    return-void

    .line 1028
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->showTarget()V

    goto :goto_9

    .line 1034
    :pswitch_e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1036
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->reset()V

    goto :goto_9

    .line 1038
    :cond_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1040
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->setEnable()V

    goto :goto_9

    .line 1048
    :pswitch_1c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->setDisable()V

    goto :goto_9

    .line 1024
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_e
        :pswitch_a
        :pswitch_1c
    .end packed-switch
.end method
