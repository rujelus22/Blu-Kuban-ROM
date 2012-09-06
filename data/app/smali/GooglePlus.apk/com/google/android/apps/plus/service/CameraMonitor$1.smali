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
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->this$0:Lcom/google/android/apps/plus/service/CameraMonitor;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2e

    move-result-object v0

    .line 65
    .local v0, esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_e

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    :goto_d
    return-void

    .line 69
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsEventData;->validateInstantShare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->isInstantShareEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 74
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->requestUploadSync(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2e

    .line 77
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_d

    .end local v0           #esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :catchall_2e
    move-exception v1

    iget-object v2, p0, Lcom/google/android/apps/plus/service/CameraMonitor$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
