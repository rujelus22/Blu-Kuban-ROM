.class public Landroid/support/place/connector/ConnectorRegistryRpc$Listener;
.super Landroid/support/place/connector/EventListener$Listener;
.source "ConnectorRegistryRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/ConnectorRegistryRpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/support/place/connector/EventListener$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 3
    .parameter "connector"
    .parameter "context"

    .prologue
    .line 130
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 3
    .parameter "connector"
    .parameter "context"

    .prologue
    .line 133
    return-void
.end method
