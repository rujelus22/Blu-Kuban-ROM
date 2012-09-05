.class public Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;
.super Ljava/lang/Object;
.source "AbstractListBouncingExpandableListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubGestureDetector"
.end annotation


# instance fields
.field private bCanRefresh:Z

.field final synthetic this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)V
    .registers 3
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    return-void
.end method

.method private displayOverGlow(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "index"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 476
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->displayOverGlow(Z)V

    .line 478
    :cond_13
    return-void
.end method


# virtual methods
.method public getCanRefresh()Z
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"

    .prologue
    .line 494
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onDown()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
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
    .line 488
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onFling()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 482
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onLongPress()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "before"
    .parameter "after"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 420
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 422
    .local v0, index:I
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentPos:I
    invoke-static {v2, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$102(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;I)I

    .line 424
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 426
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_16

    .line 469
    :cond_15
    :goto_15
    return v4

    .line 429
    :cond_16
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    move-result-object v2

    iput v0, v2, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;->mPos:I

    .line 430
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;->mTop:I

    .line 432
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$200(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 435
    if-nez v0, :cond_6d

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsDown:Z
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$1000(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v2

    if-ne v2, v5, :cond_6d

    .line 437
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentState:I
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$000(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I

    move-result v2

    packed-switch v2, :pswitch_data_70

    .line 458
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    .line 467
    :goto_47
    invoke-direct {p0, v1, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->displayOverGlow(Landroid/view/View;I)V

    goto :goto_15

    .line 440
    :pswitch_4b
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;->mPos:I

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;->mTop:I

    if-nez v2, :cond_6a

    .line 442
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_67

    .line 444
    iput-boolean v5, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_47

    .line 448
    :cond_67
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_47

    .line 453
    :cond_6a
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_47

    .line 464
    :cond_6d
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    goto :goto_47

    .line 437
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4b
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 414
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onShowPress()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"

    .prologue
    .line 408
    const-string v0, "SocialHubGestureDetector"

    const-string v1, "onSingleTapUp()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$GestureLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public setCanRefresh(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->bCanRefresh:Z

    .line 506
    return-void
.end method
