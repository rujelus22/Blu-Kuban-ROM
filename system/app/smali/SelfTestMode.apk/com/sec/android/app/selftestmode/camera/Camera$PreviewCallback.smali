.class public final Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 1267
    const-string v0, "testCamera"

    const-string v1, "onPreviewFrame - get the preview image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->bDoneDTP:Z
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->bSentAck:Z
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3000(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1277
    :cond_34
    return-void
.end method
