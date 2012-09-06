.class Lcom/google/android/music/LocalDevicePlayback$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
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
    .line 189
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$1;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    const-string v0, "sharedurl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, previewUrl:Ljava/lang/String;
    const-string v0, "playtype"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 196
    .local v3, peviewPlayType:I
    const-string v0, "duration"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    .line 197
    .local v4, previewDuration:J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_1c

    .line 207
    :goto_1b
    return-void

    .line 201
    :cond_1c
    sget-object v6, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/LocalDevicePlayback$1$1;-><init>(Lcom/google/android/music/LocalDevicePlayback$1;Ljava/lang/String;IJ)V

    invoke-static {v6, v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_1b
.end method
