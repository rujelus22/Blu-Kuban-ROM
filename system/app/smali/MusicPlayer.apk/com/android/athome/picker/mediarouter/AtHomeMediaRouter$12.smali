.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;
.super Landroid/support/place/music/TungstenGroupingService$Listener;
.source "AtHomeMediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 2
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Landroid/support/place/music/TungstenGroupingService$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 894
    const-string v1, "groupState"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 895
    .local v0, groupState:Landroid/support/place/rpc/RpcData;
    new-instance v1, Landroid/support/place/music/TgsState;

    invoke-direct {v1, v0}, Landroid/support/place/music/TgsState;-><init>(Landroid/support/place/rpc/RpcData;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V

    .line 896
    return-void
.end method

.method public onDisconnected()V
    .registers 3

    .prologue
    .line 900
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS listener onDisconnected; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 903
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/place/music/TungstenGroupingService;->startListening(Landroid/support/place/music/TungstenGroupingService$Listener;)V

    .line 905
    :cond_2c
    return-void
.end method

.method public onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter "state"
    .parameter "context"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {v1, v2, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    return-void
.end method

.method public onVolumeChanged(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/music/TgsRxVolume;",
            ">;",
            "Landroid/support/place/rpc/RpcContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, volumes:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/music/TgsRxVolume;>;"
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;

    invoke-direct {v1, p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12$1;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 927
    return-void
.end method
