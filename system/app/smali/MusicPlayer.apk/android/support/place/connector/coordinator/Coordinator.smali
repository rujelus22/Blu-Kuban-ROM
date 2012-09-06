.class public Landroid/support/place/connector/coordinator/Coordinator;
.super Ljava/lang/Object;
.source "Coordinator.java"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "broker"
    .parameter "endpoint"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method
