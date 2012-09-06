.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;
.implements Landroid/support/place/connector/DeviceConnector$OnGetDeviceSerialNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddConnectorWorkflow"
.end annotation


# instance fields
.field private mConnector:Landroid/support/place/connector/ConnectorInfo;

.field private mDeviceConnector:Landroid/support/place/connector/DeviceConnector;

.field private mId:Ljava/lang/String;

.field private mSerialNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 4
    .parameter
    .parameter "id"
    .parameter "connector"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mId:Ljava/lang/String;

    .line 649
    iput-object p3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    .line 650
    return-void
.end method


# virtual methods
.method public onGetDeviceName(Ljava/lang/String;)V
    .registers 13
    .parameter "deviceName"

    .prologue
    const/4 v2, 0x0

    .line 695
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRxServiceState(Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/UserRouteState;
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/UserRouteState;

    move-result-object v10

    .line 696
    .local v10, state:Lcom/android/athome/picker/UserRouteState;
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mId:Ljava/lang/String;

    const-string v4, ""

    if-nez v10, :cond_77

    const/4 v5, 0x0

    :goto_12
    if-nez v10, :cond_7c

    move v6, v2

    :goto_15
    move-object v3, p1

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->buildUserRoute(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v9

    .line 699
    .local v9, route:Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/athome/picker/media/MediaRouterCompat;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v7, connectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/connector/ConnectorInfo;>;"
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mId:Ljava/lang/String;

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mSerialNumber:Ljava/lang/String;

    invoke-direct {v2, v3, v9, v7, v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v8

    .line 706
    .local v8, endpoint:Landroid/support/place/rpc/EndpointInfo;
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;->getRouteIdValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 708
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2702(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .line 709
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x80

    invoke-static {v0, v1, v9}, Lcom/android/athome/picker/media/MediaRouterCompat;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 712
    :cond_76
    return-void

    .line 696
    .end local v7           #connectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/connector/ConnectorInfo;>;"
    .end local v8           #endpoint:Landroid/support/place/rpc/EndpointInfo;
    .end local v9           #route:Ljava/lang/Object;
    :cond_77
    invoke-virtual {v10}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v5

    goto :goto_12

    :cond_7c
    invoke-virtual {v10}, Lcom/android/athome/picker/UserRouteState;->getMute()Z

    move-result v6

    goto :goto_15
.end method

.method public onGetDeviceSerialNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "serialNumber"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mSerialNumber:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mDeviceConnector:Landroid/support/place/connector/DeviceConnector;

    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow$1;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow$1;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/place/connector/DeviceConnector;->getDeviceName(Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 691
    return-void
.end method

.method run()V
    .registers 6

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    if-nez v0, :cond_15

    .line 678
    :cond_14
    :goto_14
    return-void

    .line 656
    :cond_15
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;
    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->getConnectorsForDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 658
    const/4 v1, 0x0

    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 660
    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/support/place/connector/DeviceConnector;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 661
    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getExtras()Landroid/support/place/rpc/RpcData;

    move-result-object v3

    .line 662
    const-string v4, "serial"

    invoke-virtual {v3, v4}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 663
    new-instance v1, Landroid/support/place/connector/DeviceConnector;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/support/place/connector/DeviceConnector;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mDeviceConnector:Landroid/support/place/connector/DeviceConnector;

    .line 665
    const-string v0, "serial"

    invoke-virtual {v3, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->onGetDeviceSerialNumber(Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x1

    .line 671
    :goto_75
    if-nez v0, :cond_14

    .line 672
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    const-string v1, "_broker"

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v2}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 675
    new-instance v1, Landroid/support/place/connector/DeviceConnector;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #getter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$1800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/Broker;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/place/connector/DeviceConnector;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->mDeviceConnector:Landroid/support/place/connector/DeviceConnector;

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->onGetDeviceSerialNumber(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_a5
    move v0, v1

    goto :goto_75
.end method
