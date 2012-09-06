.class public Landroid/support/place/connector/ConnectorRegistryRpc;
.super Ljava/lang/Object;
.source "ConnectorRegistryRpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;,
        Landroid/support/place/connector/ConnectorRegistryRpc$Listener;
    }
.end annotation


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "broker"
    .parameter "endpoint"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public startListening(Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/support/place/connector/ConnectorRegistryRpc;->stopListening()V

    .line 172
    new-instance v0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;-><init>(Landroid/support/place/connector/ConnectorRegistryRpc;Landroid/support/place/connector/Broker;Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    .line 173
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 174
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->stopListening()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    .line 181
    :cond_c
    return-void
.end method
