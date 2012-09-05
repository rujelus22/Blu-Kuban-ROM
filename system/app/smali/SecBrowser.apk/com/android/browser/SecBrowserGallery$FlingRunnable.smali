.class Lcom/android/browser/SecBrowserGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "SecBrowserGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecBrowserGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/android/browser/SecBrowserGallery;


# direct methods
.method public constructor <init>(Lcom/android/browser/SecBrowserGallery;)V
    .registers 4
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/android/browser/SecBrowserGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1445
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/SecBrowserGallery$FlingRunnable;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1432
    invoke-direct {p0, p1}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/SecBrowserGallery$FlingRunnable;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .registers 4
    .parameter "scrollIntoSlots"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1486
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #calls: Lcom/android/browser/SecBrowserGallery;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/android/browser/SecBrowserGallery;->access$500(Lcom/android/browser/SecBrowserGallery;)V

    .line 1487
    :cond_d
    return-void
.end method

.method private startCommon()V
    .registers 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v0, p0}, Lcom/android/browser/SecBrowserGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1450
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1492
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget v5, v5, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-nez v5, :cond_b

    .line 1493
    invoke-direct {p0, v8}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->endFling(Z)V

    .line 1533
    :goto_a
    return-void

    .line 1497
    :cond_b
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    const/4 v6, 0x0

    #setter for: Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z
    invoke-static {v5, v6}, Lcom/android/browser/SecBrowserGallery;->access$602(Lcom/android/browser/SecBrowserGallery;Z)Z

    .line 1499
    iget-object v3, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1500
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1501
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1505
    .local v4, x:I
    iget v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1508
    .local v0, delta:I
    if-lez v0, :cond_71

    .line 1510
    iget-object v6, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z
    invoke-static {v5}, Lcom/android/browser/SecBrowserGallery;->access$800(Lcom/android/browser/SecBrowserGallery;)Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget v5, v5, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v7}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    :goto_38
    #setter for: Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I
    invoke-static {v6, v5}, Lcom/android/browser/SecBrowserGallery;->access$702(Lcom/android/browser/SecBrowserGallery;I)I

    .line 1514
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v5}, Lcom/android/browser/SecBrowserGallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/android/browser/SecBrowserGallery;->access$900(Lcom/android/browser/SecBrowserGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/android/browser/SecBrowserGallery;->access$1000(Lcom/android/browser/SecBrowserGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1525
    :goto_55
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v5, v0}, Lcom/android/browser/SecBrowserGallery;->trackMotionScroll(I)V

    .line 1527
    if-eqz v1, :cond_b4

    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/android/browser/SecBrowserGallery;->access$600(Lcom/android/browser/SecBrowserGallery;)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 1528
    iput v4, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mLastFlingX:I

    .line 1529
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v5, p0}, Lcom/android/browser/SecBrowserGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 1510
    :cond_6c
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget v5, v5, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    goto :goto_38

    .line 1517
    :cond_71
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v5}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1518
    .local v2, offsetToLast:I
    iget-object v6, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z
    invoke-static {v5}, Lcom/android/browser/SecBrowserGallery;->access$800(Lcom/android/browser/SecBrowserGallery;)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget v5, v5, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    :goto_87
    #setter for: Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I
    invoke-static {v6, v5}, Lcom/android/browser/SecBrowserGallery;->access$702(Lcom/android/browser/SecBrowserGallery;I)I

    .line 1522
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v5}, Lcom/android/browser/SecBrowserGallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/android/browser/SecBrowserGallery;->access$1100(Lcom/android/browser/SecBrowserGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/android/browser/SecBrowserGallery;->access$1200(Lcom/android/browser/SecBrowserGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_55

    .line 1518
    :cond_a6
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    iget v5, v5, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v7}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_87

    .line 1531
    .end local v2           #offsetToLast:I
    :cond_b4
    invoke-direct {p0, v8}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_a
.end method

.method public startUsingDistance(I)V
    .registers 8
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1465
    if-nez p1, :cond_4

    .line 1472
    :goto_3
    return-void

    .line 1467
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->startCommon()V

    .line 1469
    iput v1, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mLastFlingX:I

    .line 1470
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    #getter for: Lcom/android/browser/SecBrowserGallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/android/browser/SecBrowserGallery;->access$400(Lcom/android/browser/SecBrowserGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1471
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v0, p0}, Lcom/android/browser/SecBrowserGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public startUsingVelocity(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1453
    if-nez p1, :cond_7

    .line 1462
    :goto_6
    return-void

    .line 1455
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->startCommon()V

    .line 1457
    if-gez p1, :cond_1f

    move v1, v6

    .line 1458
    .local v1, initialX:I
    :goto_d
    iput v1, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mLastFlingX:I

    .line 1459
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1461
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v0, p0}, Lcom/android/browser/SecBrowserGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .end local v1           #initialX:I
    :cond_1f
    move v1, v2

    .line 1457
    goto :goto_d
.end method

.method public stop(Z)V
    .registers 3
    .parameter "scrollIntoSlots"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v0, p0}, Lcom/android/browser/SecBrowserGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1476
    invoke-direct {p0, p1}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->endFling(Z)V

    .line 1477
    return-void
.end method
