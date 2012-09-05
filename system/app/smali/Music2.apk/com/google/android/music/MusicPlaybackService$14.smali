.class Lcom/google/android/music/MusicPlaybackService$14;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1318
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x1

    #calls: Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$2900(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1319
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$3102(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1320
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 1330
    :cond_25
    :goto_25
    return-void

    .line 1321
    :cond_26
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1322
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$3208(Lcom/google/android/music/MusicPlaybackService;)I

    .line 1323
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MusicPlaybackService$14$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/MusicPlaybackService$14$1;-><init>(Lcom/google/android/music/MusicPlaybackService$14;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_25
.end method
