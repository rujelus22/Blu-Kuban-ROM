.class Lcom/sec/android/app/ve/activity/ProjectListActivity$3;
.super Landroid/os/Handler;
.source "ProjectListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2575
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

    .line 2578
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2579
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$4()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2583
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_20

    .line 2586
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2632
    :cond_1f
    :goto_1f
    return-void

    .line 2591
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    if-nez v1, :cond_53

    .line 2593
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetEstimatedTime()I

    move-result v0

    .line 2594
    .local v0, lEst:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Estimated time is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2595
    if-nez v0, :cond_4c

    .line 2596
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1f

    .line 2599
    :cond_4c
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    div-int/lit8 v2, v0, 0x64

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$6(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2602
    .end local v0           #lEst:I
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PLA This is inside ProgressHandler and values is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2604
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_9e

    .line 2606
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2607
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2629
    :goto_8e
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1f

    .line 2609
    :cond_9e
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v1

    const/16 v2, 0x5b

    if-lt v1, v2, :cond_c7

    .line 2611
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2612
    const-string v1, "PLA This is after Export movie is completed"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2614
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8e

    .line 2617
    :cond_c7
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_fa

    .line 2619
    :cond_db
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2620
    const-string v1, "PLA ExportThread 90% but Export is over"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2622
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8e

    .line 2625
    :cond_fa
    const-string v1, "PLA Progress handler waiting ..."

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_8e
.end method
