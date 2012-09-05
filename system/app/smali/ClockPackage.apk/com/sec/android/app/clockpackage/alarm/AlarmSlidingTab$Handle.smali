.class Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
.super Ljava/lang/Object;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;
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

.field private mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

.field private mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x384

    .line 573
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->FIRST_WAVE_DELAY:I

    .line 536
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->SECOND_WAVE_DELAY:I

    .line 538
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->START_WAVE:I

    .line 540
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->ARROW_ANI_DURATION:I

    .line 552
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->ARROW_COUNT:I

    .line 556
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 558
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    .line 933
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    .line 971
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    .line 1145
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->MAKE_TARGET_DURATION:I

    .line 1147
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->RESET_DURATION:I

    .line 574
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    .line 576
    iput p4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    .line 578
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    .line 580
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->init()V

    .line 582
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->reInit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)[Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private hideArrow()V
    .registers 8

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x4

    .line 914
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_28

    .line 918
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_28

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1e
    if-ge v1, v3, :cond_28

    aget-object v2, v0, v1

    .line 922
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 927
    .end local v0           #arr$:[Landroid/widget/ImageView;
    .end local v1           #i$:I
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v3           #len$:I
    :cond_28
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .restart local v0       #arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_31
    if-ge v1, v3, :cond_3b

    aget-object v2, v0, v1

    .line 929
    .restart local v2       #imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 931
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_3b
    return-void
.end method

.method private init()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 587
    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCurrentState:I

    .line 591
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$1;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 619
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 621
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v1, v4, 0x5

    .line 623
    .local v1, diameter:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 625
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 627
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 633
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 635
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ae

    .line 639
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 641
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f02014e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 643
    const v4, -0x57e5f1

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCircleColor:I

    .line 655
    :cond_5b
    :goto_5b
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0x140

    if-ne v4, v5, :cond_c6

    .line 656
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x14

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    .line 657
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1e

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    .line 663
    :goto_83
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 665
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 670
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 672
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 678
    return-void

    .line 645
    :cond_ae
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5b

    .line 647
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 649
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f020150

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 651
    const v4, -0x951d1

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCircleColor:I

    goto :goto_5b

    .line 659
    :cond_c6
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x9

    div-int/lit8 v6, v6, 0x37

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    .line 660
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, -0x9

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    goto :goto_83
.end method

.method private makeAlarmLeftArrowViews(Landroid/widget/FrameLayout;I)V
    .registers 15
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 773
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 775
    const/high16 v0, 0x41a0

    .line 777
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 778
    const/4 v2, 0x0

    .line 779
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 781
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x3

    div-int/lit8 v8, v8, 0x36

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x50

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 784
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    const/4 v8, 0x3

    if-ge v3, v8, :cond_6c

    .line 785
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 786
    const/4 v1, 0x0

    .line 788
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

    .line 789
    const v2, 0x7f020026

    .line 790
    const/16 v4, 0x13

    .line 792
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 795
    const/4 v8, 0x2

    if-eq v3, v8, :cond_5b

    .line 796
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    :cond_5b
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 800
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 784
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 803
    .end local v1           #alpha:I
    :cond_6c
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 806
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 811
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    mul-int/lit8 v8, p2, 0xb

    div-int/lit16 v8, v8, 0xb4

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 813
    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    return-void
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .registers 4

    .prologue
    .line 1008
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1009
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1011
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1014
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .registers 17
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 817
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 819
    const/high16 v0, 0x41a0

    .line 821
    .local v0, ALPHA_GAP:F
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 822
    const/4 v2, 0x0

    .line 823
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 824
    .local v4, layoutGravity:I
    const/4 v9, 0x0

    .line 825
    .local v9, paddingLpValue:I
    const/4 v7, 0x0

    .line 827
    .local v7, marginValue:I
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v11, 0x140

    if-ne v10, v11, :cond_96

    .line 828
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z
    invoke-static {v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 829
    const/16 v9, 0x36

    .line 830
    mul-int/lit8 v10, p2, 0xb

    div-int/lit16 v7, v10, 0xb4

    .line 846
    :goto_2e
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v10, p2, 0x3

    div-int/2addr v10, v9

    mul-int/lit8 v11, p2, 0x3

    div-int/lit8 v11, v11, 0x50

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 849
    .local v8, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3c
    const/4 v10, 0x3

    if-ge v3, v10, :cond_d8

    .line 850
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v11, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v11, v10, v3

    .line 851
    const/4 v1, 0x0

    .line 853
    .local v1, alpha:I
    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ac

    .line 854
    const v2, 0x7f020027

    .line 855
    const/16 v4, 0x15

    .line 856
    const/high16 v10, 0x437f

    const/high16 v11, 0x3f80

    const/high16 v12, 0x41a0

    rsub-int/lit8 v13, v3, 0x3

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 859
    if-eqz v3, :cond_75

    .line 860
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/view/View;

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    :cond_75
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 875
    :cond_7e
    :goto_7e
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v10, v10, v3

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 876
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v10, v10, v3

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 849
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 832
    .end local v1           #alpha:I
    .end local v3           #i:I
    .end local v8           #paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8f
    const/16 v9, 0x50

    .line 833
    mul-int/lit8 v10, p2, 0xb

    div-int/lit8 v7, v10, 0x46

    goto :goto_2e

    .line 836
    :cond_96
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z
    invoke-static {v10}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Z

    move-result v10

    if-eqz v10, :cond_a5

    .line 837
    const/16 v9, 0x36

    .line 838
    mul-int/lit8 v10, p2, 0xb

    div-int/lit16 v7, v10, 0xb4

    goto :goto_2e

    .line 840
    :cond_a5
    const/16 v9, 0x36

    .line 841
    mul-int/lit8 v10, p2, 0x11

    div-int/lit16 v7, v10, 0xb4

    goto :goto_2e

    .line 864
    .restart local v1       #alpha:I
    .restart local v3       #i:I
    .restart local v8       #paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_ac
    const/high16 v10, 0x437f

    const/high16 v11, 0x3f80

    const/high16 v12, 0x41a0

    int-to-float v13, v3

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 865
    const v2, 0x7f020028

    .line 866
    const/16 v4, 0x13

    .line 868
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 871
    const/4 v10, 0x2

    if-eq v3, v10, :cond_7e

    .line 872
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/view/View;

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7e

    .line 879
    .end local v1           #alpha:I
    :cond_d8
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 882
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v10, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 887
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f9

    .line 888
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 893
    :goto_f3
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    return-void

    .line 890
    :cond_f9
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_f3
.end method

.method private reInit()V
    .registers 9

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 687
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 689
    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 690
    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 691
    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    .line 692
    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowImageViews:[Landroid/widget/ImageView;

    .line 694
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$2;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 721
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 723
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v1, v4, 0x5

    .line 725
    .local v1, diameter:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 727
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 729
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v2, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 735
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    .line 737
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 741
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f02014e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 745
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeAlarmLeftArrowViews(Landroid/widget/FrameLayout;I)V

    .line 748
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x6

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    .line 750
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 752
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 758
    new-instance v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    .line 760
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 762
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 769
    return-void
.end method

.method private reset()V
    .registers 10

    .prologue
    const/high16 v2, 0x3f00

    const/high16 v1, 0x3f80

    .line 1192
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1194
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1200
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1202
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1204
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1206
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1207
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1210
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1211
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1212
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 1214
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1215
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1216
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->showArrow()V

    .line 1217
    return-void
.end method

.method private setDisable()V
    .registers 4

    .prologue
    .line 1226
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1228
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1230
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1234
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1235
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->hideArrow()V

    .line 1237
    return-void
.end method

.method private setEnable()V
    .registers 4

    .prologue
    .line 1248
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1250
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1254
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1256
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setVisibility(I)V

    .line 1257
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->showArrow()V

    .line 1258
    return-void
.end method

.method private showArrow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 901
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 907
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mLeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 911
    :cond_33
    return-void
.end method

.method private showTarget()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    .line 1160
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1162
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1166
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1170
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1172
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1174
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1177
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1179
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1180
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setAlpha(I)V

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setVisibility(I)V

    .line 1183
    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    .prologue
    .line 1139
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTopOffset:I

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->log(Ljava/lang/String;)V

    .line 1334
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTopOffset:I

    if-gez v0, :cond_47

    .line 1335
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTopOffset:I

    .line 1338
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1024
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsSnooze:Z
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Z

    move-result v5

    if-eqz v5, :cond_111

    .line 1025
    const/4 v2, 0x0

    .line 1026
    .local v2, marginX:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_5f

    .line 1027
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x25

    div-int/lit16 v2, v5, 0x80

    .line 1032
    :goto_21
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_9a

    .line 1033
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v7, :cond_6a

    .line 1034
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    sub-int v0, v5, v2

    .line 1035
    .local v0, leftHandleLeft:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v1, v5, v6

    .line 1036
    .local v1, leftHandleTop:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1081
    .end local v0           #leftHandleLeft:I
    .end local v1           #leftHandleTop:I
    .end local v2           #marginX:I
    :cond_5e
    :goto_5e
    return-void

    .line 1029
    .restart local v2       #marginX:I
    :cond_5f
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x27

    div-int/lit16 v2, v5, 0x80

    goto :goto_21

    .line 1038
    :cond_6a
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v8, :cond_5e

    .line 1039
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    add-int v3, v5, v2

    .line 1040
    .local v3, rightHandleLeft:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v4, v5, v6

    .line 1041
    .local v4, rightHandleTop:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_5e

    .line 1046
    .end local v3           #rightHandleLeft:I
    .end local v4           #rightHandleTop:I
    :cond_9a
    const/4 v1, 0x0

    .line 1047
    .restart local v1       #leftHandleTop:I
    const/4 v0, 0x0

    .line 1048
    .restart local v0       #leftHandleLeft:I
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v7, :cond_d6

    .line 1049
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x14

    sub-int v0, v5, v6

    .line 1050
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int v1, v5, v6

    .line 1052
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_5e

    .line 1056
    :cond_d6
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    if-ne v5, v8, :cond_5e

    .line 1057
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x14

    add-int v3, v5, v6

    .line 1058
    .restart local v3       #rightHandleLeft:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int v4, v5, v6

    .line 1059
    .restart local v4       #rightHandleTop:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_5e

    .line 1066
    .end local v0           #leftHandleLeft:I
    .end local v1           #leftHandleTop:I
    .end local v2           #marginX:I
    .end local v3           #rightHandleLeft:I
    .end local v4           #rightHandleTop:I
    :cond_111
    const/4 v1, 0x0

    .line 1067
    .restart local v1       #leftHandleTop:I
    const/4 v0, 0x0

    .line 1068
    .restart local v0       #leftHandleLeft:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_156

    .line 1069
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int v1, v5, v6

    .line 1070
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int v0, v5, v6

    .line 1077
    :goto_141
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_5e

    .line 1073
    :cond_156
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x10

    add-int v0, v5, v6

    .line 1074
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x8

    add-int v1, v5, v6

    goto :goto_141
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "motion"

    .prologue
    const/4 v6, 0x0

    .line 1273
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_49

    .line 1275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1277
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1281
    .local v3, y:F
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1283
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->clearAnimation()V

    .line 1285
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->clearAnimation()V

    .line 1287
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setAlpha(I)V

    .line 1289
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1291
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;Z)Z

    .line 1293
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandleType:I

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;I)V

    .line 1295
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setGrabbedState(I)V
    invoke-static {v4, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;I)V

    .line 1297
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1324
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_49
    :goto_49
    return-void

    .line 1309
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_4a
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1310
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->showArrow()V

    .line 1315
    :goto_55
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 1316
    .local v0, ratio:D
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->setAlpha(I)V

    .line 1317
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTargetCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TargetCircle;->setAlpha(I)V

    .line 1318
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mTabCircle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle$TabCircle;->invalidate()V

    goto :goto_49

    .line 1312
    .end local v0           #ratio:D
    :cond_7d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->hideArrow()V

    goto :goto_55
.end method

.method public setState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 1091
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCurrentState:I

    .line 1093
    .local v0, preState:I
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCurrentState:I

    .line 1095
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_20

    .line 1129
    :cond_9
    :goto_9
    return-void

    .line 1099
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->showTarget()V

    goto :goto_9

    .line 1105
    :pswitch_e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1107
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->reset()V

    goto :goto_9

    .line 1109
    :cond_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1111
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setEnable()V

    goto :goto_9

    .line 1119
    :pswitch_1c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setDisable()V

    goto :goto_9

    .line 1095
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_e
        :pswitch_a
        :pswitch_1c
    .end packed-switch
.end method
