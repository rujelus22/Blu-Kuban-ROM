.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;
.super Landroid/os/Handler;
.source "ProjectEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2796
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x0

    .line 2799
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2800
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$6()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2801
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_20

    .line 2804
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2851
    :cond_1f
    :goto_1f
    return-void

    .line 2809
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v1

    if-nez v1, :cond_53

    .line 2811
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetEstimatedTime()I

    move-result v0

    .line 2812
    .local v0, lEst:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Estimated time is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2813
    if-nez v0, :cond_4c

    .line 2814
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1f

    .line 2817
    :cond_4c
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    div-int/lit8 v2, v0, 0x64

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2820
    .end local v0           #lEst:I
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is inside ProgressHandler and values is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2822
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v1

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_9e

    .line 2824
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2825
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2847
    :goto_8e
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$12(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1f

    .line 2827
    :cond_9e
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v1

    const/16 v2, 0x5b

    if-lt v1, v2, :cond_c7

    .line 2829
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2830
    const-string v1, "This is after Export movie is completed"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2832
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8e

    .line 2835
    :cond_c7
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_fa

    .line 2837
    :cond_db
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2838
    const-string v1, "ExportThread 90% but Export is over"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2840
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8e

    .line 2843
    :cond_fa
    const-string v1, "Progress handler waiting ..."

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_8e
.end method
