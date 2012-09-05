.class Lcom/android/samsungtest/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camera/Camera;->onStart()V
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
    .line 1337
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$5;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1339
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$5;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/Camera;->calculatePicturesRemaining()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v0, 0x1

    .line 1341
    .local v0, storageOK:Z
    :goto_9
    if-nez v0, :cond_19

    .line 1342
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$5;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$600(Lcom/android/samsungtest/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/samsungtest/camera/Camera$5$1;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camera/Camera$5$1;-><init>(Lcom/android/samsungtest/camera/Camera$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1348
    :cond_19
    return-void

    .line 1339
    .end local v0           #storageOK:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method
