.class Landroid/support/place/connector/ConnectorContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/BrokerConnection$Listener;


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/ConnectorContainer;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorContainer;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z
    invoke-static {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z

    .line 38
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/ConnectorContainer;->onBrokerConnected(Landroid/support/place/connector/Broker;)V

    .line 39
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const-string v1, "onBrokerConnected"

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->enforceBaseCalled(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onBrokerDisconnected()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z
    invoke-static {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z

    .line 45
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorContainer;->onBrokerDisconnected()V

    .line 46
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const-string v1, "onBrokerDisconnected"

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->enforceBaseCalled(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z
    invoke-static {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z

    .line 66
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/ConnectorContainer;->onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V

    .line 67
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const-string v1, "onMasterChanged"

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->enforceBaseCalled(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z
    invoke-static {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z

    .line 52
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/ConnectorContainer;->onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    .line 53
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const-string v1, "onPlaceConnected"

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->enforceBaseCalled(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPlaceDisconnected()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z
    invoke-static {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z

    .line 59
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorContainer;->onPlaceDisconnected()V

    .line 60
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const-string v1, "onPlaceDisconnected"

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->enforceBaseCalled(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onPlaceNameChanged(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z
    invoke-static {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z

    .line 73
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/ConnectorContainer;->onPlaceNameChanged(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer$1;->this$0:Landroid/support/place/connector/ConnectorContainer;

    const-string v1, "onPlaceNameChanged"

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorContainer;->enforceBaseCalled(Ljava/lang/String;)V

    .line 75
    return-void
.end method
