.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;
.super Ljava/lang/Object;
.source "ProjectPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v7, 0x66

    const/4 v6, 0x0

    .line 624
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 625
    .local v0, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_72

    .line 644
    :goto_14
    return v6

    .line 627
    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14

    .line 631
    :pswitch_24
    const-string v2, "fwd press time < 500"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 632
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 633
    :cond_39
    const-string v2, "fwd pressed,go next"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 635
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 638
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    const/4 v4, 0x1

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findNextValidProjectToPlay(I)I
    invoke-static {v3, v4}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$19(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)I

    move-result v3

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 639
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->setProjectName(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 640
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 641
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto :goto_14

    .line 625
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_15
        :pswitch_24
    .end packed-switch
.end method
