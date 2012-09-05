.class Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;
.super Landroid/os/Handler;
.source "EvBaseGestureProc.java"


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
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    .line 523
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x19

    const/4 v1, 0x4

    .line 525
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    .line 560
    :cond_8
    :goto_8
    return-void

    .line 528
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    if-eqz v0, :cond_8

    .line 529
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSingleTouchModel()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 530
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->refreshZoomBt()V

    .line 532
    :cond_1e
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$0(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;I)V

    goto :goto_8

    .line 536
    :pswitch_2a
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    if-eqz v0, :cond_8

    .line 537
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSingleTouchModel()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 538
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->refreshZoomBt()V

    .line 540
    :cond_3f
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    const/4 v1, 0x0

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$0(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;I)V

    goto :goto_8

    .line 544
    :pswitch_4c
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    if-eqz v0, :cond_8

    .line 545
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setText()V
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$1(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V

    goto :goto_8

    .line 548
    :pswitch_62
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$2(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 549
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setZoomIn()V
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$3(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V

    .line 550
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 554
    :pswitch_7e
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$2(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #calls: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setZoomout()V
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$4(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V

    .line 556
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;->this$1:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    #getter for: Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    invoke-static {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfo:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 525
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2a
        :pswitch_4c
        :pswitch_62
        :pswitch_7e
    .end packed-switch
.end method
