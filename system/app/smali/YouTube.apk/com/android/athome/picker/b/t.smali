.class final Lcom/android/athome/picker/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;
.implements Landroid/support/place/connector/DeviceConnector$OnGetDeviceSerialNumber;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;

.field private b:Ljava/lang/String;

.field private c:Landroid/support/place/connector/ConnectorInfo;

.field private d:Landroid/support/place/connector/DeviceConnector;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/android/athome/picker/b/t;->b:Ljava/lang/String;

    .line 649
    iput-object p3, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

    .line 650
    return-void
.end method


# virtual methods
.method final a()V
    .registers 6

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->n(Lcom/android/athome/picker/b/a;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->n(Lcom/android/athome/picker/b/a;)Landroid/support/place/api/broker/BrokerManager;

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
    iget-object v0, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->n(Lcom/android/athome/picker/b/a;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

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

    iget-object v2, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->n(Lcom/android/athome/picker/b/a;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/support/place/connector/DeviceConnector;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v1, p0, Lcom/android/athome/picker/b/t;->d:Landroid/support/place/connector/DeviceConnector;

    .line 665
    const-string v0, "serial"

    invoke-virtual {v3, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/b/t;->onGetDeviceSerialNumber(Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x1

    .line 671
    :goto_75
    if-nez v0, :cond_14

    .line 672
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    const-string v1, "_broker"

    iget-object v2, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v2}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 675
    new-instance v1, Landroid/support/place/connector/DeviceConnector;

    iget-object v2, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->o(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/Broker;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/place/connector/DeviceConnector;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v1, p0, Lcom/android/athome/picker/b/t;->d:Landroid/support/place/connector/DeviceConnector;

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/b/t;->onGetDeviceSerialNumber(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_a5
    move v0, v1

    goto :goto_75
.end method

.method public final onGetDeviceName(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 695
    iget-object v0, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->c(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/an;

    move-result-object v3

    .line 696
    iget-object v0, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/t;->b:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_76

    const/4 v5, 0x0

    :goto_12
    if-nez v3, :cond_7b

    move v6, v2

    :goto_15
    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->p(Lcom/android/athome/picker/b/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 701
    iget-object v2, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v2, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/athome/picker/b/t;->b:Ljava/lang/String;

    new-instance v4, Lcom/android/athome/picker/b/v;

    iget-object v5, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    iget-object v6, p0, Lcom/android/athome/picker/b/t;->e:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/android/athome/picker/b/v;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v1, p0, Lcom/android/athome/picker/b/t;->c:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    .line 706
    iget-object v1, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->q(Lcom/android/athome/picker/b/a;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/athome/picker/b/t;->e:Ljava/lang/String;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/athome/picker/b/t;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->q(Lcom/android/athome/picker/b/a;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;->getRouteIdValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 708
    iget-object v1, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .line 709
    iget-object v1, p0, Lcom/android/athome/picker/b/t;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->p(Lcom/android/athome/picker/b/a;)Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x80

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 712
    :cond_75
    return-void

    .line 696
    :cond_76
    invoke-virtual {v3}, Lcom/android/athome/picker/an;->b()F

    move-result v5

    goto :goto_12

    :cond_7b
    invoke-virtual {v3}, Lcom/android/athome/picker/an;->c()Z

    move-result v6

    goto :goto_15
.end method

.method public final onGetDeviceSerialNumber(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/athome/picker/b/t;->e:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/android/athome/picker/b/t;->d:Landroid/support/place/connector/DeviceConnector;

    new-instance v1, Lcom/android/athome/picker/b/u;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/b/u;-><init>(Lcom/android/athome/picker/b/t;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/place/connector/DeviceConnector;->getDeviceName(Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 691
    return-void
.end method
