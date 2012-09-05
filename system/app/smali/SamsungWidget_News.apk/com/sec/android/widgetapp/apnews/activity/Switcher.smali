.class public Lcom/sec/android/widgetapp/apnews/activity/Switcher;
.super Landroid/widget/FrameLayout;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;,
        Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;,
        Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;
    }
.end annotation


# static fields
.field private static cpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private children:[Landroid/view/View;

.field private inLeft:Landroid/view/animation/TranslateAnimation;

.field private inRight:Landroid/view/animation/TranslateAnimation;

.field private isInflateView:[Z

.field private mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

.field private mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

.field public mCurrentView:I

.field private mPositionAvailable:Z

.field public mPreviousCPSize:I

.field private mTouchSlop:I

.field private mTouchSlopLocal:I

.field private mTouchXPosition:F

.field private mTouchYPosition:F

.field private mWidth:I

.field private mbEndAnimation:Z

.field public mstrLastViewClassName:Ljava/lang/String;

.field private original_view:[Landroid/view/View;

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;

.field private scrollEnable:Z

.field private viewOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    .line 43
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPreviousCPSize:I

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 168
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->scrollEnable:Z

    .line 253
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchXPosition:F

    .line 254
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchYPosition:F

    .line 255
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    .line 57
    iput v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 58
    new-instance v1, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    .line 59
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setCPList()V

    .line 60
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 61
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlop:I

    .line 62
    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlop:I

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlopLocal:I

    .line 63
    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    return p1
.end method

.method private backupView()V
    .registers 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getChildCount()I

    move-result v0

    .line 95
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->original_view:[Landroid/view/View;

    .line 96
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 97
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->original_view:[Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 99
    :cond_16
    return-void
.end method

.method private setCPList()V
    .registers 4

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    .line 68
    sget-object v0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    const-string v1, "AP Mobile news"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private setTouchslop(Ljava/lang/String;)V
    .registers 3
    .parameter "currentViewClass"

    .prologue
    .line 482
    const-string v0, "com.sec.android.widgetapp.apnews.activity.apnews.APNewsMain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 483
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlop:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlopLocal:I

    .line 487
    :goto_e
    return-void

    .line 485
    :cond_f
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlop:I

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlopLocal:I

    goto :goto_e
.end method


# virtual methods
.method public deinit()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    .line 78
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 79
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 81
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    .line 84
    :cond_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->isInflateView:[Z

    if-eqz v0, :cond_19

    .line 85
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->isInflateView:[Z

    .line 88
    :cond_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    if-eqz v0, :cond_1f

    .line 89
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    .line 90
    :cond_1f
    return-void
.end method

.method getCurrentIndex()I
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method moveLeft(I)V
    .registers 8
    .parameter "left"

    .prologue
    const v5, 0x7f020033

    const v4, 0x7f020032

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 443
    :goto_16
    return-void

    .line 413
    :cond_17
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_b2

    .line 414
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 425
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    .line 442
    :goto_ab
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setTouchslop(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 427
    :cond_b2
    iput v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 430
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ab
.end method

.method moveRight(I)V
    .registers 8
    .parameter "right"

    .prologue
    const v5, 0x7f020033

    const v4, 0x7f020032

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 479
    :goto_16
    return-void

    .line 449
    :cond_17
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    if-lez v0, :cond_ae

    .line 450
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 461
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    .line 478
    :goto_a7
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setTouchslop(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 463
    :cond_ae
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v0, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 466
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a7
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, count:I
    const/4 v3, 0x0

    .line 208
    .local v3, idx:I
    const/4 v1, 0x0

    .line 211
    .local v1, cpName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    if-eqz v4, :cond_14

    .line 212
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 214
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    .line 216
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->isStartWidget()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 217
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPOrder()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    .line 223
    :goto_28
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    new-array v4, v0, [Z

    iput-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->isInflateView:[Z

    .line 227
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    if-ge v2, v0, :cond_46

    .line 228
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->isInflateView:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 220
    .end local v2           #i:I
    :cond_3d
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    goto :goto_28

    .line 231
    .restart local v2       #i:I
    :cond_46
    const/4 v3, 0x0

    .line 233
    new-array v4, v0, [Landroid/view/View;

    iput-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    .line 235
    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v0, :cond_85

    .line 236
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cpName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 237
    .restart local v1       #cpName:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 238
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v2

    .line 240
    iget v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    if-eq v2, v4, :cond_7c

    .line 241
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 244
    :cond_7c
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_79

    .line 248
    :cond_85
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->backupView()V

    .line 250
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 251
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    const/high16 v13, 0x431b

    const/high16 v12, 0x4270

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 344
    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    if-nez v8, :cond_d

    move v2, v7

    .line 405
    :cond_c
    :goto_c
    return v2

    .line 348
    :cond_d
    const/4 v2, 0x0

    .line 350
    .local v2, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 351
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 352
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 354
    .local v5, y:F
    packed-switch v0, :pswitch_data_ee

    goto :goto_c

    .line 356
    :pswitch_1e
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchXPosition:F

    .line 357
    iput v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchYPosition:F

    .line 358
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    .line 360
    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, currentCP:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->original_view:[Landroid/view/View;

    sget-object v7, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    const-string v9, "AP Mobile news"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v8, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/widgetapp/apnews/engine/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 366
    cmpl-float v7, v3, v11

    if-lez v7, :cond_c

    const/high16 v7, 0x4448

    cmpg-float v7, v3, v7

    if-gez v7, :cond_c

    cmpl-float v7, v5, v12

    if-lez v7, :cond_c

    cmpg-float v7, v5, v13

    if-gez v7, :cond_c

    .line 367
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto :goto_c

    .line 370
    :cond_7b
    cmpl-float v7, v3, v11

    if-lez v7, :cond_c

    const/high16 v7, 0x43f0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_c

    cmpl-float v7, v5, v12

    if-lez v7, :cond_c

    cmpg-float v7, v5, v13

    if-gez v7, :cond_c

    .line 371
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto/16 :goto_c

    .line 378
    .end local v1           #currentCP:Ljava/lang/String;
    :pswitch_91
    iget v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchXPosition:F

    sub-float v4, v8, v3

    .line 379
    .local v4, xMove:F
    iget v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchYPosition:F

    sub-float v6, v8, v5

    .line 381
    .local v6, yMove:F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlopLocal:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_c

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    .line 382
    cmpg-float v8, v4, v11

    if-gez v8, :cond_cc

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    if-eqz v8, :cond_cc

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    if-eqz v8, :cond_cc

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->scrollEnable:Z

    if-eqz v8, :cond_cc

    .line 383
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 384
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveRight(I)V

    .line 385
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 386
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    .line 396
    :goto_c9
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 387
    :cond_cc
    cmpl-float v8, v4, v11

    if-lez v8, :cond_e6

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    if-eqz v8, :cond_e6

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    if-eqz v8, :cond_e6

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->scrollEnable:Z

    if-eqz v8, :cond_e6

    .line 388
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 389
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveLeft(I)V

    .line 390
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 391
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto :goto_c9

    .line 393
    :cond_e6
    const/4 v2, 0x0

    .line 394
    goto/16 :goto_c

    .line 402
    .end local v4           #xMove:F
    .end local v6           #yMove:F
    :pswitch_e9
    iput-boolean v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto/16 :goto_c

    .line 354
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_e9
        :pswitch_91
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v4, 0x258

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    iput p1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mWidth:I

    .line 183
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 184
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 185
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 186
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 188
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;-><init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;-><init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->inRight:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationStartListener;-><init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->outRight:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/Switcher$animationEndListener;-><init>(Lcom/sec/android/widgetapp/apnews/activity/Switcher;Lcom/sec/android/widgetapp/apnews/activity/Switcher$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 199
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 296
    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    if-nez v7, :cond_9

    move v1, v6

    .line 339
    :cond_8
    :goto_8
    return v1

    .line 300
    :cond_9
    const/4 v1, 0x1

    .line 302
    .local v1, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 303
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 304
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 306
    .local v4, y:F
    packed-switch v0, :pswitch_data_78

    goto :goto_8

    .line 308
    :pswitch_1a
    iput v2, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchXPosition:F

    .line 309
    iput v4, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchYPosition:F

    .line 310
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto :goto_8

    .line 314
    :pswitch_21
    iget v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchXPosition:F

    sub-float v3, v7, v2

    .line 315
    .local v3, xMove:F
    iget v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchYPosition:F

    sub-float v5, v7, v4

    .line 317
    .local v5, yMove:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mTouchSlopLocal:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 318
    cmpg-float v7, v3, v10

    if-gez v7, :cond_5b

    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    if-eqz v7, :cond_5b

    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    if-eqz v7, :cond_5b

    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->scrollEnable:Z

    if-eqz v7, :cond_5b

    .line 319
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 320
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveRight(I)V

    .line 321
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 322
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    .line 329
    :cond_59
    :goto_59
    const/4 v1, 0x0

    goto :goto_8

    .line 323
    :cond_5b
    cmpl-float v7, v3, v10

    if-lez v7, :cond_59

    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    if-eqz v7, :cond_59

    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    if-eqz v7, :cond_59

    iget-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->scrollEnable:Z

    if-eqz v7, :cond_59

    .line 324
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 325
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->moveLeft(I)V

    .line 326
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mbEndAnimation:Z

    .line 327
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto :goto_59

    .line 335
    .end local v3           #xMove:F
    .end local v5           #yMove:F
    :pswitch_75
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mPositionAvailable:Z

    goto :goto_8

    .line 306
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_75
        :pswitch_21
    .end packed-switch
.end method

.method public reorderView()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, count:I
    const/4 v4, 0x0

    .line 105
    .local v4, idx:I
    const/4 v1, 0x0

    .line 106
    .local v1, cpName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 109
    .local v2, fFindView:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v5, v5

    if-ge v3, v5, :cond_18

    .line 110
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v5, v5, v3

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 114
    :cond_18
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    if-eqz v5, :cond_28

    .line 115
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 117
    iput-object v10, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    .line 120
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->isStartWidget()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 121
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPOrder()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    .line 127
    :goto_3c
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 130
    new-array v5, v0, [Z

    iput-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->isInflateView:[Z

    .line 131
    const/4 v3, 0x0

    :goto_47
    if-ge v3, v0, :cond_5a

    .line 132
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->isInflateView:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 124
    :cond_51
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    goto :goto_3c

    .line 135
    :cond_5a
    const/4 v4, 0x0

    .line 136
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    array-length v5, v5

    if-eq v5, v0, :cond_64

    .line 137
    new-array v5, v0, [Landroid/view/View;

    iput-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    .line 141
    :cond_64
    const/4 v3, 0x0

    :goto_65
    if-ge v3, v0, :cond_8c

    .line 142
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aput-object v10, v5, v3

    .line 143
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->viewOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cpName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 144
    .restart local v1       #cpName:Ljava/lang/String;
    sget-object v5, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 145
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->original_view:[Landroid/view/View;

    add-int/lit8 v7, v4, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v3

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 149
    :cond_8c
    const/4 v3, 0x0

    :goto_8d
    if-ge v3, v0, :cond_bc

    .line 151
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 152
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v5, v5, v3

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 154
    const/4 v2, 0x1

    .line 149
    :goto_b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 157
    :cond_b4
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    aget-object v5, v5, v3

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b1

    .line 161
    :cond_bc
    if-eqz v0, :cond_cb

    if-nez v2, :cond_cb

    .line 162
    iput v8, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 163
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->children:[Landroid/view/View;

    iget v6, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_cb
    return-void
.end method

.method public reorderView(I)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->reorderView()V

    .line 178
    return-void
.end method

.method public setCurrentIndex(ILjava/lang/String;)V
    .registers 5
    .parameter "Current"
    .parameter "cpName"

    .prologue
    .line 494
    iput p1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    .line 495
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->original_view:[Landroid/view/View;

    sget-object v0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->cpList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mstrLastViewClassName:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setInit(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter "apnews"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mAPNews:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    .line 73
    return-void
.end method
