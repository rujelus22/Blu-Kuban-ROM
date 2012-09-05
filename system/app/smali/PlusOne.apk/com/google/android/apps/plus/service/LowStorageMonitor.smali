.class public Lcom/google/android/apps/plus/service/LowStorageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LowStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/LowStorageMonitor$1;,
        Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 38
    :goto_c
    return-void

    .line 37
    :cond_d
    new-instance v1, Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;-><init>(Lcom/google/android/apps/plus/service/LowStorageMonitor$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/LowStorageMonitor$CleanupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c
.end method
