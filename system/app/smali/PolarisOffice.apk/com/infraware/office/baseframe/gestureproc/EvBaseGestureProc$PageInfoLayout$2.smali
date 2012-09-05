.class Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;
.super Ljava/lang/Object;
.source "EvBaseGestureProc.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const v6, 0x7f0c0157

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 585
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4a

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_2a

    .line 587
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #setter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z
    invoke-static {v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$5(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;Z)V

    .line 588
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->onTouchDownCheckZoomBtEnable(I)V
    invoke-static {v0, v4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$6(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;I)V

    .line 591
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0c0158

    if-ne v0, v2, :cond_4a

    .line 592
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #setter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z
    invoke-static {v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$5(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;Z)V

    .line 593
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 594
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->onTouchDownCheckZoomBtEnable(I)V
    invoke-static {v0, v5}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$6(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;I)V

    .line 598
    :cond_4a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_a8

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_68

    .line 600
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #setter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$5(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;Z)V

    .line 601
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    :cond_68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0c0158

    if-ne v0, v2, :cond_83

    .line 604
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #setter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$5(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;Z)V

    .line 605
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    :cond_83
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    const/4 v7, 0x2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 608
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->checkZoomBtEnable()V

    .line 611
    :cond_a8
    return v1
.end method
