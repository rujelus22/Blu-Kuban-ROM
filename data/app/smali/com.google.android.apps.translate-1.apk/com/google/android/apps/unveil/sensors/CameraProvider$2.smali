.class Lcom/google/android/apps/unveil/sensors/CameraProvider$2;
.super Ljava/lang/Object;
.source "CameraProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraProvider;->releaseCamera(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

.field final synthetic val$camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraProvider;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;->val$camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 122
    invoke-static {}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$200(Lcom/google/android/apps/unveil/sensors/CameraProvider;)Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$2;->val$camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    #calls: Lcom/google/android/apps/unveil/sensors/CameraProvider;->releaseCameraBlocking(Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    invoke-static {v0, v2, v3}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$300(Lcom/google/android/apps/unveil/sensors/CameraProvider;Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method
