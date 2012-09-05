.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 3454
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    .registers 2
    .parameter

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x5

    const/4 v6, 0x0

    .line 3456
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2e

    .line 3460
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 3463
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x41f0

    div-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$8(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 3464
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3545
    :cond_2d
    :goto_2d
    return-void

    .line 3467
    :cond_2e
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_85

    .line 3468
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 3469
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->shareIntent:Landroid/content/Intent;

    .line 3470
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->shareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3472
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->shareIntent:Landroid/content/Intent;

    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3473
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->shareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v4, v4, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3474
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->shareIntent:Landroid/content/Intent;

    const-string v3, "Sharing...."

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2d

    .line 3475
    :cond_85
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_b6

    .line 3476
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 3477
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3478
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 3479
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v2, 0x7f080030

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3480
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 3481
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    goto/16 :goto_2d

    .line 3482
    :cond_b6
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_e7

    .line 3483
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 3484
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3485
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 3486
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v2, 0x7f08002f

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3487
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 3488
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    goto/16 :goto_2d

    .line 3490
    :cond_e7
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_157

    .line 3492
    const-string v1, "Inside Remove export Dialog , delay for 500 ms"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3493
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$12(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_103

    .line 3494
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$12(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3495
    :cond_103
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I
    invoke-static {v1, v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 3496
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 3497
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 3499
    new-array v0, v5, [Ljava/lang/String;

    .line 3500
    .local v0, exPath:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->getFinalPath()[Ljava/lang/String;

    move-result-object v0

    .line 3501
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    aget-object v2, v0, v6

    iput-object v2, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finalPath:Ljava/lang/String;

    .line 3503
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/thread/ExportThread;->getFinalPath()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)V

    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 3538
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 3539
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v3, 0x7f08006f

    new-array v4, v5, [Ljava/lang/Object;

    .line 3540
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v5, v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finalPath:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 3539
    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3538
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3540
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d

    .line 3542
    .end local v0           #exPath:[Ljava/lang/String;
    :cond_157
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_2d

    .line 3543
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->releaseWakelock()V

    goto/16 :goto_2d
.end method
