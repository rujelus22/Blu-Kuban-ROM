.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;
.super Ljava/lang/Object;
.source "ProjectPlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 484
    if-eqz p3, :cond_31

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$14(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seeking:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    mul-int/lit16 v1, p2, 0x3e8

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->story_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_31
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 470
    const-string v0, "terminate when seeking :: if only player present"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 473
    const-string v0, "progress change::playing-->pause"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 477
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    :cond_3d
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/16 v3, 0x6c

    .line 449
    const-string v0, "stop tracking"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 453
    const-string v0, "onStopTracking:::control visisble"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    const-string v0, "D7"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$12(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    const-string v0, "onProgresschanged::will seek"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 463
    :cond_4d
    return-void
.end method
