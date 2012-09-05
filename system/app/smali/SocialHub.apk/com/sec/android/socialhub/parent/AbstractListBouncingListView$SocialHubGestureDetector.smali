.class public Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;
.super Ljava/lang/Object;
.source "AbstractListBouncingListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubGestureDetector"
.end annotation


# instance fields
.field private bCanRefresh:Z

.field final synthetic this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)V
    .registers 3
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    return-void
.end method

.method private displayOverGlow()V
    .registers 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 556
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->displayOverGlow(Z)V

    .line 558
    :cond_13
    return-void
.end method

.method private displayOverGlow(I)V
    .registers 4
    .parameter "height"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 564
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    invoke-interface {v0, v1, p1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->displayOverGlow(ZI)V

    .line 566
    :cond_13
    return-void
.end method


# virtual methods
.method public getCanRefresh()Z
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"

    .prologue
    .line 582
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onDown()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 576
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onFling()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 570
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onLongPress()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter "before"
    .parameter "after"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 478
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->getFirstVisiblePosition()I

    move-result v1

    .line 480
    .local v1, index:I
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentPos:I
    invoke-static {v3, v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$102(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;I)I

    .line 482
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v3, v7}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_17

    .line 549
    :cond_16
    :goto_16
    return v7

    .line 487
    :cond_17
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    move-result-object v3

    iput v1, v3, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mPos:I

    .line 488
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mTop:I

    .line 490
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$200(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v3

    if-ne v3, v5, :cond_4b

    .line 492
    if-nez v1, :cond_c5

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsDown:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$1000(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v3

    if-ne v3, v5, :cond_c5

    .line 494
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentState:I
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$000(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I

    move-result v3

    packed-switch v3, :pswitch_data_cc

    .line 516
    iput-boolean v7, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    .line 525
    :goto_48
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->displayOverGlow()V

    .line 528
    :cond_4b
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseLoadMore:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$1100(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v3

    if-ne v3, v5, :cond_16

    .line 530
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsDown:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$1000(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v3

    if-ne v3, v5, :cond_16

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$1200(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 532
    cmpg-float v3, p4, v6

    if-gez v3, :cond_c8

    .line 534
    iput-boolean v5, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    .line 541
    :goto_69
    const-string v3, "SocialHubGestureDetector"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "height - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", top - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v0, v3, v4

    .line 544
    .local v0, height:I
    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->displayOverGlow(I)V

    goto/16 :goto_16

    .line 497
    .end local v0           #height:I
    :pswitch_a4
    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mPos:I

    if-nez v3, :cond_c2

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
    invoke-static {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mTop:I

    if-nez v3, :cond_c2

    .line 499
    cmpg-float v3, p4, v6

    if-gez v3, :cond_bf

    .line 501
    iput-boolean v5, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_48

    .line 505
    :cond_bf
    iput-boolean v7, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_48

    .line 511
    :cond_c2
    iput-boolean v7, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_48

    .line 522
    :cond_c5
    iput-boolean v7, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_48

    .line 538
    :cond_c8
    iput-boolean v7, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_69

    .line 494
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a4
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 471
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onShowPress()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"

    .prologue
    .line 465
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onSingleTapUp()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public setCanRefresh(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->bCanRefresh:Z

    .line 594
    return-void
.end method
