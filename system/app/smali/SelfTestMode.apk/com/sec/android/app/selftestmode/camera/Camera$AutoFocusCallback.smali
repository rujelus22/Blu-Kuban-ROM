.class final Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 11
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3102(Lcom/sec/android/app/selftestmode/camera/Camera;J)J

    .line 1291
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto focus took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3100(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusStartTime:J
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3200(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$700(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    move-result-object v0

    if-nez v0, :cond_50

    .line 1303
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mCaptureObject == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3300(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    move-result-object v1

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$702(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    .line 1315
    :cond_50
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3400(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_89

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$700(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1319
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUSING_SNAP_ON_FINISH && mCaptureObject != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    if-eqz p1, :cond_7e

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0, v6}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3402(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    .line 1345
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$700(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;->onSnap()V

    .line 1395
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3700(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    .line 1397
    :goto_7d
    return-void

    .line 1335
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0, v7}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3402(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->dialogFocusPopup()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3500(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    goto :goto_7d

    .line 1347
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3400(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b7

    .line 1349
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUSING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1359
    if-eqz p1, :cond_ac

    .line 1361
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0, v6}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3402(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    goto :goto_78

    .line 1365
    :cond_ac
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0, v7}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3402(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->dialogFocusPopup()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3500(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    goto :goto_7d

    .line 1373
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3400(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_78

    .line 1379
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUS_NOT_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_78

    goto :goto_78
.end method
