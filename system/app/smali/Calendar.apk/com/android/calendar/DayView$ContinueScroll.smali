.class Lcom/android/calendar/DayView$ContinueScroll;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .registers 2
    .parameter

    .prologue
    .line 4543
    iput-object p1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4543
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4545
    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$400(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_18
    #setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v2, v0}, Lcom/android/calendar/DayView;->access$402(Lcom/android/calendar/DayView;Z)Z

    .line 4546
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$400(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mPaused:Z

    if-eqz v0, :cond_36

    .line 4547
    :cond_29
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->resetSelectedHour()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$500(Lcom/android/calendar/DayView;)V

    .line 4548
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4578
    :goto_33
    return-void

    :cond_34
    move v0, v1

    .line 4545
    goto :goto_18

    .line 4552
    :cond_36
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    #setter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0, v2}, Lcom/android/calendar/DayView;->access$2502(Lcom/android/calendar/DayView;I)I

    .line 4554
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2600(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 4555
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)I

    move-result v0

    if-gez v0, :cond_b0

    .line 4556
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2800(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mLastVelocity:F
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2700(Lcom/android/calendar/DayView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4557
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2602(Lcom/android/calendar/DayView;Z)Z

    .line 4562
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2400(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    #setter for: Lcom/android/calendar/DayView;->mLastVelocity:F
    invoke-static {v0, v2}, Lcom/android/calendar/DayView;->access$2702(Lcom/android/calendar/DayView;F)F

    .line 4565
    :cond_79
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScrollStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;)I

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mScrollStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)I

    move-result v2

    if-ne v0, v2, :cond_9c

    .line 4568
    :cond_8f
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)I

    move-result v0

    if-gez v0, :cond_d4

    .line 4569
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2502(Lcom/android/calendar/DayView;I)I

    .line 4575
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->computeFirstHour()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3200(Lcom/android/calendar/DayView;)V

    .line 4576
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3300(Lcom/android/calendar/DayView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4577
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->invalidate()V

    goto :goto_33

    .line 4558
    :cond_b0
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)I

    move-result v2

    if-le v0, v2, :cond_6a

    .line 4559
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3000(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mLastVelocity:F
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$2700(Lcom/android/calendar/DayView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4560
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2602(Lcom/android/calendar/DayView;Z)Z

    goto :goto_6a

    .line 4570
    :cond_d4
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$2500(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)I

    move-result v1

    if-le v0, v1, :cond_9c

    .line 4571
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$2900(Lcom/android/calendar/DayView;)I

    move-result v1

    #setter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$2502(Lcom/android/calendar/DayView;I)I

    goto :goto_9c
.end method
