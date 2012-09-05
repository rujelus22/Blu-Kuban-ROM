.class Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;
.super Ljava/lang/Object;
.source "NetworkStateTrackerMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->handler:Landroid/os/Handler;

    .line 213
    iput-object p2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->handler:Landroid/os/Handler;

    .line 214
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    iget-object v4, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-boolean v4, v4, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    if-nez v4, :cond_9

    .line 246
    :goto_8
    return-void

    .line 220
    :cond_9
    iget-object v4, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_76

    .line 222
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 223
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 224
    .local v0, ipAddress:I
    if-eqz v0, :cond_69

    .line 225
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v2, v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v2}, Lcom/samsung/sample/networkstate/INetworkState;->wifiConnected()V

    .line 226
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$300(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v2

    if-nez v2, :cond_54

    .line 227
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2, v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 232
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$300(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v2

    if-eqz v2, :cond_4c

    .line 233
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$300(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v3

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I
    invoke-static {v2, v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$202(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 245
    .end local v0           #ipAddress:I
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 228
    .restart local v0       #ipAddress:I
    .restart local v1       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_54
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$300(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v2

    if-eq v0, v2, :cond_39

    .line 229
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2, v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 230
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v2, v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v2}, Lcom/samsung/sample/networkstate/INetworkState;->ipChanged()V

    goto :goto_39

    .line 235
    :cond_69
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v2, v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v2}, Lcom/samsung/sample/networkstate/INetworkState;->wifiDisconnected()V

    .line 236
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2, v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    goto :goto_4c

    .line 238
    .end local v0           #ipAddress:I
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_76
    iget-object v4, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_8e

    :goto_82
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_90

    .line 240
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v2, v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v2}, Lcom/samsung/sample/networkstate/INetworkState;->wifiConnected()V

    goto :goto_4c

    :cond_8e
    move v2, v3

    .line 238
    goto :goto_82

    .line 242
    :cond_90
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v2, v2, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v2}, Lcom/samsung/sample/networkstate/INetworkState;->wifiDisconnected()V

    .line 243
    iget-object v2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v2, v3}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    goto :goto_4c
.end method
