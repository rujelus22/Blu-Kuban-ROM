.class Landroid/support/place/connector/DeviceConnector$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/connector/DeviceConnector$Listener;

.field final synthetic this$0:Landroid/support/place/connector/DeviceConnector;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/DeviceConnector;Landroid/support/place/connector/Broker;Landroid/support/place/connector/DeviceConnector$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Landroid/support/place/connector/DeviceConnector$Presenter;->this$0:Landroid/support/place/connector/DeviceConnector;

    .line 681
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 682
    iput-object p3, p0, Landroid/support/place/connector/DeviceConnector$Presenter;->_listener:Landroid/support/place/connector/DeviceConnector$Listener;

    .line 683
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 687
    const-string v1, "onDeviceNameChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 690
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector$Presenter;->_listener:Landroid/support/place/connector/DeviceConnector$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/connector/DeviceConnector$Listener;->onDeviceNameChanged(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    .line 701
    :goto_18
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 693
    :cond_1a
    const-string v1, "onLegalInformationReady"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 695
    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector$Presenter;->_listener:Landroid/support/place/connector/DeviceConnector$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/connector/DeviceConnector$Listener;->onLegalInformationReady(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_18

    .line 699
    :cond_2e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_19
.end method
