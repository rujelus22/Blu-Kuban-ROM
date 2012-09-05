.class public Lcom/android/email/activity/ThreePaneLayout;
.super Landroid/widget/LinearLayout;
.source "ThreePaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ThreePaneLayout$SavedState;,
        Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;,
        Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;,
        Lcom/android/email/activity/ThreePaneLayout$Callback;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static mPaneState:I

.field private static sInit:Z

.field private static sIsListLeftShown:Z

.field private static sLandWidth:I

.field private static sLeftPaneLandWidth:I

.field private static sLeftPaneLandWidthConst:I

.field private static sLeftPanePortWidth:I

.field private static sLeftPanePortWidthConst:I

.field private static sPortWidth:I


# instance fields
.field private final INDEX_GONE:I

.field private final INDEX_INVISIBLE:I

.field private final INDEX_VISIBLE:I

.field private mAnimationStarted:Z

.field private mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

.field private mFirstSizeChangedDone:Z

.field private mInitialPaneState:I

.field private mLastAnimator:Landroid/animation/Animator;

.field private mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

.field private mLeftPane:Landroid/view/View;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListFragmentShadow:Landroid/widget/LinearLayout;

.field private mMessageSendingProgressInList:Landroid/widget/LinearLayout;

.field private mMessageSendingProgressInView:Landroid/widget/LinearLayout;

.field private mMiddlePane:Landroid/view/View;

.field private mOrientation:I

.field private mRightPane:Landroid/view/View;

