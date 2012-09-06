.class Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;
.super Ljava/lang/Object;
.source "FakeCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;

.field final synthetic val$jpegBytes:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;->this$1:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;->val$jpegBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;->this$1:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;

    iget-object v0, v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;->val$callback:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3$1;->val$jpegBytes:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 280
    return-void
.end method
