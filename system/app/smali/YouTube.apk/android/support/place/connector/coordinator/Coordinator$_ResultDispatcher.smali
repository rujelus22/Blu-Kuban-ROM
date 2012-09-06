.class final Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/connector/coordinator/Coordinator;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/coordinator/Coordinator;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->this$0:Landroid/support/place/connector/coordinator/Coordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p2, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->methodId:I

    .line 114
    iput-object p3, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public final getPlaceName([B)V
    .registers 4
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 159
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 161
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/coordinator/Coordinator$OnGetPlaceName;

    invoke-interface {v0, v1}, Landroid/support/place/connector/coordinator/Coordinator$OnGetPlaceName;->onGetPlaceName(Ljava/lang/String;)V

    .line 163
    :cond_16
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 118
    iget v0, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_12

    .line 136
    :goto_5
    return-void

    .line 122
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->versionCheck([B)V

    goto :goto_5

    .line 127
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->setPlaceName([B)V

    goto :goto_5

    .line 132
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->getPlaceName([B)V

    goto :goto_5

    .line 118
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method public final setPlaceName([B)V
    .registers 4
    .parameter

    .prologue
    .line 148
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 150
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 151
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 152
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/connector/coordinator/Coordinator$OnSetPlaceName;

    invoke-interface {v0, v1}, Landroid/support/place/connector/coordinator/Coordinator$OnSetPlaceName;->onSetPlaceName(Z)V

    .line 154
    :cond_16
    return-void
.end method

.method public final versionCheck([B)V
    .registers 5
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 141
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/connector/coordinator/VersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/coordinator/VersionCheck;

    .line 142
    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 143
    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/connector/coordinator/Coordinator$OnVersionCheck;

    invoke-interface {v1, v0}, Landroid/support/place/connector/coordinator/Coordinator$OnVersionCheck;->onVersionCheck(Landroid/support/place/connector/coordinator/VersionCheck;)V

    .line 145
    :cond_1a
    return-void
.end method