.field private mShowHideViews:[[[Landroid/view/View;

.field private mShowMessageSendingProgress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 86
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 136
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 147
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 151
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    .line 212
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 136
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 147
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 151
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    .line 207
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 136
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 147
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 151
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    .line 202
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    return p1
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ThreePaneLayout;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    return v0
.end method

.method public static getCurrentPaneState()I
    .registers 1

    .prologue
    .line 425
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method private initView()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->setOrientation(I)V

    .line 218
    return-void
.end method

.method private isLandscape()Z
    .registers 3

    .prologue
    .line 433
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isMesssageListLeftside()Z
    .registers 1

    .prologue
    .line 1004
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return v0
.end method

.method private onFirstSizeChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 655
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-eq v0, v1, :cond_d

    .line 656
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 657
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 659
    :cond_d
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "value"

    .prologue
    .line 1008
    if-eqz p1, :cond_b

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1010
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    .line 1012
    :cond_b
    return-void
.end method

.method private updateMessageSendingProgress()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 534
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 535
    .local v0, ani_appear:Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 537
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 538
    .local v1, ani_disappear:Landroid/view/animation/Animation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 540
    iget-boolean v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    if-nez v2, :cond_2c

    .line 541
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    :goto_26
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    return-void

    .line 546
    :cond_2c
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-nez v2, :cond_45

    .line 547
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 549
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_26

    .line 551
    :cond_45
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5f

    .line 552
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 554
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_26

    .line 557
    :cond_5f
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_26
.end method


# virtual methods
.method public changePaneState(IZZ)V
    .registers 18
    .parameter "newState"
    .parameter "animate"
    .parameter "onlyChangeState"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 707
    const/4 p1, 0x1

    .line 710
    :cond_a
    iget-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v1, :cond_13

    .line 715
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 716
    sput p1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 966
    :cond_12
    :goto_12
    return-void

    .line 719
    :cond_13
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-ne p1, v1, :cond_27

    .line 720
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v1

    if-nez v1, :cond_23

    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_12

    .line 721
    :cond_23
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 726
    :cond_27
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2f

    const/4 v1, 0x4

    if-ne p1, v1, :cond_31

    .line 727
    :cond_2f
    const/16 p2, 0x0

    .line 730
    :cond_31
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v6

    .line 731
    .local v6, previousVisiblePanes:I
    sput p1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 733
    if-nez p3, :cond_12

    .line 744
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 745
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_2ea

    .line 813
    :pswitch_44
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 748
    :pswitch_4a
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sput v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 750
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 751
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v4, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 753
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 754
    const-string v2, "Landscape - moving to [mailbox list + message list]"

    .line 755
    .local v2, animatorLabel:Ljava/lang/String;
    const/4 v8, 0x0

    .line 756
    .local v8, expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int v9, v1, v3

    .line 758
    .local v9, expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_74
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    aget-object v12, v1, v3

    .line 903
    .local v12, showHideViews:[[Landroid/view/View;
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    const/4 v1, 0x0

    aget-object v3, v12, v1

    const/4 v1, 0x1

    aget-object v4, v12, v1

    const/4 v1, 0x2

    aget-object v5, v12, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;-><init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V

    .line 922
    .local v0, listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    .line 926
    const/4 v1, 0x0

    aget-object v7, v12, v1

    .local v7, arr$:[Landroid/view/View;
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_91
    if-ge v10, v11, :cond_2bc

    aget-object v13, v7, v10

    .line 927
    .local v13, v:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-nez v1, :cond_255

    .line 930
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 931
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget-boolean v3, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    invoke-interface {v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 932
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 933
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginListLand()I

    move-result v1

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    .line 926
    :cond_b4
    :goto_b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_91

    .line 762
    .end local v0           #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #arr$:[Landroid/view/View;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #showHideViews:[[Landroid/view/View;
    .end local v13           #v:Landroid/view/View;
    :pswitch_b7
    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sput v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 764
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 765
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v4, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 767
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 771
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    const-string v2, "Landscape - moving to [message list + message view]"

    .line 774
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    neg-int v8, v1

    .line 775
    .restart local v8       #expectedMailboxLeft:I
    sget v9, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 776
    .restart local v9       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 779
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_e6
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 780
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 781
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 782
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 783
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 785
    const-string v2, "Landscape - moving to [message list]"

    .line 786
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v8, 0x0

    .line 787
    .restart local v8       #expectedMailboxLeft:I
    sget v9, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    .line 788
    .restart local v9       #expectedMessageListWidth:I
    goto/16 :goto_74

    .line 790
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_10d
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 791
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 792
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 794
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 795
    const-string v2, "Landscape - moving to [message view]"

    .line 796
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    .line 797
    .restart local v8       #expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/2addr v1, v3

    neg-int v9, v1

    .line 798
    .restart local v9       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 801
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_13c
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 802
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 803
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 804
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 805
    const-string v2, "Landscape - moving to [mailbox list]"

    .line 806
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v8, 0x0

    .line 807
    .restart local v8       #expectedMailboxLeft:I
    const/4 v9, 0x0

    .line 810
    .restart local v9       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 816
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :cond_161
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_2fa

    .line 898
    :pswitch_166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 820
    :pswitch_16c
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 821
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 822
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 823
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 824
    const-string v2, "Potrait - moving to [mailbox list + message list]"

    .line 825
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v8, 0x0

    .line 826
    .restart local v8       #expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v9, v1, v3

    .line 827
    .restart local v9       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 847
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_19b
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 848
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 850
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 852
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 854
    const-string v2, "Potrait - moving to [message list + message view]"

    .line 855
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    .line 856
    .restart local v8       #expectedMailboxLeft:I
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 857
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/2addr v1, v3

    neg-int v9, v1

    .line 862
    .restart local v9       #expectedMessageListWidth:I
    :goto_1ca
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 859
    .end local v9           #expectedMessageListWidth:I
    :cond_1d1
    sget v9, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    .restart local v9       #expectedMessageListWidth:I
    goto :goto_1ca

    .line 865
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_1d4
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 866
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 867
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 868
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 869
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 870
    const/4 v8, 0x0

    .line 871
    .restart local v8       #expectedMailboxLeft:I
    sget v9, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    .line 872
    .restart local v9       #expectedMessageListWidth:I
    const-string v2, "Potrait - moving to [message list]"

    .line 873
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 876
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_201
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 877
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 878
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 880
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 881
    const-string v2, "Potrait - moving to [message view]"

    .line 882
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    .line 883
    .restart local v8       #expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/2addr v1, v3

    neg-int v9, v1

    .line 884
    .restart local v9       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 888
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v8           #expectedMailboxLeft:I
    .end local v9           #expectedMessageListWidth:I
    :pswitch_230
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 889
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 890
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 891
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 892
    const-string v2, "Potrait - moving to [mailbox list]"

    .line 893
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v8, 0x0

    .line 894
    .restart local v8       #expectedMailboxLeft:I
    const/4 v9, 0x0

    .line 895
    .restart local v9       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 935
    .restart local v0       #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .restart local v7       #arr$:[Landroid/view/View;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #showHideViews:[[Landroid/view/View;
    .restart local v13       #v:Landroid/view/View;
    :cond_255
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_278

    .line 936
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 937
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget-boolean v3, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    invoke-interface {v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 938
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_271

    .line 939
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginViewLand()I

    move-result v1

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    .line 941
    :cond_271
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->makeMessageView()V

    goto/16 :goto_b4

    .line 942
    :cond_278
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_28d

    .line 943
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 944
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget-boolean v3, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    invoke-interface {v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 945
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto/16 :goto_b4

    .line 946
    :cond_28d
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_29e

    .line 947
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 948
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget-boolean v3, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    invoke-interface {v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    goto/16 :goto_b4

    .line 949
    :cond_29e
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b4

    .line 950
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 951
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget-boolean v3, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    invoke-interface {v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 952
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 953
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginViewLand()I

    move-result v1

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto/16 :goto_b4

    .line 957
    .end local v13           #v:Landroid/view/View;
    :cond_2bc
    const/4 v1, 0x1

    aget-object v7, v12, v1

    array-length v11, v7

    const/4 v10, 0x0

    :goto_2c1
    if-ge v10, v11, :cond_2cc

    aget-object v13, v7, v10

    .line 958
    .restart local v13       #v:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 957
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c1

    .line 960
    .end local v13           #v:Landroid/view/View;
    :cond_2cc
    const/4 v1, 0x2

    aget-object v7, v12, v1

    array-length v11, v7

    const/4 v10, 0x0

    :goto_2d1
    if-ge v10, v11, :cond_2dd

    aget-object v13, v7, v10

    .line 961
    .restart local v13       #v:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d1

    .line 963
    .end local v13           #v:Landroid/view/View;
    :cond_2dd
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v1, v6}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 964
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChangedAfterAni()V

    goto/16 :goto_12

    .line 745
    nop

    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_b7
        :pswitch_44
        :pswitch_e6
        :pswitch_10d
        :pswitch_13c
    .end packed-switch

    .line 816
    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_16c
        :pswitch_19b
        :pswitch_166
        :pswitch_1d4
        :pswitch_201
        :pswitch_230
    .end packed-switch
.end method

.method public controlLeftSplitBar(I)V
    .registers 5
    .parameter "nValue"

    .prologue
    .line 490
    move v0, p1

    .line 491
    .local v0, splitPoint:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    if-nez v1, :cond_a

    .line 509
    :cond_9
    :goto_9
    return-void

    .line 493
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/ThreePaneLayout$2;-><init>(Lcom/android/email/activity/ThreePaneLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public controlRightSplitBar(I)V
    .registers 5
    .parameter "nValue"

    .prologue
    .line 466
    move v0, p1

    .line 467
    .local v0, splitPoint:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    if-nez v1, :cond_a

    .line 485
    :cond_9
    :goto_9
    return-void

    .line 469
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/ThreePaneLayout$1;-><init>(Lcom/android/email/activity/ThreePaneLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 401
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 402
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    .line 403
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    .line 404
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    .line 405
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    move-object v0, v1

    .line 406
    check-cast v0, [[[Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 407
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 408
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 409
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 411
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 412
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    .line 413
    return-void
.end method

.method public getAnimationStatus()Z
    .registers 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    return v0
.end method

.method public getLeftPaneId()I
    .registers 2

    .prologue
    .line 984
    const v0, 0x7f10029c

    return v0
.end method

.method public getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getMiddlePaneId()I
    .registers 2

    .prologue
    .line 992
    const v0, 0x7f10029d

    return v0
.end method

.method public getRightPaneId()I
    .registers 2

    .prologue
    .line 1000
    const v0, 0x7f10029f

    return v0
.end method

.method public getVisiblePanes()I
    .registers 3

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 518
    or-int/lit8 v0, v0, 0x4

    .line 519
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    .line 520
    or-int/lit8 v0, v0, 0x2

    .line 521
    :cond_15
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1f

    .line 522
    or-int/lit8 v0, v0, 0x1

    .line 523
    :cond_1f
    return v0
.end method

.method protected initCurrentPaneState()V
    .registers 2

    .prologue
    .line 220
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 221
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 222
    :cond_18
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 229
    :goto_1b
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 231
    return-void

    .line 224
    :cond_20
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto :goto_1b

    .line 227
    :cond_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto :goto_1b
.end method

.method public isFullListMode()Z
    .registers 3

    .prologue
    .line 974
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFullViewMode()Z
    .registers 3

    .prologue
    .line 970
    sget v0, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onBackPressed(Z)Z
    .registers 6
    .parameter "isSystemBackKey"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 576
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 577
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v2, :pswitch_data_90

    :cond_e
    :goto_e
    :pswitch_e
    move v0, v1

    .line 644
    :goto_f
    return v0

    .line 580
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 581
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 582
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    .line 583
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-interface {v2, v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setRightSplitType(II)V

    .line 585
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 591
    :cond_29
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 592
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 597
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 598
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 599
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 600
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v2, v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setLeftSplitType(I)V

    goto :goto_f

    .line 604
    :cond_48
    :pswitch_48
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 607
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 608
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 610
    :cond_56
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 615
    :cond_5a
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v2, :pswitch_data_a0

    :pswitch_5f
    goto :goto_e

    .line 630
    :pswitch_60
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 631
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 632
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    sput v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 633
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v2, v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setLeftSplitType(I)V

    goto :goto_f

    .line 618
    :pswitch_75
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 619
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 622
    :cond_7f
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 627
    :pswitch_83
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 637
    :cond_87
    :pswitch_87
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 640
    :pswitch_8b
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_f

    .line 577
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_33
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_48
        :pswitch_4c
    .end packed-switch

    .line 615
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_60
        :pswitch_75
        :pswitch_83
        :pswitch_5f
        :pswitch_87
        :pswitch_8b
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 237
    const v0, 0x7f10029c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 238
    const v0, 0x7f10029d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 239
    const v0, 0x7f10029f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 241
    const v0, 0x7f1002a0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 243
    const v0, 0x7f10029e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    .line 244
    const v0, 0x7f1002a1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    .line 248
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    .line 252
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 253
    const/4 v0, 0x6

    new-array v0, v0, [[[Landroid/view/View;

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 376
    :goto_105
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 377
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_217

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_217

    .line 378
    :cond_11d
    iput v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 386
    :goto_11f
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    if-nez v0, :cond_159

    .line 387
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    .line 389
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    .line 391
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    .line 392
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    .line 393
    sput-boolean v6, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    .line 395
    :cond_159
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 396
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    .line 397
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->setLeftPane(Landroid/view/View;)V

    .line 398
    return-void

    .line 312
    :cond_167
    const/4 v0, 0x6

    new-array v0, v0, [[[Landroid/view/View;

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    goto/16 :goto_105

    .line 380
    :cond_217
    iput v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto/16 :goto_11f

    .line 383
    :cond_21b
    iput v5, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto/16 :goto_11f
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 450
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    .line 451
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 452
    iget v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 453
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 442
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 443
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    .line 444
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 458
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v0, :cond_d

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    .line 460
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->onFirstSizeChanged()V

    .line 462
    :cond_d
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 429
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 430
    return-void
.end method

.method public setFragmentWidth(I)V
    .registers 7
    .parameter "orientation"

    .prologue
    const/4 v2, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1015
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_15

    .line 1016
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1017
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1020
    :cond_15
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    .line 1021
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 1022
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_214

    .line 1164
    :goto_22
    :pswitch_22
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    .line 1166
    return-void

    .line 1024
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1025
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1026
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1027
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1033
    :goto_3f
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto :goto_22

    .line 1029
    :cond_54
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1030
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1031
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_3f

    .line 1039
    :pswitch_6b
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1040
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1041
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1042
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1048
    :goto_84
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto :goto_22

    .line 1044
    :cond_99
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1045
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1046
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_84

    .line 1058
    :pswitch_b0
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1059
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1062
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1068
    :pswitch_d7
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1069
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1070
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1072
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1080
    :pswitch_fe
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1081
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1082
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1084
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1091
    :cond_12a
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_224

    :pswitch_12f
    goto/16 :goto_22

    .line 1093
    :pswitch_131
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1095
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1096
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1102
    :goto_14a
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1098
    :cond_160
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1099
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1100
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_14a

    .line 1119
    :pswitch_177
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1120
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1121
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1122
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1130
    :pswitch_19e
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1131
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1132
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1134
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1140
    :pswitch_1c5
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1141
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1142
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1144
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1151
    :pswitch_1ec
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1153
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1154
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1156
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_22

    .line 1022
    nop

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_26
        :pswitch_6b
        :pswitch_22
        :pswitch_b0
        :pswitch_d7
        :pswitch_fe
    .end packed-switch

    .line 1091
    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_131
        :pswitch_177
        :pswitch_12f
        :pswitch_19e
        :pswitch_1c5
        :pswitch_1ec
    .end packed-switch
.end method

.method public setMailboxListLeftAnim(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1176
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 1180
    :goto_d
    return-void

    .line 1177
    :catch_e
    move-exception v0

    .line 1178
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public setMessageListWidthAnim(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1185
    return-void
.end method

.method public setVisibleMessageSendingProgress(Z)V
    .registers 2
    .parameter "bVisible"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 529
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    .line 530
    return-void
.end method

.method public showLeftPane()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 673
    return-void
.end method

.method public showMiddlePane()V
    .registers 4

    .prologue
    .line 691
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 692
    return-void
.end method

.method public showMiddlePane(Z)V
    .registers 4
    .parameter "onlyChangeMode"

    .prologue
    .line 695
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 696
    return-void
.end method

.method public showRightOnlyPane()V
    .registers 4

    .prologue
    .line 702
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 703
    return-void
.end method

.method public showRightPane()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 680
    return-void
.end method

.method public showRightPane(Z)V
    .registers 4
    .parameter "onlyChangeMode"

    .prologue
    .line 683
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 684
    return-void
.end method
