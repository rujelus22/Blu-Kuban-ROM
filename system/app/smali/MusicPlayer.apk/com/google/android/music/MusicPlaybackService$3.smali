.class Lcom/google/android/music/MusicPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
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
    .line 167
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 171
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    const/4 v0, 0x1

    .line 173
    .local v0, landscape:Z
    :goto_1c
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v1

    if-eq v0, v1, :cond_33

    .line 174
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z
    invoke-static {v1, v0}, Lcom/google/android/music/MusicPlaybackService;->access$402(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 175
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MusicPlaybackService$3$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/MusicPlaybackService$3$1;-><init>(Lcom/google/android/music/MusicPlaybackService$3;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 182
    .end local v0           #landscape:Z
    :cond_33
    return-void

    .line 171
    :cond_34
    const/4 v0, 0x0

    goto :goto_1c
.end method
