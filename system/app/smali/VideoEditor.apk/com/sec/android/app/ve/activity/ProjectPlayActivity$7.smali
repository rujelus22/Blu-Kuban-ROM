.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v4, 0x67

    const/4 v3, 0x0

    .line 652
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    .line 670
    :goto_a
    return v3

    .line 654
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto :goto_a

    .line 658
    :pswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "back pressed::Pos::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 660
    :cond_42
    const-string v0, "back pressed,go back"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 664
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    const/4 v2, -0x1

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findNextValidProjectToPlay(I)I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$19(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)I

    move-result v1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v1

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->setProjectName(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto :goto_a

    .line 652
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1a
    .end packed-switch
.end method
