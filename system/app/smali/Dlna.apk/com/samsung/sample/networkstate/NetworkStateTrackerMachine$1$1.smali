.class Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;
.super Ljava/lang/Object;
.source "NetworkStateTrackerMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

.field final synthetic val$info:Landroid/net/NetworkInfo;

.field final synthetic val$wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;Landroid/net/NetworkInfo;Landroid/net/wifi/WifiInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iput-object p2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$info:Landroid/net/NetworkInfo;

    iput-object p3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 239
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 240
    const-string v0, "Tracker"

    const-string v1, "Broadcast: Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bReceiveAutoIpCompleted:Z

    .line 242
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->ipAddress:I
    invoke-static {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$102(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 243
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I
    invoke-static {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$200(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I
    invoke-static {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$200(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v1, v1, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->ipAddress:I
    invoke-static {v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$100(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v1

    if-eq v0, v1, :cond_4e

    .line 244
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v0}, Lcom/samsung/sample/networkstate/INetworkState;->ipChanged()V

    .line 250
    :cond_4e
    :goto_4e
    return-void

    .line 247
    :cond_4f
    const-string v0, "Tracker"

    const-string v1, "Broadcast: Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bReceiveAutoIpCompleted:Z

    goto :goto_4e
.end method
