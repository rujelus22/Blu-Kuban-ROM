.class Lcom/google/android/common/SwipeySwitcher$3;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/SwipeySwitcher;->makeGestureDetector()Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGoLeft()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    .line 375
    .local v0, count:I
    :goto_14
    if-le v0, v1, :cond_19

    :goto_16
    return v1

    .end local v0           #count:I
    :cond_17
    move v0, v2

    .line 374
    goto :goto_14

    .restart local v0       #count:I
    :cond_19
    move v1, v2

    .line 375
    goto :goto_16
.end method

.method private canGoRight()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    .line 380
    .local v0, count:I
    :goto_14
    if-le v0, v1, :cond_19

    :goto_16
    return v1

    .end local v0           #count:I
    :cond_17
    move v0, v2

    .line 379
    goto :goto_14

    .restart local v0       #count:I
    :cond_19
    move v1, v2

    .line 380
    goto :goto_16
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/google/android/common/SwipeySwitcher;->mDownX:I
    invoke-static {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->access$202(Lcom/google/android/common/SwipeySwitcher;I)I

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 385
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mDragging:Z
    invoke-static {v4}, Lcom/google/android/common/SwipeySwitcher;->access$400(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 421
    :cond_b
    :goto_b
    return v3

    .line 392
    :cond_c
    cmpl-float v4, p3, v5

    if-eqz v4, :cond_b

    .line 396
    cmpl-float v4, p3, v5

    if-lez v4, :cond_1a

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoLeft()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 398
    :cond_1a
    cmpg-float v4, p3, v5

    if-gez v4, :cond_24

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoRight()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 407
    :cond_24
    cmpg-float v4, p3, v5

    if-gez v4, :cond_42

    move v0, v2

    .line 408
    .local v0, flingForward:Z
    :goto_29
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v5}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_44

    move v1, v2

    .line 410
    .local v1, scrolledForward:Z
    :goto_39
    if-eq v0, v1, :cond_46

    .line 411
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->recenter()V
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$500(Lcom/google/android/common/SwipeySwitcher;)V

    :goto_40
    move v3, v2

    .line 421
    goto :goto_b

    .end local v0           #flingForward:Z
    .end local v1           #scrolledForward:Z
    :cond_42
    move v0, v3

    .line 407
    goto :goto_29

    .restart local v0       #flingForward:Z
    :cond_44
    move v1, v3

    .line 408
    goto :goto_39

    .line 413
    .restart local v1       #scrolledForward:Z
    :cond_46
    if-eqz v0, :cond_53

    .line 414
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->ensureRight()V
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$600(Lcom/google/android/common/SwipeySwitcher;)V

    .line 419
    :goto_4d
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V
    invoke-static {v3, v0}, Lcom/google/android/common/SwipeySwitcher;->access$800(Lcom/google/android/common/SwipeySwitcher;Z)V

    goto :goto_40

    .line 416
    :cond_53
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->ensureLeft()V
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$700(Lcom/google/android/common/SwipeySwitcher;)V

    goto :goto_4d
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 426
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 430
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mDragging:Z
    invoke-static {v4}, Lcom/google/android/common/SwipeySwitcher;->access$400(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 471
    :goto_a
    return v3

    .line 434
    :cond_b
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    float-to-int v5, p3

    add-int v1, v4, v5

    .line 436
    .local v1, target:I
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_60

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoLeft()Z

    move-result v4

    if-nez v4, :cond_60

    .line 437
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    .line 442
    :cond_28
    :goto_28
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4, v1, v3}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 444
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v4}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v4}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v4

    if-ne v4, v6, :cond_5e

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, swap:Z
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    .line 462
    .local v2, width:I
    if-ge v1, v2, :cond_75

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v4}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v4

    aget-object v3, v4, v3

    instance-of v3, v3, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    if-eqz v3, :cond_75

    .line 463
    const/4 v0, 0x1

    .line 467
    :cond_57
    :goto_57
    if-eqz v0, :cond_5e

    .line 468
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$1000(Lcom/google/android/common/SwipeySwitcher;)V

    .line 471
    .end local v0           #swap:Z
    .end local v2           #width:I
    :cond_5e
    const/4 v3, 0x1

    goto :goto_a

    .line 438
    :cond_60
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_28

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoRight()Z

    move-result v4

    if-nez v4, :cond_28

    .line 439
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    goto :goto_28

    .line 464
    .restart local v0       #swap:Z
    .restart local v2       #width:I
    :cond_75
    if-le v1, v2, :cond_57

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v3

    aget-object v3, v3, v6

    instance-of v3, v3, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    if-eqz v3, :cond_57

    .line 465
    const/4 v0, 0x1

    goto :goto_57
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 475
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method
