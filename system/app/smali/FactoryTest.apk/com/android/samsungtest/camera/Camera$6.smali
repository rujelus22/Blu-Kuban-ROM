.class Lcom/android/samsungtest/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1403
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$6;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1405
    const-string v0, "testCamera"

    const-string v1, "Camera Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$6;->this$0:Lcom/android/samsungtest/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.CameraStart.Pass"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "TYPE"

    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$6;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v3}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TYPE"

    sget v5, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1412
    return-void
.end method
