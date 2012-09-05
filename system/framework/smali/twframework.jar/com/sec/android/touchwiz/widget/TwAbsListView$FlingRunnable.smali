.class public Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 4
    .parameter

    .prologue
    .line 4419
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4394
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4420
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 4421
    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .registers 8
    .parameter "delta"

    .prologue
    .line 4463
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyVerticalEdgeReached(III)V

    .line 4464
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v0

    .line 4465
    .local v0, overscrollMode:I
    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 4467
    :cond_23
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4468
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4469
    .local v1, vel:I
    if-lez p1, :cond_45

    .line 4470
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 4480
    .end local v1           #vel:I
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4481
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4482
    return-void

    .line 4472
    .restart local v1       #vel:I
    :cond_45
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_3a

    .line 4475
    .end local v1           #vel:I
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4476
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 4477
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto :goto_3a
.end method

.method endFling()V
    .registers 3

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4495
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4496
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4498
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4499
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 4500
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 4502
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4503
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 4504
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4506
    :cond_38
    return-void
.end method

.method flywheelTouch()V
    .registers 5

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4510
    return-void
.end method

.method public run()V
    .registers 30

    .prologue
    .line 4513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_1e6

    .line 4515
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4643
    :cond_c
    :goto_c
    return-void

    .line 4519
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    .line 4524
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v2, :cond_26

    .line 4525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 4528
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 4529
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto :goto_c

    .line 4533
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 4534
    .local v26, scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v22

    .line 4535
    .local v22, more:Z
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v28

    .line 4541
    .local v28, y:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v19, v2, v28

    .line 4545
    .local v19, delta:I
    if-lez v19, :cond_f4

    .line 4548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 4550
    .local v20, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 4568
    .end local v20           #firstView:Landroid/view/View;
    :goto_93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4569
    .local v23, motionView:Landroid/view/View;
    const/16 v25, 0x0

    .line 4570
    .local v25, oldTop:I
    if-eqz v23, :cond_b0

    .line 4571
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v25

    .line 4576
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-eqz v2, :cond_145

    if-eqz v19, :cond_145

    const/4 v15, 0x1

    .line 4577
    .local v15, atEnd:Z
    :goto_c1
    if-eqz v15, :cond_148

    .line 4578
    if-eqz v23, :cond_e9

    .line 4580
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v4, v2

    .line 4581
    .local v4, overshoot:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z

    .line 4584
    .end local v4           #overshoot:I
    :cond_e9
    if-eqz v22, :cond_c

    .line 4585
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_c

    .line 4557
    .end local v15           #atEnd:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v25           #oldTop:I
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 4558
    .local v24, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v3, v3, v24

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4561
    .local v21, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_93

    .line 4576
    .end local v21           #lastView:Landroid/view/View;
    .end local v24           #offsetToLast:I
    .restart local v23       #motionView:Landroid/view/View;
    .restart local v25       #oldTop:I
    :cond_145
    const/4 v15, 0x0

    goto/16 :goto_c1

    .line 4590
    .restart local v15       #atEnd:Z
    :cond_148
    if-eqz v22, :cond_164

    if-nez v15, :cond_164

    .line 4591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4592
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    .line 4593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    .line 4595
    :cond_164
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_c

    .line 4613
    .end local v15           #atEnd:Z
    .end local v19           #delta:I
    .end local v22           #more:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v25           #oldTop:I
    .end local v26           #scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .end local v28           #y:I
    :pswitch_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 4614
    .restart local v26       #scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 4615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v9

    .line 4616
    .local v9, scrollY:I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v18

    .line 4617
    .local v18, currY:I
    sub-int v7, v18, v9

    .line 4618
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v13, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 4619
    if-gtz v9, :cond_1c3

    if-lez v18, :cond_1c3

    const/16 v16, 0x1

    .line 4620
    .local v16, crossDown:Z
    :goto_19f
    if-ltz v9, :cond_1c6

    if-gez v18, :cond_1c6

    const/16 v17, 0x1

    .line 4621
    .local v17, crossUp:Z
    :goto_1a5
    if-nez v16, :cond_1a9

    if-eqz v17, :cond_1c9

    .line 4622
    :cond_1a9
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 4623
    .local v27, velocity:I
    if-eqz v17, :cond_1b7

    .line 4624
    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 4628
    :cond_1b7
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 4629
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_c

    .line 4619
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    .end local v27           #velocity:I
    :cond_1c3
    const/16 v16, 0x0

    goto :goto_19f

    .line 4620
    .restart local v16       #crossDown:Z
    :cond_1c6
    const/16 v17, 0x0

    goto :goto_1a5

    .line 4631
    .restart local v17       #crossUp:Z
    :cond_1c9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_c

    .line 4634
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    .line 4638
    .end local v7           #deltaY:I
    .end local v9           #scrollY:I
    .end local v18           #currY:I
    :cond_1e0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_c

    .line 4513
    nop

    :pswitch_data_1e6
    .packed-switch 0x3
        :pswitch_d
        :pswitch_17
        :pswitch_9
        :pswitch_169
    .end packed-switch
.end method

.method start(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4424
    if-gez p1, :cond_31

    move v2, v6

    .line 4425
    .local v2, initialY:I
    :goto_7
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    .line 4426
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 4428
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4429
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4438
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_30

    .line 4439
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4441
    :cond_30
    return-void

    .end local v2           #initialY:I
    :cond_31
    move v2, v1

    .line 4424
    goto :goto_7
.end method

.method startOverfling(I)V
    .registers 13
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 4455
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 4457
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4458
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4459
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4460
    return-void
.end method

.method startScroll(II)V
    .registers 9
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 4485
    if-gez p1, :cond_1b

    const v2, 0x7fffffff

    .line 4486
    .local v2, initialY:I
    :goto_6
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    .line 4487
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 4488
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4489
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4490
    return-void

    .end local v2           #initialY:I
    :cond_1b
    move v2, v1

    .line 4485
    goto :goto_6
.end method

.method startSpringback()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 4444
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4445
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4446
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4447
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4452
    :goto_22
    return-void

    .line 4449
    :cond_23
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_22
.end method
