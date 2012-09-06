.class Lcom/google/android/apps/unveil/sensors/CameraManager$11;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 2
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$11;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$11;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraAcquirer:Lcom/google/android/apps/unveil/sensors/CameraProvider;
    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$1000(Lcom/google/android/apps/unveil/sensors/CameraManager;)Lcom/google/android/apps/unveil/sensors/CameraProvider;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$11;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraTypeProvider:Lcom/google/android/apps/unveil/env/Provider;
    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$800(Lcom/google/android/apps/unveil/sensors/CameraManager;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$11;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->cameraParamsProvider:Lcom/google/android/apps/unveil/env/Provider;
    invoke-static {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$900(Lcom/google/android/apps/unveil/sensors/CameraManager;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$11;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->acquireCamera(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)V

    .line 824
    return-void
.end method
