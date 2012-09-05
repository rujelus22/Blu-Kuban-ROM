.class public Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteMsgAnimation"
.end annotation


# instance fields
.field protected mIsAlphaAnim:Z

.field protected mIsTransferAnim:Z

.field protected mOrginalDelItems:[I

.field protected mStepForDelAnim:I

.field protected mTimeIntervalForTransfer:I

.field protected mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

.field protected mVisibleDelItems:[I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    .line 235
    iput v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 237
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    .line 239
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    .line 241
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 245
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    .line 248
    new-instance v0, Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;Lcom/android/mms/ui/MessageListView;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V

    .line 281
    return-void
.end method


# virtual methods
.method protected afterDelAnim()V
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 549
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 550
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    .line 551
    return-void
.end method

.method protected hideSelectedChildItems()V
    .registers 5

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-nez v2, :cond_5

    .line 610
    :cond_4
    return-void

    .line 605
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 606
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1d

    .line 608
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public readyDeleteMsgAnimation([I)V
    .registers 6
    .parameter "selectedIndexes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-nez v0, :cond_12

    if-nez p1, :cond_16

    .line 327
    :cond_12
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 337
    :goto_15
    return-void

    .line 331
    :cond_16
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 335
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    goto :goto_15
.end method

.method public runningDeleteMsgAnimation()V
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 302
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 303
    iput v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    .line 322
    :cond_f
    :goto_f
    return-void

    .line 305
    :cond_10
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v2, :cond_1b

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startDeleteMsgAnimation()V

    .line 307
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_f

    .line 308
    :cond_1b
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_2d

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onEndDeleteMsgAnimation()V

    .line 313
    :cond_2d
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_f

    .line 314
    :cond_30
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v3, :cond_43

    .line 315
    iput v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    goto :goto_f

    .line 318
    :cond_43
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v4, :cond_f

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_f
.end method

.method protected sortVisibleDelItemsInAscending([I)[I
    .registers 15
    .parameter "delItems"

    .prologue
    .line 555
    array-length v11, p1

    new-array v6, v11, [I

    .line 556
    .local v6, temp1:[I
    const/4 v9, 0x0

    .line 558
    .local v9, visibleItemCount:I
    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 559
    .local v8, totalItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    array-length v11, p1

    if-ge v0, v11, :cond_38

    .line 560
    aget v11, p1, v0

    if-ltz v11, :cond_35

    aget v11, p1, v0

    if-ge v11, v8, :cond_35

    .line 561
    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p1, v0

    if-gt v11, v12, :cond_35

    aget v11, p1, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_35

    .line 563
    add-int/lit8 v10, v9, 0x1

    .end local v9           #visibleItemCount:I
    .local v10, visibleItemCount:I
    aget v11, p1, v0

    aput v11, v6, v9

    move v9, v10

    .line 559
    .end local v10           #visibleItemCount:I
    .restart local v9       #visibleItemCount:I
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 567
    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-ge v0, v9, :cond_53

    .line 568
    add-int/lit8 v2, v0, 0x1

    .local v2, j:I
    :goto_3d
    if-ge v2, v9, :cond_50

    .line 569
    aget v11, v6, v0

    aget v12, v6, v2

    if-le v11, v12, :cond_4d

    .line 570
    aget v5, v6, v0

    .line 571
    .local v5, temp:I
    aget v11, v6, v2

    aput v11, v6, v0

    .line 572
    aput v5, v6, v2

    .line 568
    .end local v5           #temp:I
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 567
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 577
    .end local v2           #j:I
    :cond_53
    array-length v11, p1

    new-array v7, v11, [I

    .line 578
    .local v7, temp2:[I
    const/4 v3, 0x0

    .line 580
    .local v3, size2:I
    const/4 v0, 0x0

    move v4, v3

    .end local v3           #size2:I
    .local v4, size2:I
    :goto_59
    if-ge v0, v9, :cond_74

    .line 581
    add-int/lit8 v3, v4, 0x1

    .end local v4           #size2:I
    .restart local v3       #size2:I
    aget v11, v6, v0

    aput v11, v7, v4

    .line 582
    add-int/lit8 v2, v0, 0x1

    .restart local v2       #j:I
    :goto_63
    if-ge v2, v9, :cond_6d

    .line 583
    aget v11, v6, v0

    aget v12, v6, v2

    if-eq v11, v12, :cond_71

    .line 584
    add-int/lit8 v0, v2, -0x1

    .line 580
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #size2:I
    .restart local v4       #size2:I
    goto :goto_59

    .line 582
    .end local v4           #size2:I
    .restart local v3       #size2:I
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 590
    .end local v2           #j:I
    .end local v3           #size2:I
    .restart local v4       #size2:I
    :cond_74
    if-nez v4, :cond_78

    .line 591
    const/4 v1, 0x0

    .line 598
    :cond_77
    return-object v1

    .line 593
    :cond_78
    new-array v1, v4, [I

    .line 594
    .local v1, itemsAsVisible:[I
    const/4 v0, 0x0

    :goto_7b
    if-ge v0, v4, :cond_77

    .line 595
    aget v11, v7, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v1, v0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b
.end method

.method protected startAlphaDelAnim([I)V
    .registers 14
    .parameter "delItemsOnlyVisible"

    .prologue
    const v2, 0x3e4ccccd

    const/high16 v1, 0x3f80

    const/4 v5, 0x1

    .line 385
    const/4 v10, 0x0

    .line 386
    .local v10, delAnimSet:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AnimationSet;

    .end local v10           #delAnimSet:Landroid/view/animation/AnimationSet;
    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 387
    .restart local v10       #delAnimSet:Landroid/view/animation/AnimationSet;
    if-eqz v10, :cond_11

    .line 388
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->reset()V

    .line 390
    :cond_11
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f00

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 392
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 393
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 395
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 396
    .local v9, alpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 397
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 399
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 400
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 401
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 402
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 403
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 405
    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 538
    const/4 v11, 0x0

    .local v11, i:I
    :goto_48
    array-length v1, p1

    if-ge v11, v1, :cond_71

    .line 539
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 540
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_55

    .line 541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 542
    :cond_55
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 543
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    :cond_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    .line 545
    :cond_71
    return-void
.end method

.method protected startDeleteMsgAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 341
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v2

    .line 343
    .local v2, size:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v2, v3, :cond_18

    .line 344
    :cond_14
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 381
    :goto_17
    return-void

    .line 354
    :cond_18
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_31

    .line 355
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2a

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_2e

    .line 358
    :cond_2a
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_17

    .line 354
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 363
    :cond_31
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->sortVisibleDelItemsInAscending([I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    .line 364
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->addChildViewBelowWithInvisible([I)V

    .line 366
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v3, v3

    if-gez v3, :cond_4f

    .line 367
    :cond_4b
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_17

    .line 371
    :cond_4f
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 372
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 376
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .registers 6

    .prologue
    .line 285
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 287
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 288
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_20

    .line 289
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 290
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1d

    .line 291
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 288
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 294
    .end local v2           #view:Landroid/view/View;
    :cond_20
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-eqz v3, :cond_28

    .line 295
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 298
    :cond_27
    :goto_27
    return-void

    .line 296
    :cond_28
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    if-eqz v3, :cond_27

    .line 297
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->cancelTransAnimation()V

    goto :goto_27
.end method
