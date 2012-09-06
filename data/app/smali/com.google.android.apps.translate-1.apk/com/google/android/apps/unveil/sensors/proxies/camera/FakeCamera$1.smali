.class Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$1;
.super Ljava/lang/Thread;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$1;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 151
    const-wide/16 v1, 0x64

    :try_start_2
    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$1;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_11

    .line 155
    :goto_5
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$1;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->focusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$000(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 156
    return-void

    .line 152
    :catch_11
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
