.class Lcom/google/android/music/LocalDevicePlayback$8;
.super Landroid/content/BroadcastReceiver;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1127
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3300(Lcom/google/android/music/LocalDevicePlayback;Z)V

    .line 1128
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mQueueIsSaveable:Z
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3402(Lcom/google/android/music/LocalDevicePlayback;Z)Z

    .line 1131
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/music/LocalDevicePlayback;->closeExternalStorageFiles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3500(Lcom/google/android/music/LocalDevicePlayback;Ljava/lang/String;)V

    .line 1141
    :cond_25
    :goto_25
    return-void

    .line 1132
    :cond_26
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1133
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$8;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3608(Lcom/google/android/music/LocalDevicePlayback;)I

    .line 1134
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/LocalDevicePlayback$8$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/LocalDevicePlayback$8$1;-><init>(Lcom/google/android/music/LocalDevicePlayback$8;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_25
.end method
