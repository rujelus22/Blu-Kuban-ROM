.class Lcom/android/samsungtest/camera/Camera$2;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 358
    const-string v1, "testCamera"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 361
    const-string v1, "testCamera"

    const-string v2, "onReceive - ACTION_MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v2}, Lcom/android/samsungtest/camera/Camera;->calculatePicturesRemaining()I

    move-result v2

    #calls: Lcom/android/samsungtest/camera/Camera;->updateStorageHint(I)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/camera/Camera;->access$1600(Lcom/android/samsungtest/camera/Camera;I)V

    .line 424
    :cond_27
    :goto_27
    return-void

    .line 364
    :cond_28
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 366
    :cond_38
    const-string v1, "testCamera"

    const-string v2, "onReceive - ACTION_MEDIA_UNMOUNTED || ACTION_MEDIA_CHECKING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->processActionMediaUnmounted()V
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1700(Lcom/android/samsungtest/camera/Camera;)V

    goto :goto_27

    .line 369
    :cond_45
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 370
    const-string v1, "testCamera"

    const-string v2, "onReceive - ACTION_MEDIA_SCANNER_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v2}, Lcom/android/samsungtest/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_27

    .line 373
    :cond_69
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 374
    const-string v1, "testCamera"

    const-string v2, "onReceive - ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v2}, Lcom/android/samsungtest/camera/Camera;->calculatePicturesRemaining()I

    move-result v2

    #calls: Lcom/android/samsungtest/camera/Camera;->updateStorageHint(I)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/camera/Camera;->access$1600(Lcom/android/samsungtest/camera/Camera;I)V

    goto :goto_27

    .line 379
    :cond_84
    const-string v1, "com.android.samsungtest.CameraStop.Status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 381
    const-string v1, "testCamera"

    const-string v2, "onReceive - get Stop Camera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1800(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    if-ne v1, v3, :cond_c9

    .line 386
    const-string v1, "testCamera"

    const-string v2, "onReceive - Preview Started - send PASS broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.CameraStop.Pass"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "TYPE"

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v4}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TYPE"

    sget v6, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    :goto_c2
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/Camera;->finish()V

    goto/16 :goto_27

    .line 390
    :cond_c9
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1800(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    if-ne v1, v4, :cond_f9

    .line 392
    const-string v1, "testCamera"

    const-string v2, "onReceive - Preview Started - send fail broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.CameraStop.Fail"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "TYPE"

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v4}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TYPE"

    sget v6, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c2

    .line 399
    :cond_f9
    const-string v1, "testCamera"

    const-string v2, "onReceive - Not yet preview started, so we will not broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 403
    :cond_101
    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 405
    const-string v1, "testCamera"

    const-string v2, "onReceive - get Start preview status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1800(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    if-ne v1, v3, :cond_141

    .line 408
    const-string v1, "testCamera"

    const-string v2, "onReceive - Preview Started - send PASS broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.CameraStart.Pass"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "TYPE"

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v4}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TYPE"

    sget v6, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_27

    .line 412
    :cond_141
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1800(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    if-ne v1, v4, :cond_172

    .line 414
    const-string v1, "testCamera"

    const-string v2, "onReceive - Preview Failed - send FAIL broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.CameraStart.Fail"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "TYPE"

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$2;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v4}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TYPE"

    sget v6, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_27

    .line 421
    :cond_172
    const-string v1, "testCamera"

    const-string v2, "onReceive - Not yet preview started, so we will not broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27
.end method
