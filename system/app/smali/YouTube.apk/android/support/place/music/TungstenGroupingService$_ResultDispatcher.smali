.class final Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/music/TungstenGroupingService;


# direct methods
.method public constructor <init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->this$0:Landroid/support/place/music/TungstenGroupingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput p2, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->methodId:I

    .line 313
    iput-object p3, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 314
    return-void
.end method


# virtual methods
.method public final assignRxToGroup([B)V
    .registers 4
    .parameter

    .prologue
    .line 380
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 382
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 383
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 384
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenGroupingService$OnAssignRxToGroup;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenGroupingService$OnAssignRxToGroup;->onAssignRxToGroup(Z)V

    .line 386
    :cond_16
    return-void
.end method

.method public final createGroup([B)V
    .registers 5
    .parameter

    .prologue
    .line 371
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 373
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsGroup;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsGroup;

    .line 374
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 375
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;

    invoke-interface {v1, v0}, Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;->onCreateGroup(Landroid/support/place/music/TgsGroup;)V

    .line 377
    :cond_1a
    return-void
.end method

.method public final getGroupState([B)V
    .registers 5
    .parameter

    .prologue
    .line 362
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 364
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsState;

    .line 365
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 366
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;

    invoke-interface {v1, v0}, Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;->onGetGroupState(Landroid/support/place/music/TgsState;)V

    .line 368
    :cond_1a
    return-void
.end method

.method public final getRxVolumes([B)V
    .registers 5
    .parameter

    .prologue
    .line 398
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 400
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsRxVolume;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v1

    .line 401
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 402
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;->onGetRxVolumes(Ljava/util/List;)V

    .line 404
    :cond_18
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 317
    iget v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_1e

    .line 350
    :goto_5
    :pswitch_5
    return-void

    .line 321
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->versionCheck([B)V

    goto :goto_5

    .line 326
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->getGroupState([B)V

    goto :goto_5

    .line 331
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->createGroup([B)V

    goto :goto_5

    .line 336
    :pswitch_12
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->assignRxToGroup([B)V

    goto :goto_5

    .line 341
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->removeRxFromGroup([B)V

    goto :goto_5

    .line 346
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->getRxVolumes([B)V

    goto :goto_5

    .line 317
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_5
        :pswitch_1a
    .end packed-switch
.end method

.method public final removeRxFromGroup([B)V
    .registers 4
    .parameter

    .prologue
    .line 389
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 391
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 392
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 393
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenGroupingService$OnRemoveRxFromGroup;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenGroupingService$OnRemoveRxFromGroup;->onRemoveRxFromGroup(Z)V

    .line 395
    :cond_16
    return-void
.end method

.method public final versionCheck([B)V
    .registers 5
    .parameter

    .prologue
    .line 353
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 355
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsVersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsVersionCheck;

    .line 356
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 357
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TungstenGroupingService$OnVersionCheck;

    invoke-interface {v1, v0}, Landroid/support/place/music/TungstenGroupingService$OnVersionCheck;->onVersionCheck(Landroid/support/place/music/TgsVersionCheck;)V

    .line 359
    :cond_1a
    return-void
.end method
