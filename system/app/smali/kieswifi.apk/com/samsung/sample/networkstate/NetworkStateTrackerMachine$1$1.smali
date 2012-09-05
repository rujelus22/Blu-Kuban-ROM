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
    .line 189
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iput-object p2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$info:Landroid/net/NetworkInfo;

    iput-object p3, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 191
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 192
    const-string v0, "Broadcast: Connected"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->val$wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->ipAddress:I
    invoke-static {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$102(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 194
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I
    invoke-static {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$200(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v0

    if-eqz v0, :cond_46

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

    if-eq v0, v1, :cond_46

    .line 195
    iget-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1$1;->this$1:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$1;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v0, v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mConnectedState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v0}, Lcom/samsung/sample/networkstate/INetworkState;->ipChanged()V

    .line 200
    :cond_46
    :goto_46
    return-void

    .line 198
    :cond_47
    const-string v0, "Broadcast: Disconnected"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_46
.end method
