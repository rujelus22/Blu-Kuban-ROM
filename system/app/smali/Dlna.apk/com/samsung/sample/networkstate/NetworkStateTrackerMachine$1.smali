.class Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateTrackerMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 233
    const-string v3, "Tracker"

    const-string v4, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 236
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 237
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v3, v3, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->networkChecker:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;-><init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;Landroid/net/NetworkInfo;Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_31
    return-void
.end method
