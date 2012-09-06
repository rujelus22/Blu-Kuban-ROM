.class Lcom/google/android/music/athome/AtHomeMusicServer$3;
.super Landroid/support/place/connector/ConnectorRegistry$Listener;
.source "AtHomeMusicServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeMusicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeMusicServer;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$3;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-direct {p0}, Landroid/support/place/connector/ConnectorRegistry$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedToRegistry(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, allConnectorInfos:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/ConnectorInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 225
    .local v0, c:Landroid/support/place/connector/ConnectorInfo;
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer$3;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    goto :goto_4

    .line 227
    .end local v0           #c:Landroid/support/place/connector/ConnectorInfo;
    :cond_14
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 232
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$3;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    new-instance v1, Landroid/support/place/music/TungstenGroupingService;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer$3;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/place/music/TungstenGroupingService;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    #setter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$602(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;

    .line 234
    :cond_24
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 4
    .parameter "connector"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$3;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$600(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$3;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$600(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/music/TungstenGroupingService;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/EndpointInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 239
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$3;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$602(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;

    .line 241
    :cond_22
    return-void
.end method
