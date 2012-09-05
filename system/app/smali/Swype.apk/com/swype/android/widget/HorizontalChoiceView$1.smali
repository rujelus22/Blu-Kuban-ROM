.class Lcom/swype/android/widget/HorizontalChoiceView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/widget/HorizontalChoiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/widget/HorizontalChoiceView;


# direct methods
.method constructor <init>(Lcom/swype/android/widget/HorizontalChoiceView;)V
    .registers 2
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 396
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;
    invoke-static {v0}, Lcom/swype/android/widget/HorizontalChoiceView;->access$000(Lcom/swype/android/widget/HorizontalChoiceView;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 397
    :try_start_a
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$400(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$500(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v1

    if-ne v1, v2, :cond_1d

    .line 398
    :cond_1a
    monitor-exit v0

    move v0, v3

    .line 438
    :goto_1c
    return v0

    .line 400
    :cond_1d
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$200(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 402
    monitor-exit v0

    move v0, v3

    goto :goto_1c

    .line 404
    :cond_2e
    const/high16 v1, 0x42c8

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3d

    const/high16 v1, -0x3d38

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3d

    .line 406
    monitor-exit v0

    move v0, v3

    goto :goto_1c

    .line 408
    :cond_3d
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    const/4 v2, 0x1

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z
    invoke-static {v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$102(Lcom/swype/android/widget/HorizontalChoiceView;Z)Z

    .line 410
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_99

    .line 412
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$600(Lcom/swype/android/widget/HorizontalChoiceView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I
    invoke-static {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$400(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I
    invoke-static {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$200(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v2

    if-le v1, v2, :cond_8a

    .line 414
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$200(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 435
    :goto_72
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I
    invoke-static {v2, v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$302(Lcom/swype/android/widget/HorizontalChoiceView;I)I

    .line 436
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v3}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    .line 437
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    .line 438
    monitor-exit v0

    move v0, v4

    goto :goto_1c

    .line 420
    :cond_8a
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$600(Lcom/swype/android/widget/HorizontalChoiceView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mLastDrawnOnTouch:I
    invoke-static {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$400(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v2

    aget v1, v1, v2

    goto :goto_72

    .line 424
    :cond_99
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$600(Lcom/swype/android/widget/HorizontalChoiceView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I
    invoke-static {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$500(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_b4

    move v1, v4

    .line 426
    goto :goto_72

    .line 432
    :cond_b4
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mWordOffsetX:[I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$600(Lcom/swype/android/widget/HorizontalChoiceView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mFirstDrawnOnTouch:I
    invoke-static {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$500(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_72

    .line 439
    :catchall_cc
    move-exception v1

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_a .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 444
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;
    invoke-static {v0}, Lcom/swype/android/widget/HorizontalChoiceView;->access$000(Lcom/swype/android/widget/HorizontalChoiceView;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 445
    :try_start_8
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$700(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v1

    if-eq v1, v2, :cond_50

    .line 446
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$100(Lcom/swype/android/widget/HorizontalChoiceView;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 447
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->listener:Lcom/swype/android/widget/HorizontalViewClickListener;
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$800(Lcom/swype/android/widget/HorizontalChoiceView;)Lcom/swype/android/widget/HorizontalViewClickListener;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 448
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->listener:Lcom/swype/android/widget/HorizontalViewClickListener;
    invoke-static {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$800(Lcom/swype/android/widget/HorizontalChoiceView;)Lcom/swype/android/widget/HorizontalViewClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->parentContainer:Lcom/swype/android/widget/HorizontalChoiceViewContainer;
    invoke-static {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$900(Lcom/swype/android/widget/HorizontalChoiceView;)Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I
    invoke-static {v3}, Lcom/swype/android/widget/HorizontalChoiceView;->access$700(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/swype/android/widget/HorizontalViewClickListener;->onHorizontalViewLongPressed(Lcom/swype/android/widget/HorizontalChoiceViewContainer;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 450
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    const/4 v2, -0x1

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->mSelectedIndex:I
    invoke-static {v1, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->access$702(Lcom/swype/android/widget/HorizontalChoiceView;I)I

    .line 451
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    const-wide/high16 v3, -0x4010

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->downY:D
    invoke-static {v2, v3, v4}, Lcom/swype/android/widget/HorizontalChoiceView;->access$1102(Lcom/swype/android/widget/HorizontalChoiceView;D)D

    move-result-wide v2

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->downX:D
    invoke-static {v1, v2, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->access$1002(Lcom/swype/android/widget/HorizontalChoiceView;D)D

    .line 452
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    .line 457
    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 370
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->choiceWords:Ljava/util/List;
    invoke-static {v0}, Lcom/swype/android/widget/HorizontalChoiceView;->access$000(Lcom/swype/android/widget/HorizontalChoiceView;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 371
    :try_start_8
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->getWidth()I

    move-result v1

    .line 376
    cmpl-float v2, p3, p4

    if-lez v2, :cond_1e

    const/high16 v2, 0x41a0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1e

    .line 377
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    const/4 v3, 0x1

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->mIsScrolling:Z
    invoke-static {v2, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->access$102(Lcom/swype/android/widget/HorizontalChoiceView;Z)Z

    .line 379
    :cond_1e
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollX()I

    move-result v2

    .line 380
    float-to-int v3, p3

    add-int/2addr v2, v3

    .line 381
    if-gez v2, :cond_29

    move v2, v4

    .line 384
    :cond_29
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_54

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #getter for: Lcom/swype/android/widget/HorizontalChoiceView;->totalWidth:I
    invoke-static {v3}, Lcom/swype/android/widget/HorizontalChoiceView;->access$200(Lcom/swype/android/widget/HorizontalChoiceView;)I

    move-result v3

    if-le v1, v3, :cond_54

    .line 385
    float-to-int v1, p3

    sub-int v1, v2, v1

    .line 387
    :goto_3a
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    #setter for: Lcom/swype/android/widget/HorizontalChoiceView;->mTargetScrollX:I
    invoke-static {v2, v1}, Lcom/swype/android/widget/HorizontalChoiceView;->access$302(Lcom/swype/android/widget/HorizontalChoiceView;I)I

    .line 388
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    iget-object v3, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v3}, Lcom/swype/android/widget/HorizontalChoiceView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/swype/android/widget/HorizontalChoiceView;->scrollTo(II)V

    .line 389
    iget-object v1, p0, Lcom/swype/android/widget/HorizontalChoiceView$1;->this$0:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->invalidate()V

    .line 390
    monitor-exit v0

    return v4

    .line 391
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_51

    throw v1

    :cond_54
    move v1, v2

    goto :goto_3a
.end method
