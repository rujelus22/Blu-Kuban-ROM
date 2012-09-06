.class Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;
.super Ljava/lang/Thread;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

.field final synthetic val$callback:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/hardware/Camera$PictureCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->val$callback:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 245
    const-wide/16 v7, 0x64

    :try_start_3
    invoke-static {v7, v8}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_a2

    .line 251
    :goto_6
    monitor-enter p0

    .line 252
    :try_start_7
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v7

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->access$300(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[I

    move-result-object v7

    if-nez v7, :cond_a8

    .line 253
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v7, v7, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v8}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v8, v8, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v7, v8

    new-array v1, v7, [I

    .line 254
    .local v1, frameBytesRgb:[I
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v7

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->access$400(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[B

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v8}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v8, v8, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v9, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v9}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v9, v9, Lcom/google/android/apps/unveil/env/Size;->height:I

    const/4 v10, 0x0

    invoke-static {v7, v1, v8, v9, v10}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertYUV420SPToARGB8888([B[IIIZ)V

    .line 259
    :goto_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_b3

    .line 261
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v7, v7, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v8}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v8, v8, Lcom/google/android/apps/unveil/env/Size;->height:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 265
    .local v3, lastFrameBitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$500(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->getPictureSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v6

    .line 267
    .local v6, pictureSize:Lcom/google/android/apps/unveil/env/Size;
    iget v7, v6, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v8, v6, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v3, v7, v8, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 269
    .local v5, pictureBmp:Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;
    invoke-static {v8}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$500(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    move-result-object v8

    const-string v9, "jpeg-quality"

    invoke-virtual {v8, v9}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 274
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 275
    .local v2, jpegBytes:[B
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$600(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;

    invoke-direct {v8, p0, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;[B)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void

    .line 246
    .end local v1           #frameBytesRgb:[I
    .end local v2           #jpegBytes:[B
    .end local v3           #lastFrameBitmap:Landroid/graphics/Bitmap;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .end local v5           #pictureBmp:Landroid/graphics/Bitmap;
    .end local v6           #pictureSize:Lcom/google/android/apps/unveil/env/Size;
    :catch_a2
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 257
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_a8
    :try_start_a8
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v7

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I
    invoke-static {v7}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->access$300(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[I

    move-result-object v1

    .restart local v1       #frameBytesRgb:[I
    goto :goto_4c

    .line 259
    .end local v1           #frameBytesRgb:[I
    :catchall_b3
    move-exception v7

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_b3

    throw v7
.end method
