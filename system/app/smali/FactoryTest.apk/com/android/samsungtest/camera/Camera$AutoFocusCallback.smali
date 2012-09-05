.class final Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .registers 14
    .parameter "afMsg"
    .parameter "camera"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 790
    if-ne p1, v7, :cond_cf

    .line 792
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0, v8}, Lcom/android/samsungtest/camera/Camera;->access$2402(Lcom/android/samsungtest/camera/Camera;I)I

    .line 797
    :goto_c
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAF_Fail_Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v2}, Lcom/android/samsungtest/camera/Camera;->access$2400(Lcom/android/samsungtest/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/samsungtest/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/samsungtest/camera/Camera;->access$2502(Lcom/android/samsungtest/camera/Camera;J)J

    .line 800
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto focus took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v2}, Lcom/android/samsungtest/camera/Camera;->access$2500(Lcom/android/samsungtest/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusStartTime:J
    invoke-static {v4}, Lcom/android/samsungtest/camera/Camera;->access$2600(Lcom/android/samsungtest/camera/Camera;)J

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

    .line 804
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocus - mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v2}, Lcom/android/samsungtest/camera/Camera;->access$2700(Lcom/android/samsungtest/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " afMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$700(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$Capturer;

    move-result-object v0

    if-nez v0, :cond_a0

    .line 806
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mCaptureObject == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$2800(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ImageCapture;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$702(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$Capturer;)Lcom/android/samsungtest/camera/Camera$Capturer;

    .line 812
    :cond_a0
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2700(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-ne v0, v6, :cond_ee

    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$700(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$Capturer;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 814
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUSING_SNAP_ON_FINISH && mCaptureObject != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    if-eq p1, v7, :cond_bb

    if-ne p1, v6, :cond_d6

    .line 819
    :cond_bb
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0, v9}, Lcom/android/samsungtest/camera/Camera;->access$2702(Lcom/android/samsungtest/camera/Camera;I)I

    .line 831
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$700(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$Capturer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/samsungtest/camera/Camera$Capturer;->onSnap()V

    .line 861
    :cond_c9
    :goto_c9
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2900(Lcom/android/samsungtest/camera/Camera;)V

    .line 862
    :cond_ce
    :goto_ce
    return-void

    .line 795
    :cond_cf
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2408(Lcom/android/samsungtest/camera/Camera;)I

    goto/16 :goto_c

    .line 821
    :cond_d6
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0, v10}, Lcom/android/samsungtest/camera/Camera;->access$2702(Lcom/android/samsungtest/camera/Camera;I)I

    .line 822
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2900(Lcom/android/samsungtest/camera/Camera;)V

    .line 823
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2400(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-le v0, v6, :cond_ce

    .line 825
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->dialogFocusPopup()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$3000(Lcom/android/samsungtest/camera/Camera;)V

    goto :goto_ce

    .line 832
    :cond_ee
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2700(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-ne v0, v7, :cond_148

    .line 833
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUSING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$3100(Lcom/android/samsungtest/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 837
    if-eq p1, v7, :cond_10c

    if-ne p1, v6, :cond_112

    .line 838
    :cond_10c
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0, v9}, Lcom/android/samsungtest/camera/Camera;->access$2702(Lcom/android/samsungtest/camera/Camera;I)I

    goto :goto_c9

    .line 840
    :cond_112
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0, v10}, Lcom/android/samsungtest/camera/Camera;->access$2702(Lcom/android/samsungtest/camera/Camera;I)I

    .line 841
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraSettings.FOCUSING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v2}, Lcom/android/samsungtest/camera/Camera;->access$2400(Lcom/android/samsungtest/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2400(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-le v0, v6, :cond_ce

    .line 844
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0, v8}, Lcom/android/samsungtest/camera/Camera;->access$2402(Lcom/android/samsungtest/camera/Camera;I)I

    .line 845
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->dialogFocusPopup()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$3000(Lcom/android/samsungtest/camera/Camera;)V

    goto :goto_ce

    .line 850
    :cond_148
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2700(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_c9

    .line 853
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUS_NOT_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_c9

    goto/16 :goto_c9
.end method
