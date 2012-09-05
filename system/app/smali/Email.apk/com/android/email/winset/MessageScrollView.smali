.class public Lcom/android/email/winset/MessageScrollView;
.super Landroid/widget/ScrollView;
.source "MessageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final sHitFrame:Landroid/graphics/Rect;


# instance fields
.field private final CHECKMODE:I

.field public final MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

.field private final TIME_BUTTON_AINIMATION:J

.field private final TIME_BUTTON_DISABLE:J

.field private final TOUCHMODE:I

.field private mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

.field private final mChildrenNeedingAllTouches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mInCustomDrag:Z

.field private mInMessageView:Z

.field private mIsBottom:Z

.field private mIsMessageTab:Z

.field private mIsScrollChange:Z

.field private mIsShowLinearlayoutToTheTop:Z

.field private mIsTouchDown:Z

.field private mLastX:F

.field private mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

.field private mMessageWebView:Lcom/android/email/activity/MessageWebView;

.field private mPreActionMode:Z

.field private mPreCheckNext:Z

.field private mPreCheckPrev:Z

.field private mPreLocationY:F

.field private mPreScrollX:I

.field private mPrevScrollY:I

.field private mResetView:Z

.field private mStartX:F

.field private mStartY:F

.field private mToMessageTab:Z

.field private mTouchEventEnd:Z

.field private mTouchSlop:I

