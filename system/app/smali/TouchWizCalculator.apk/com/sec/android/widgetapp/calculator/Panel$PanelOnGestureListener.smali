.class Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    .line 559
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->initChange()Z

    .line 560
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 564
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    .line 565
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .end local p4
    :goto_12
    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1402(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    .line 566
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, v1, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->post(Ljava/lang/Runnable;)Z

    .line 567
    return v2

    .restart local p4
    :cond_1f
    move p4, p3

    .line 565
    goto :goto_12
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 572
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 575
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v3, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    .line 576
    const/4 v1, 0x0

    .local v1, tmpY:F
    const/4 v0, 0x0

    .line 577
    .local v0, tmpX:F
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_62

    .line 578
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    .line 579
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v2

    if-nez v2, :cond_53

    .line 580
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/sec/android/widgetapp/calculator/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v1

    .line 590
    :goto_2f
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_52

    .line 591
    :cond_43
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F
    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1802(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    .line 592
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F
    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1502(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    .line 593
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->invalidate()V

    .line 595
    :cond_52
    return v6

    .line 582
    :cond_53
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    #calls: Lcom/sec/android/widgetapp/calculator/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v1

    goto :goto_2f

    .line 584
    :cond_62
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    .line 585
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_80

    .line 586
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/sec/android/widgetapp/calculator/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v0

    goto :goto_2f

    .line 588
    :cond_80
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    #calls: Lcom/sec/android/widgetapp/calculator/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v0

    goto :goto_2f
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 600
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .registers 4
    .parameter "initScrollX"
    .parameter "initScrollY"

    .prologue
    .line 553
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    .line 554
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    .line 555
    return-void
.end method
