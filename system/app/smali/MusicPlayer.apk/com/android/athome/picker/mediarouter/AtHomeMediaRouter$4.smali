.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;
.super Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
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
    .line 502
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 4
    .parameter "broker"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1702(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;

    .line 507
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1802(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;

    .line 508
    return-void
.end method

.method public onBrokerDisconnected()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1702(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;

    .line 513
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1802(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;

    .line 514
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->onTgsLost()V
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    .line 515
    return-void
.end method

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
    .line 525
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

    .line 526
    .local v0, connector:Landroid/support/place/connector/ConnectorInfo;
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    goto :goto_4

    .line 528
    .end local v0           #connector:Landroid/support/place/connector/ConnectorInfo;
    :cond_14
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 5
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 534
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 535
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connector found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addConnector(Landroid/support/place/connector/ConnectorInfo;)V
    invoke-static {v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)V

    .line 540
    :cond_35
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 542
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-nez v0, :cond_53

    .line 543
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->checkTgsVersion(Landroid/support/place/connector/ConnectorInfo;)V
    invoke-static {v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)V

    .line 550
    :cond_52
    :goto_52
    return-void

    .line 545
    :cond_53
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple TGS instances found -  now following the new connector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->checkTgsVersion(Landroid/support/place/connector/ConnectorInfo;)V
    invoke-static {v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)V

    goto :goto_52
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 5
    .parameter "connector"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 555
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connector removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->removeConnector(Landroid/support/place/connector/ConnectorInfo;)V

    .line 562
    :cond_25
    :goto_25
    return-void

    .line 558
    :cond_26
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/place/connector/ConnectorInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 559
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->onTgsLost()V
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    goto :goto_25
.end method

.method public onPlaceDisconnected()V
    .registers 3

    .prologue
    .line 519
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "onPlaceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->onTgsLost()V
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    .line 521
    return-void
.end method
