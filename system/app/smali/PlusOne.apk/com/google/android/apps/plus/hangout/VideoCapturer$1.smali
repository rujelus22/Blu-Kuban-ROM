.class Lcom/google/android/apps/plus/hangout/VideoCapturer$1;
.super Ljava/lang/Object;
.source "VideoCapturer.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/VideoCapturer;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 8
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    monitor-enter v1

    .line 149
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->access$000(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    #calls: Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceOrientationChanged()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->access$100(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 156
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    #calls: Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCamera()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->access$200(Lcom/google/android/apps/plus/hangout/VideoCapturer;)V

    .line 158
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 161
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoCapturer;->nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->access$400(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->access$300(Lcom/google/android/apps/plus/hangout/VideoCapturer;)I

    move-result v4

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->provideOutgoingVideoFrame([BJI)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;->this$0:Lcom/google/android/apps/plus/hangout/VideoCapturer;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->access$500(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 167
    :cond_3a
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v0
.end method
