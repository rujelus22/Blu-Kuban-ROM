.class Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AwfulPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/AwfulPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field private connected:Z

.field private conservative:Z

.field private registered:Z

.field final synthetic this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/AwfulPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/AwfulPlayer;Lcom/google/android/youtube/core/player/AwfulPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer;)V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 2

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->connected:Z

    return v0
.end method

.method public isConservative()Z
    .registers 2

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->conservative:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 650
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 651
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->connected:Z

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 653
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->connected:Z

    if-eqz v1, :cond_33

    .line 654
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->isWiFiNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x1

    :goto_31
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->conservative:Z

    .line 656
    :cond_33
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->connected:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1300(Lcom/google/android/youtube/core/player/AwfulPlayer;)Lcom/google/android/youtube/core/transfer/DownloadTask;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 657
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$900(Lcom/google/android/youtube/core/player/AwfulPlayer;)J

    move-result-wide v2

    #calls: Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadFrom(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1400(Lcom/google/android/youtube/core/player/AwfulPlayer;J)V

    .line 659
    :cond_4a
    return-void

    .line 654
    :cond_4b
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public register()V
    .registers 3

    .prologue
    .line 634
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->registered:Z

    if-nez v1, :cond_17

    .line 635
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1200(Lcom/google/android/youtube/core/player/AwfulPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->registered:Z

    .line 639
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_17
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->registered:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1200(Lcom/google/android/youtube/core/player/AwfulPlayer;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 643
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1200(Lcom/google/android/youtube/core/player/AwfulPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->registered:Z

    .line 646
    :cond_18
    return-void
.end method
