.class final Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/api/mesh/MeshService;


# direct methods
.method public constructor <init>(Landroid/support/place/api/mesh/MeshService;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->this$0:Landroid/support/place/api/mesh/MeshService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p2, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->methodId:I

    .line 213
    iput-object p3, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 214
    return-void
.end method


# virtual methods
.method public final listNodes([B)V
    .registers 5
    .parameter

    .prologue
    .line 256
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 258
    const-string v1, "_result"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 259
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 260
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/api/mesh/MeshService$OnListNodes;

    invoke-interface {v0, v1}, Landroid/support/place/api/mesh/MeshService$OnListNodes;->onListNodes(Ljava/util/List;)V

    .line 262
    :cond_18
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 217
    iget v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_12

    .line 235
    :goto_5
    :pswitch_5
    return-void

    .line 221
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->snmpSet([B)V

    goto :goto_5

    .line 226
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->snmpGet([B)V

    goto :goto_5

    .line 231
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->listNodes([B)V

    goto :goto_5

    .line 217
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method public final snmpGet([B)V
    .registers 5
    .parameter

    .prologue
    .line 247
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 249
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 250
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 251
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/api/mesh/MeshService$OnSnmpGet;

    invoke-interface {v0, v1, v2}, Landroid/support/place/api/mesh/MeshService$OnSnmpGet;->onSnmpGet(J)V

    .line 253
    :cond_16
    return-void
.end method

.method public final snmpSet([B)V
    .registers 4
    .parameter

    .prologue
    .line 238
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 240
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 241
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 242
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/api/mesh/MeshService$OnSnmpSet;

    invoke-interface {v0, v1}, Landroid/support/place/api/mesh/MeshService$OnSnmpSet;->onSnmpSet(Z)V

    .line 244
    :cond_16
    return-void
.end method
