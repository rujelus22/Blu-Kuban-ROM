.class Lcom/google/android/apps/unveil/sensors/CameraProvider$1;
.super Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.source "CameraProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraProvider;->acquireCamera(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/env/HoneycombAsyncTask",
        "<",
        "Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$extraParams:Ljava/util/Map;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraProvider;Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->val$className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->val$extraParams:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 6

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->val$className:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->val$extraParams:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->val$resources:Landroid/content/res/Resources;

    #calls: Lcom/google/android/apps/unveil/sensors/CameraProvider;->connectCameraBlocking(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$100(Lcom/google/android/apps/unveil/sensors/CameraProvider;Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->doInBackground()Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 103
    if-eqz p1, :cond_c

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;
    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$200(Lcom/google/android/apps/unveil/sensors/CameraProvider;)Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;->onCameraAcquired(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    .line 108
    :goto_b
    return-void

    .line 106
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/CameraProvider;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraProvider;->providerOwner:Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;
    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/CameraProvider;->access$200(Lcom/google/android/apps/unveil/sensors/CameraProvider;)Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/CameraProvider$Listener;->onCameraAcquisitionError()V

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    check-cast p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/sensors/CameraProvider$1;->onPostExecute(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;)V

    return-void
.end method
