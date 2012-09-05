.class public Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 4138
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 4140
    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 4147
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .registers 8
    .parameter "delta"

    .prologue
    .line 4324
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyVerticalEdgeReached(III)V

    .line 4325
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v0

    .line 4326
    .local v0, overscrollMode:I
    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 4328
    :cond_23
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4329
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4330
    .local v1, vel:I
    if-lez p1, :cond_45

    .line 4331
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 4341
    .end local v1           #vel:I
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4342
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4343
    return-void

    .line 4333
    .restart local v1       #vel:I
    :cond_45
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_3a

    .line 4336
    .end local v1           #vel:I
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4337
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 4338
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto :goto_3a
.end method

.method endFling()V
    .registers 3

    .prologue
    .line 4188
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4194
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4195
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4197
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4198
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4201
    :cond_26
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4202
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 4206
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 4209
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v11, :pswitch_data_11e

    .line 4317
    :cond_a
    :goto_a
    return-void

    .line 4214
    :pswitch_b
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v11

    if-nez v11, :cond_1d

    .line 4215
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto :goto_a

    .line 4219
    :cond_1d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v7, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 4220
    .local v7, prevBounceExtent:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 4222
    .local v8, scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v5

    .line 4223
    .local v5, more:Z
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v9

    .line 4229
    .local v9, y:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v11, v9

    .line 4233
    .local v1, delta:I
    if-lez v1, :cond_9d

    .line 4236
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4237
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4238
    .local v2, firstView:Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4241
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4256
    .end local v2           #firstView:Landroid/view/View;
    :goto_63
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11, v1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v11

    if-eqz v11, :cond_6e

    if-eqz v1, :cond_6e

    move v0, v10

    .line 4258
    .local v0, atEnd:Z
    :cond_6e
    cmpg-float v11, v7, v13

    if-gtz v11, :cond_7c

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v11, v11, v7

    if-ltz v11, :cond_8a

    :cond_7c
    cmpl-float v11, v7, v13

    if-ltz v11, :cond_8b

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v11, v11, v7

    if-lez v11, :cond_8b

    .line 4261
    :cond_8a
    const/4 v5, 0x0

    .line 4264
    :cond_8b
    if-eqz v5, :cond_d8

    if-nez v0, :cond_d8

    .line 4265
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4266
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4267
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v10, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 4245
    .end local v0           #atEnd:Z
    :cond_9d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 4246
    .local v6, offsetToLast:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v6

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4248
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4249
    .local v4, lastView:Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4252
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    neg-int v11, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_63

    .line 4268
    .end local v4           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_d8
    if-eqz v0, :cond_118

    .line 4269
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    .line 4283
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    if-nez v11, :cond_a

    .line 4284
    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity(Z)F

    move-result v3

    .line 4286
    .local v3, lastFlingSpeed:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_105

    .line 4292
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v10, v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_a

    .line 4294
    :cond_105
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v10, v10, v13

    if-eqz v10, :cond_a

    .line 4295
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v10, v13}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_a

    .line 4300
    .end local v3           #lastFlingSpeed:F
    :cond_118
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_a

    .line 4209
    nop

    :pswitch_data_11e
    .packed-switch 0x4
        :pswitch_b
    .end packed-switch
.end method

.method start(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4158
    if-gez p1, :cond_1e

    move v2, v6

    .line 4159
    .local v2, initialY:I
    :goto_7
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4160
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 4162
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4164
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4172
    return-void

    .end local v2           #initialY:I
    :cond_1e
    move v2, v1

    .line 4158
    goto :goto_7
.end method

.method startOverfling(I)V
    .registers 13
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 4350
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 4352
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4356
    return-void
.end method

.method startScroll(II)V
    .registers 9
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 4177
    if-gez p1, :cond_1b

    const v2, 0x7fffffff

    .line 4178
    .local v2, initialY:I
    :goto_6
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4179
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 4180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4182
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4183
    return-void

    .end local v2           #initialY:I
    :cond_1b
    move v2, v1

    .line 4177
    goto :goto_6
.end method

.method startSpringback()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 4366
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4367
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4368
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4369
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4375
    :goto_22
    return-void

    .line 4371
    :cond_23
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4372
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_22
.end method
