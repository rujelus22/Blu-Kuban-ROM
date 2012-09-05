.class Lcom/sec/android/app/ve/activity/ProjectListActivity$4;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2666
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;
    .registers 2
    .parameter

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v7, 0x8

    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 2668
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_31

    .line 2669
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2670
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x41f0

    div-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$6(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2671
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2752
    :cond_30
    :goto_30
    return-void

    .line 2675
    :cond_31
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_60

    .line 2676
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2677
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2678
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2680
    const v1, 0x7f080030

    invoke-static {v1, v4, v6, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V

    .line 2681
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 2683
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 2684
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    goto :goto_30

    .line 2685
    :cond_60
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_8f

    .line 2686
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2687
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2688
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2690
    const v1, 0x7f08002f

    invoke-static {v1, v4, v6, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V

    .line 2691
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 2693
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 2694
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    goto :goto_30

    .line 2696
    :cond_8f
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_11b

    .line 2699
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 2700
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$10(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2701
    :cond_a6
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2703
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2704
    new-array v0, v5, [Ljava/lang/String;

    .line 2705
    .local v0, exPath:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->getFinalPath()[Ljava/lang/String;

    move-result-object v0

    .line 2706
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    aget-object v2, v0, v6

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->finalPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectListActivity;Ljava/lang/String;)V

    .line 2708
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/thread/ExportThread;->getFinalPath()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)V

    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 2739
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const v3, 0x7f08006f

    new-array v4, v5, [Ljava/lang/Object;

    .line 2740
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->finalPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2739
    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2740
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2741
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 2743
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2744
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 2745
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 2746
    const-string v1, "PLA check1"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 2748
    .end local v0           #exPath:[Ljava/lang/String;
    :cond_11b
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_30

    .line 2749
    const-string v1, "Wakelock relase from handler"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2750
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->releaseWakelock()V

    goto/16 :goto_30
.end method
