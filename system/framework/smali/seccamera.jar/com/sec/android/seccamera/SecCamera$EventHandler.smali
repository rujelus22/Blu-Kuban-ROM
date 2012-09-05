.class Lcom/sec/android/seccamera/SecCamera$EventHandler;
.super Landroid/os/Handler;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Lcom/sec/android/seccamera/SecCamera;

.field final synthetic this$0:Lcom/sec/android/seccamera/SecCamera;


# direct methods
.method public constructor <init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    .line 984
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 985
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    .line 986
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 990
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_46e

    .line 1248
    const-string v1, "SecCamera-JNI-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_21
    :goto_21
    return-void

    .line 992
    :sswitch_22
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 993
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$ShutterCallback;->onShutter()V

    goto :goto_21

    .line 998
    :sswitch_34
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 999
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_21

    .line 1004
    :sswitch_4e
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1005
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_21

    .line 1010
    :sswitch_68
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1011
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    move-result-object v0

    .line 1012
    .local v0, cb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$400(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1016
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->access$302(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1023
    :cond_84
    :goto_84
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$PreviewCallback;->onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_21

    .line 1017
    :cond_90
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$500(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 1021
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #calls: Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZ)V
    invoke-static {v3, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->access$600(Lcom/sec/android/seccamera/SecCamera;ZZ)V

    goto :goto_84

    .line 1028
    .end local v0           #cb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    :sswitch_9e
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1029
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_21

    .line 1034
    :sswitch_b9
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1035
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;->onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_21

    .line 1041
    :sswitch_d0
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1042
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_eb

    :goto_e4
    iget-object v2, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v3, v4, v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;->onZoomChange(IZLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_21

    :cond_eb
    move v1, v2

    goto :goto_e4

    .line 1047
    :sswitch_ed
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1048
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/sec/android/seccamera/SecCamera$Face;

    check-cast v1, [Lcom/sec/android/seccamera/SecCamera$Face;

    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;->onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_21

    .line 1053
    :sswitch_108
    const-string v1, "SecCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    move-result-object v1

    if-eqz v1, :cond_137

    .line 1055
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$ErrorCallback;->onError(ILcom/sec/android/seccamera/SecCamera;)V

    .line 1058
    :cond_137
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_21

    .line 1060
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #calls: Lcom/sec/android/seccamera/SecCamera;->native_release()V
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1200(Lcom/sec/android/seccamera/SecCamera;)V

    .line 1061
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #setter for: Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z
    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->access$1302(Lcom/sec/android/seccamera/SecCamera;Z)Z

    goto/16 :goto_21

    .line 1069
    :sswitch_149
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "SAMSUNG_SHOT_COMPRESSED_IMAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1071
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v2, v1, v3}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_21

    .line 1076
    :sswitch_16b
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1077
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaError(I)V

    goto/16 :goto_21

    .line 1081
    :sswitch_17e
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1082
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaDirectionChanged(I)V

    goto/16 :goto_21

    .line 1086
    :sswitch_193
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1087
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaRectChanged(II)V

    goto/16 :goto_21

    .line 1092
    :sswitch_1aa
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1093
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCapturedNew()V

    goto/16 :goto_21

    .line 1097
    :sswitch_1bd
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1098
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaProgressStitching(I)V

    goto/16 :goto_21

    .line 1102
    :sswitch_1d2
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1103
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCaptured()V

    goto/16 :goto_21

    .line 1108
    :sswitch_1e5
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    move-result-object v1

    if-eqz v1, :cond_1fa

    .line 1109
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;->onAddMeError(I)V

    goto/16 :goto_21

    .line 1111
    :cond_1fa
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "mOnAddMeEventListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1116
    :sswitch_203
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    move-result-object v1

    if-eqz v1, :cond_216

    .line 1117
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;->onAddMeCapturedFirstPerson()V

    goto/16 :goto_21

    .line 1119
    :cond_216
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "mOnAddMeEventListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1124
    :sswitch_21f
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    move-result-object v1

    if-eqz v1, :cond_234

    .line 1125
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;->onAddMeProgressStitching(I)V

    goto/16 :goto_21

    .line 1127
    :cond_234
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "mOnAddMeEventListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1131
    :sswitch_23d
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1132
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotCapturingProgressed(II)V

    goto/16 :goto_21

    .line 1136
    :sswitch_254
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1137
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotCapturingStopped(I)V

    goto/16 :goto_21

    .line 1141
    :sswitch_269
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1142
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotSavingCompleted()V

    goto/16 :goto_21

    .line 1146
    :sswitch_27c
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1147
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultStarted()V

    goto/16 :goto_21

    .line 1151
    :sswitch_28f
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1152
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultProgress(I)V

    goto/16 :goto_21

    .line 1156
    :sswitch_2a4
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1157
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_2bb

    :goto_2b6
    invoke-interface {v3, v1}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultCompleted(Z)V

    goto/16 :goto_21

    :cond_2bb
    move v1, v2

    goto :goto_2b6

    .line 1161
    :sswitch_2bd
    const-string v1, "SecCamera-JNI-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1163
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotAcquisitionProgress(I)V

    goto/16 :goto_21

    .line 1167
    :sswitch_2ec
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1168
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v2, v1}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotRectChanged([B)V

    goto/16 :goto_21

    .line 1172
    :sswitch_305
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1173
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCaptured()V

    goto/16 :goto_21

    .line 1177
    :sswitch_318
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1178
    const-string v1, "SecCamera-JNI-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CARTOON_SHOT_PROGRESS_RENDERING :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;->onCartoonShotProgressRendering(I)V

    goto/16 :goto_21

    .line 1183
    :sswitch_347
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1184
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotDetectionSuccess()V

    goto/16 :goto_21

    .line 1188
    :sswitch_35a
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1189
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v2, v1}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotFaceRectChanged([B)V

    goto/16 :goto_21

    .line 1193
    :sswitch_373
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1194
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v2, v1}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotSmileRectChanged([B)V

    goto/16 :goto_21

    .line 1199
    :sswitch_38c
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1200
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultStarted()V

    goto/16 :goto_21

    .line 1204
    :sswitch_39f
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1205
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultProgress(I)V

    goto/16 :goto_21

    .line 1209
    :sswitch_3b4
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1210
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3cb

    :goto_3c6
    invoke-interface {v3, v1}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultCompleted(Z)V

    goto/16 :goto_21

    :cond_3cb
    move v1, v2

    goto :goto_3c6

    .line 1215
    :sswitch_3cd
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1216
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3e4

    :goto_3df
    invoke-interface {v3, v1}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotAllProgressCompleted(Z)V

    goto/16 :goto_21

    :cond_3e4
    move v1, v2

    goto :goto_3df

    .line 1221
    :sswitch_3e6
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1222
    const-string v1, "SecCamera-JNI-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL_MSG_OBJ_TRACKING :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;->onObjectTrackingStatus(I)V

    goto/16 :goto_21

    .line 1227
    :sswitch_415
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1228
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "HAL_DONE_CHK_DATALINE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;->onChkDataLineDone()V

    goto/16 :goto_21

    .line 1233
    :sswitch_42f
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1234
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotCapturingProgressed(II)V

    goto/16 :goto_21

    .line 1238
    :sswitch_446
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1239
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotCapturingStopped(I)V

    goto/16 :goto_21

    .line 1243
    :sswitch_45b
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1244
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v1}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotSavingCompleted()V

    goto/16 :goto_21

    .line 990
    :sswitch_data_46e
    .sparse-switch
        0x1 -> :sswitch_108
        0x2 -> :sswitch_22
        0x4 -> :sswitch_b9
        0x8 -> :sswitch_d0
        0x10 -> :sswitch_68
        0x40 -> :sswitch_9e
        0x80 -> :sswitch_34
        0x100 -> :sswitch_4e
        0x400 -> :sswitch_ed
        0xf001 -> :sswitch_3e6
        0xf002 -> :sswitch_415
        0xf021 -> :sswitch_16b
        0xf022 -> :sswitch_193
        0xf023 -> :sswitch_1aa
        0xf024 -> :sswitch_1bd
        0xf025 -> :sswitch_1d2
        0xf026 -> :sswitch_17e
        0xf031 -> :sswitch_23d
        0xf032 -> :sswitch_254
        0xf033 -> :sswitch_269
        0xf041 -> :sswitch_27c
        0xf042 -> :sswitch_28f
        0xf043 -> :sswitch_2a4
        0xf044 -> :sswitch_2bd
        0xf045 -> :sswitch_305
        0xf046 -> :sswitch_2ec
        0xf051 -> :sswitch_1e5
        0xf052 -> :sswitch_203
        0xf053 -> :sswitch_21f
        0xf061 -> :sswitch_347
        0xf062 -> :sswitch_35a
        0xf063 -> :sswitch_373
        0xf071 -> :sswitch_318
        0xf081 -> :sswitch_38c
        0xf082 -> :sswitch_39f
        0xf083 -> :sswitch_3b4
        0xf084 -> :sswitch_3cd
        0xf091 -> :sswitch_42f
        0xf092 -> :sswitch_446
        0xf093 -> :sswitch_45b
        0xf101 -> :sswitch_149
    .end sparse-switch
.end method
