.class Lcom/google/android/apps/plus/service/CameraMonitor$1;
.super Ljava/lang/Object;
.source "CameraMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/CameraMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/CameraMonitor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/CameraMonitor;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->this$0:Lcom/google/android/apps/plus/service/CameraMonitor;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_28

    move-result-object v0

    .line 64
    .local v0, esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_e

    .line 74
    iget-object v2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    :goto_a
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 76
    return-void

    .line 69
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 70
    iget-object v2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    .line 71
    .local v1, facade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->requestUploadSync()V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_28

    .line 74
    .end local v1           #facade:Lcom/google/android/picasasync/PicasaFacade;
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    goto :goto_a

    .end local v0           #esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
