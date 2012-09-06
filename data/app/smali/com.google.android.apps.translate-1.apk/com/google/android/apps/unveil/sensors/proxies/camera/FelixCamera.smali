.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;
.super Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;
.source "FelixCamera.java"


# static fields
.field private static globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;


# instance fields
.field private skipNextRelease:Z


# direct methods
.method protected constructor <init>(Landroid/hardware/Camera;)V
    .registers 3
    .parameter "actualCamera"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;-><init>(Landroid/hardware/Camera;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->skipNextRelease:Z

    .line 50
    return-void
.end method

.method public static open(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;
    .registers 5
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    if-eqz v1, :cond_7

    .line 26
    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    .line 35
    :goto_6
    return-object v1

    .line 29
    :cond_7
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 30
    .local v0, camera:Landroid/hardware/Camera;
    if-nez v0, :cond_12

    .line 31
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 34
    :cond_12
    new-instance v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;-><init>(Landroid/hardware/Camera;)V

    sput-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    .line 35
    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    goto :goto_6
.end method

.method public static skipNextRelease()V
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    if-eqz v0, :cond_9

    .line 44
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->skipNextRelease:Z

    .line 46
    :cond_9
    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->skipNextRelease:Z

    if-eqz v0, :cond_8

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->skipNextRelease:Z

    .line 60
    :goto_7
    return-void

    .line 57
    :cond_8
    invoke-super {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->release()V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;->globalCamera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FelixCamera;

    goto :goto_7
.end method