.field private mWebViewPrevScrollX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 698
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/winset/MessageScrollView;->sHitFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 35
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 39
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 40
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreActionMode:Z

    .line 45
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->TOUCHMODE:I

    .line 46
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->CHECKMODE:I

    .line 51
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    .line 52
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 60
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    .line 61
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    .line 63
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 69
    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 74
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mWebViewPrevScrollX:I

    .line 724
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I

    .line 725
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z

    .line 726
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 35
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 39
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 40
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreActionMode:Z

    .line 45
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->TOUCHMODE:I

    .line 46
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->CHECKMODE:I

    .line 51
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    .line 52
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 60
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    .line 61
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    .line 63
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 69
    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 74
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mWebViewPrevScrollX:I

    .line 724
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I

    .line 725
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z

    .line 726
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 35
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 39
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 40
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreActionMode:Z

    .line 45
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->TOUCHMODE:I

    .line 46
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->CHECKMODE:I

    .line 51
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    .line 52
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    .line 60
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    .line 61
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    .line 63
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 69
    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 74
    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mWebViewPrevScrollX:I

    .line 724
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I

    .line 725
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z

    .line 726
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/winset/MessageScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/winset/MessageScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/winset/MessageScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/winset/MessageScrollView;)Lcom/android/email/activity/MessageWebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/winset/MessageScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/winset/MessageScrollView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z

    return v0
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .registers 2
    .parameter "child"

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private excludeChildrenFromInterceptions(Landroid/view/View;)V
    .registers 7
    .parameter "node"

    .prologue
    .line 686
    instance-of v4, p1, Landroid/webkit/WebView;

    if-eqz v4, :cond_a

    .line 687
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView;->mChildrenNeedingAllTouches:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_9
    return-void

    .line 688
    :cond_a
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    move-object v3, p1

    .line 689
    check-cast v3, Landroid/view/ViewGroup;

    .line 690
    .local v3, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 691
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v1, :cond_9

    .line 692
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 693
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->excludeChildrenFromInterceptions(Landroid/view/View;)V

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method private inMessageWebView(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-static {v1}, Lcom/android/email/winset/MessageScrollView;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 303
    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_2e

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_2e

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2e

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_2e

    const/4 v0, 0x1

    .line 307
    :cond_2e
    return v0
.end method

.method private declared-synchronized removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessageDelayed(IJ)V
    .registers 6
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public ShowToTheTopButton(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    .line 550
    return-void
.end method

.method public ShowToTheTopButton(ZZ)V
    .registers 10
    .parameter "isShow"
    .parameter "isAnimation"

    .prologue
    const-wide/16 v5, 0x15e

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 553
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    if-eq v0, p1, :cond_5c

    .line 554
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_17

    .line 555
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    .line 559
    :cond_17
    if-ne p1, v1, :cond_3f

    .line 560
    if-ne p2, v1, :cond_2e

    .line 561
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    .line 562
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 563
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 565
    :cond_2e
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    invoke-direct {p0, v2}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 567
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/email/winset/MessageScrollView;->sendMessageDelayed(IJ)V

    .line 576
    :goto_3c
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    .line 585
    :cond_3e
    :goto_3e
    return-void

    .line 569
    :cond_3f
    if-ne p2, v1, :cond_54

    .line 570
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    .line 571
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 572
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 574
    :cond_54
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3c

    .line 578
    :cond_5c
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseAlwaysShowToTopButton()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 579
    if-ne p1, v1, :cond_3e

    .line 580
    invoke-direct {p0, v2}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 581
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/email/winset/MessageScrollView;->sendMessageDelayed(IJ)V

    goto :goto_3e
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_b

    .line 653
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollExtent()I

    move-result v0

    .line 656
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_a
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_b

    .line 644
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollOffset()I

    move-result v0

    .line 647
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    goto :goto_a
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_b

    .line 635
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollRange()I

    move-result v0

    .line 638
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_12

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 503
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .registers 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_b

    .line 98
    new-instance v2, Lcom/android/email/winset/MessageScrollView$1;

    invoke-direct {v2, p0}, Lcom/android/email/winset/MessageScrollView$1;-><init>(Lcom/android/email/winset/MessageScrollView;)V

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 114
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/email/winset/MessageScrollView;->mTouchSlop:I

    .line 118
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/winset/MessageScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 120
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseGesture()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 121
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;

    invoke-direct {v3, p0}, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;-><init>(Lcom/android/email/winset/MessageScrollView;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 123
    :cond_2f
    return-void
.end method

.method public isTextSelecting()Z
    .registers 2

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreActionMode:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->isCreateActionMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCheckNext()Z
    .registers 7

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, bCheckNext:Z
    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v3, :cond_54

    .line 591
    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getIsRight()Z

    move-result v2

    .line 592
    .local v2, right:Z
    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->onCheckHorizontalScroll()Z

    move-result v1

    .line 594
    .local v1, haveHScroll:Z
    if-eqz v1, :cond_1d

    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_55

    if-eqz v2, :cond_55

    :cond_1d
    const/4 v0, 0x1

    .line 596
    :goto_1e
    sget-boolean v3, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SCROLL:Z

    if-eqz v3, :cond_54

    .line 597
    const-string v3, "DEBUG_VIEWPAGER_SCROLL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckNext() - bCheckNext["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] right["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] haveHScroll["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .end local v1           #haveHScroll:Z
    .end local v2           #right:Z
    :cond_54
    return v0

    .line 594
    .restart local v1       #haveHScroll:Z
    .restart local v2       #right:Z
    :cond_55
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onCheckPrevious()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 608
    .local v0, bCheckPrevious:Z
    :cond_e
    sget-boolean v1, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SCROLL:Z

    if-eqz v1, :cond_30

    .line 609
    const-string v1, "DEBUG_VIEWPAGER_SCROLL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckPrevious() - bCheckPrevious["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_30
    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 674
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 675
    invoke-direct {p0, p0}, Lcom/android/email/winset/MessageScrollView;->excludeChildrenFromInterceptions(Landroid/view/View;)V

    .line 676
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 206
    .local v0, action:I
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 208
    .local v2, bIntercept:Z
    if-nez v0, :cond_2c

    .line 209
    const/4 v11, 0x1

    if-ne v2, v11, :cond_10

    .line 210
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    .line 213
    :cond_10
    iget-object v11, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageWebView;->getScrollX()I

    move-result v11

    iput v11, p0, Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I

    .line 214
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->onCheckNext()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z

    .line 215
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->onCheckPrevious()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z

    .line 216
    iget-object v11, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageWebView;->isCreateActionMode()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mPreActionMode:Z

    .line 219
    :cond_2c
    iget-object v11, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v11, :cond_64

    iget-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_64

    .line 221
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 222
    .local v6, location:[I
    iget-object v11, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v11, v6}, Lcom/android/email/activity/MessageWebView;->getLocationInWindow([I)V

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 224
    .local v7, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 225
    .local v8, rawY:F
    const/4 v11, 0x0

    aget v11, v6, v11

    int-to-float v11, v11

    sub-float v3, v7, v11

    .line 226
    .local v3, curRawX:F
    const/4 v11, 0x1

    aget v11, v6, v11

    int-to-float v11, v11

    sub-float v4, v8, v11

    .line 227
    .local v4, curRawY:F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_64

    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    if-lez v11, :cond_64

    float-to-int v11, v3

    float-to-int v12, v4

    invoke-direct {p0, v11, v12}, Lcom/android/email/winset/MessageScrollView;->inMessageWebView(II)Z

    move-result v11

    if-eqz v11, :cond_64

    .line 229
    const/4 v2, 0x1

    .line 238
    .end local v3           #curRawX:F
    .end local v4           #curRawY:F
    .end local v6           #location:[I
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    :cond_64
    iget-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8a

    if-nez v0, :cond_8a

    .line 239
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .local v5, hitFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/email/winset/MessageScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 243
    .local v1, actionIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 244
    .local v9, x:F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 246
    .local v10, y:F
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_8a

    .line 247
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 251
    .end local v1           #actionIndex:I
    .end local v5           #hitFrame:Landroid/graphics/Rect;
    .end local v9           #x:F
    .end local v10           #y:F
    :cond_8a
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 494
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNext()V
    .registers 2

    .prologue
    .line 781
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseGesture()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransactionAnimation()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    .line 783
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/email/activity/MessageListXL;

    if-eqz v0, :cond_1d

    .line 784
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onMoveToOlder()V

    .line 787
    :cond_1d
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 6
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 546
    return-void
.end method

.method public onPrevious()V
    .registers 2

    .prologue
    .line 790
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseGesture()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransactionAnimation()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    .line 792
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/email/activity/MessageListXL;

    if-eqz v0, :cond_1d

    .line 793
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onMoveToNewer()V

    .line 797
    :cond_1d
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 12
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    if-ne v3, v6, :cond_33

    .line 509
    iput-boolean v5, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 510
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    invoke-virtual {p0, v3, v4}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    .line 517
    :goto_11
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-ne v3, v6, :cond_47

    .line 518
    if-nez p2, :cond_41

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    .line 524
    :goto_1a
    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_32

    .line 525
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollExtent()I

    move-result v0

    .line 526
    .local v0, vExtent:I
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollOffset()I

    move-result v1

    .line 527
    .local v1, vOffset:I
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollRange()I

    move-result v2

    .line 529
    .local v2, vRange:I
    sub-int v3, v2, v0

    if-ne v3, v1, :cond_44

    .line 530
    if-lt p2, p4, :cond_32

    .line 531
    iput-boolean v6, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    .line 540
    .end local v0           #vExtent:I
    .end local v1           #vOffset:I
    .end local v2           #vRange:I
    :cond_32
    :goto_32
    return-void

    .line 511
    :cond_33
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    if-ne v3, v6, :cond_3d

    if-lez p2, :cond_3d

    .line 512
    invoke-virtual {p0, v5, v5}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    goto :goto_11

    .line 514
    :cond_3d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    goto :goto_11

    .line 521
    :cond_41
    iput-boolean v6, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    goto :goto_1a

    .line 534
    .restart local v0       #vExtent:I
    .restart local v1       #vOffset:I
    .restart local v2       #vRange:I
    :cond_44
    iput-boolean v5, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    goto :goto_32

    .line 538
    .end local v0           #vExtent:I
    .end local v1           #vOffset:I
    .end local v2           #vRange:I
    :cond_47
    iput p2, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    goto :goto_32
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 661
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 662
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_43

    .line 663
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSizeChanged() w["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] h["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] oldw["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] oldh["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_43
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25
    .parameter "ev"

    .prologue
    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 313
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 314
    .local v6, curX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 316
    .local v7, curY:F
    sget-boolean v20, Lcom/android/email/util/EmailFeature;->DEBUG_TOUCHEVENT:Z

    if-eqz v20, :cond_48

    .line 317
    const-string v20, "DEBUG_TOUCHEVENT"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MessageScrollView::onTouchEvent() action["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " curX["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] curY["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8b

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_8b

    .line 323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    move/from16 v20, v0

    if-nez v20, :cond_8b

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 325
    .local v18, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 326
    .local v19, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/winset/MessageScrollView;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8b

    .line 327
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    .line 348
    .end local v18           #y:F
    .end local v19           #yDiff:I
    :cond_8b
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_99

    .line 349
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    .line 352
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_237

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_237

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v8

    .line 354
    .local v8, ev1:Landroid/view/MotionEvent;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v10, v0, [I

    .line 355
    .local v10, location:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/email/activity/MessageWebView;->getLocationInWindow([I)V

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 358
    .local v11, rawX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 360
    .local v12, rawY:F
    const/16 v20, 0x0

    aget v20, v10, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v4, v11, v20

    .line 361
    .local v4, curRawX:F
    const/16 v20, 0x1

    aget v20, v10, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v5, v12, v20

    .line 363
    .local v5, curRawY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_116

    .line 365
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    .line 366
    const/16 v20, 0x0

    cmpl-float v20, v4, v20

    if-lez v20, :cond_112

    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-lez v20, :cond_112

    .line 367
    float-to-int v0, v4

    move/from16 v20, v0

    float-to-int v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/winset/MessageScrollView;->inMessageWebView(II)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    .line 372
    :cond_112
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/winset/MessageScrollView;->mLastX:F

    .line 375
    :cond_116
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_160

    .line 376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    move/from16 v20, v0

    if-nez v20, :cond_190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getIsSelectedCursor()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_152

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_152

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/MessageScrollView;->isTextSelecting()Z

    move-result v20

    if-nez v20, :cond_152

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_190

    .line 379
    :cond_152
    invoke-virtual {v8, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/email/activity/MessageWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 412
    :cond_160
    :goto_160
    const/16 v20, 0x1

    aget v20, v10, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/winset/MessageScrollView;->mPreLocationY:F

    .line 418
    .end local v4           #curRawX:F
    .end local v5           #curRawY:F
    .end local v8           #ev1:Landroid/view/MotionEvent;
    .end local v10           #location:[I
    .end local v11           #rawX:F
    .end local v12           #rawY:F
    :cond_16f
    :goto_16f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v9

    .line 419
    .local v9, ev2:Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 421
    packed-switch v3, :pswitch_data_378

    .line 462
    :cond_185
    :goto_185
    :pswitch_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    if-nez v20, :cond_30d

    .line 463
    const/16 v20, 0x0

    .line 488
    :goto_18f
    return v20

    .line 382
    .end local v9           #ev2:Landroid/view/MotionEvent;
    .restart local v4       #curRawX:F
    .restart local v5       #curRawY:F
    .restart local v8       #ev1:Landroid/view/MotionEvent;
    .restart local v10       #location:[I
    .restart local v11       #rawX:F
    .restart local v12       #rawY:F
    :cond_190
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_160

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/winset/MessageScrollView;->mLastX:F

    move/from16 v20, v0

    sub-float v16, v20, v6

    .line 384
    .local v16, x:F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 385
    .local v17, xDiff:I
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_20c

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getScrollX()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v17, v0

    .line 394
    :goto_1c4
    if-eqz v17, :cond_1d7

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageWebView;->scrollBy(II)V

    .line 398
    :cond_1d7
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/winset/MessageScrollView;->mLastX:F

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    move/from16 v20, v0

    if-nez v20, :cond_160

    .line 401
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    .line 402
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/winset/MessageScrollView;->mPreLocationY:F

    move/from16 v20, v0

    sub-float v20, v12, v20

    move/from16 v0, v20

    invoke-virtual {v8, v4, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/email/activity/MessageWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_160

    .line 388
    :cond_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollExtent()I

    move-result v13

    .line 389
    .local v13, vExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollOffset()I

    move-result v14

    .line 390
    .local v14, vOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollRange()I

    move-result v15

    .line 391
    .local v15, vRange:I
    sub-int v20, v15, v13

    sub-int v20, v20, v14

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    goto :goto_1c4

    .line 413
    .end local v4           #curRawX:F
    .end local v5           #curRawY:F
    .end local v8           #ev1:Landroid/view/MotionEvent;
    .end local v10           #location:[I
    .end local v11           #rawX:F
    .end local v12           #rawY:F
    .end local v13           #vExtent:I
    .end local v14           #vOffset:I
    .end local v15           #vRange:I
    .end local v16           #x:F
    .end local v17           #xDiff:I
    :cond_237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_16f

    .line 414
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    goto/16 :goto_16f

    .line 423
    .restart local v9       #ev2:Landroid/view/MotionEvent;
    :pswitch_247
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/winset/MessageScrollView;->mStartX:F

    .line 424
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    .line 425
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    .line 426
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 428
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_185

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_185

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getScrollX()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/winset/MessageScrollView;->mWebViewPrevScrollX:I

    goto/16 :goto_185

    .line 441
    :pswitch_28f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    .line 442
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    .line 443
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_185

    .line 444
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2cc

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/MessageScrollView;->getScrollY()I

    move-result v20

    if-lez v20, :cond_185

    .line 446
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto/16 :goto_185

    .line 448
    :cond_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_185

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_185

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollExtent()I

    move-result v13

    .line 450
    .restart local v13       #vExtent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollOffset()I

    move-result v14

    .line 451
    .restart local v14       #vOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollRange()I

    move-result v15

    .line 452
    .restart local v15       #vRange:I
    sub-int v20, v15, v13

    move/from16 v0, v20

    if-ne v0, v14, :cond_185

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    move/from16 v20, v0

    sub-float v20, v20, v7

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_185

    .line 454
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto/16 :goto_185

    .line 465
    .end local v13           #vExtent:I
    .end local v14           #vOffset:I
    .end local v15           #vRange:I
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/MessageWebView;->getIsSelectedCursor()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_34f

    .line 466
    sget-boolean v20, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SCROLL:Z

    if-eqz v20, :cond_32a

    .line 467
    const-string v20, "DEBUG_VIEWPAGER_SCROLL"

    const-string v21, "onTouchEvent() - getIsSelectedCursor() is true"

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_32a
    :goto_32a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    if-eqz v20, :cond_34b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_34b

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/MessageScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 488
    :cond_34b
    const/16 v20, 0x1

    goto/16 :goto_18f

    .line 470
    :cond_34f
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/MessageScrollView;->isTextSelecting()Z

    move-result v20

    if-eqz v20, :cond_361

    .line 471
    sget-boolean v20, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SCROLL:Z

    if-eqz v20, :cond_32a

    .line 472
    const-string v20, "DEBUG_VIEWPAGER_SCROLL"

    const-string v21, "onTouchEvent() - isTextSelecting() is true"

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32a

    .line 475
    :cond_361
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_373

    .line 476
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/winset/MessageScrollView;->mInCustomDrag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_32a

    .line 477
    invoke-super/range {p0 .. p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_32a

    .line 480
    :cond_373
    invoke-super/range {p0 .. p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_32a

    .line 421
    nop

    :pswitch_data_378
    .packed-switch 0x0
        :pswitch_247
        :pswitch_28f
        :pswitch_185
        :pswitch_28f
        :pswitch_28f
    .end packed-switch
.end method

.method public resetMessageScrollView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 151
    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    .line 152
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mLastX:F

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mStartX:F

    .line 153
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 159
    iput v1, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 160
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I

    .line 163
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mTouchEventEnd:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mPreActionMode:Z

    .line 169
    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    .line 170
    return-void
.end method

.method public setIsMessageTab(Z)V
    .registers 4
    .parameter "isMessage"

    .prologue
    const/4 v1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 179
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-nez v0, :cond_14

    .line 180
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 181
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 182
    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    .line 184
    :cond_14
    return-void
.end method

.method public setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V
    .registers 2
    .parameter "linearlayoutToTheTop"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 94
    return-void
.end method

.method public setMessageWebView(Lcom/android/email/activity/MessageWebView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 143
    return-void
.end method

.method public setToMessageTab(Z)V
    .registers 3
    .parameter "toMessage"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    if-eq v0, p1, :cond_6

    .line 192
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 194
    :cond_6
    return-void
.end method
