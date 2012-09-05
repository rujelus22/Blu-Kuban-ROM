.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v7, 0x6f

    const/4 v6, 0x0

    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 570
    .local v0, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 586
    :goto_14
    return v6

    .line 572
    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto :goto_14

    .line 576
    :pswitch_24
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_4e

    .line 577
    const-string v2, " pause press time < 500"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 579
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_14

    .line 583
    :cond_4e
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto :goto_14

    .line 570
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_15
        :pswitch_24
    .end packed-switch
.end method
