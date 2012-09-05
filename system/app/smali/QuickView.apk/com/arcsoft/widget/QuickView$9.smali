.class Lcom/arcsoft/widget/QuickView$9;
.super Landroid/os/Handler;
.source "QuickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/QuickView;->initAMPV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 763
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b8

    .line 813
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 765
    :pswitch_a
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mhAMPV:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1000(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mIsPaused:Z
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$2200(Lcom/arcsoft/widget/QuickView;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, ret:I
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mbFirstStart:Z
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$2300(Lcom/arcsoft/widget/QuickView;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 770
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mbFirstStart:Z
    invoke-static {v1, v3}, Lcom/arcsoft/widget/QuickView;->access$2302(Lcom/arcsoft/widget/QuickView;Z)Z

    .line 771
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mbFirstAutoFadeOutSet:Z
    invoke-static {v1, v2}, Lcom/arcsoft/widget/QuickView;->access$2402(Lcom/arcsoft/widget/QuickView;Z)Z

    .line 773
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->showOrHideMainMenu(ZZ)V
    invoke-static {v1, v2, v2}, Lcom/arcsoft/widget/QuickView;->access$2500(Lcom/arcsoft/widget/QuickView;ZZ)V

    .line 774
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 775
    const-string v1, "QuickView:"

    const-string v2, "initAMPV show filmstrip"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_46
    :goto_46
    const v1, 0x80002

    if-eq v1, v0, :cond_72

    .line 783
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 777
    :cond_57
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/BounceView;->isBouncingBack()Z

    move-result v1

    if-nez v1, :cond_46

    .line 779
    :cond_67
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mhAMPV:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1000(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    invoke-static {v1}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_doStep(I)I

    move-result v0

    goto :goto_46

    .line 786
    :cond_72
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 796
    .end local v0           #ret:I
    :pswitch_7e
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->showOrHideMainMenu(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/arcsoft/widget/QuickView;->access$2500(Lcom/arcsoft/widget/QuickView;ZZ)V

    goto :goto_9

    .line 799
    :pswitch_84
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 800
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 802
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/motion/MREvent;

    #calls: Lcom/arcsoft/widget/QuickView;->tiltPan(Landroid/hardware/motion/MREvent;)V
    invoke-static {v2, v1}, Lcom/arcsoft/widget/QuickView;->access$2600(Lcom/arcsoft/widget/QuickView;Landroid/hardware/motion/MREvent;)V

    goto/16 :goto_9

    .line 806
    :pswitch_9e
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 809
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$9;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/motion/MREvent;

    #calls: Lcom/arcsoft/widget/QuickView;->tiltZoom(Landroid/hardware/motion/MREvent;)V
    invoke-static {v2, v1}, Lcom/arcsoft/widget/QuickView;->access$2700(Lcom/arcsoft/widget/QuickView;Landroid/hardware/motion/MREvent;)V

    goto/16 :goto_9

    .line 763
    :pswitch_data_b8
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
        :pswitch_7e
        :pswitch_84
        :pswitch_9e
    .end packed-switch
.end method
