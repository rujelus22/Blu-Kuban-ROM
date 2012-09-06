.class final Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/connector/ConnectorRegistryRpc;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/ConnectorRegistryRpc;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->this$0:Landroid/support/place/connector/ConnectorRegistryRpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->methodId:I

    .line 102
    iput-object p3, p0, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 103
    return-void
.end method


# virtual methods
.method public final listConnectors([B)V
    .registers 5
    .parameter

    .prologue
    .line 117
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 119
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v1

    .line 120
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 121
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/ConnectorRegistryRpc$OnListConnectors;

    invoke-interface {v0, v1}, Landroid/support/place/connector/ConnectorRegistryRpc$OnListConnectors;->onListConnectors(Ljava/util/List;)V

    .line 123
    :cond_18
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iget v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_a

    .line 114
    :goto_5
    return-void

    .line 110
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;->listConnectors([B)V

    goto :goto_5

    .line 106
    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
