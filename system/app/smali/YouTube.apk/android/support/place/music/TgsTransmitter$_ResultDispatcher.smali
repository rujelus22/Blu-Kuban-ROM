.class final Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/music/TgsTransmitter;


# direct methods
.method public constructor <init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->this$0:Landroid/support/place/music/TgsTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p2, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->methodId:I

    .line 268
    iput-object p3, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 269
    return-void
.end method


# virtual methods
.method public final configureMediaPlayer([B)V
    .registers 4
    .parameter

    .prologue
    .line 340
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 342
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 343
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 344
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TgsTransmitter$OnConfigureMediaPlayer;

    invoke-interface {v0, v1}, Landroid/support/place/music/TgsTransmitter$OnConfigureMediaPlayer;->onConfigureMediaPlayer(Landroid/support/place/rpc/RpcData;)V

    .line 346
    :cond_16
    return-void
.end method

.method public final getApplicationConnector([B)V
    .registers 5
    .parameter

    .prologue
    .line 331
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 333
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 334
    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 335
    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TgsTransmitter$OnGetApplicationConnector;

    invoke-interface {v1, v0}, Landroid/support/place/music/TgsTransmitter$OnGetApplicationConnector;->onGetApplicationConnector(Landroid/support/place/connector/ConnectorInfo;)V

    .line 337
    :cond_1a
    return-void
.end method

.method public final getGroupId([B)V
    .registers 4
    .parameter

    .prologue
    .line 349
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 351
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 353
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TgsTransmitter$OnGetGroupId;

    invoke-interface {v0, v1}, Landroid/support/place/music/TgsTransmitter$OnGetGroupId;->onGetGroupId(Ljava/lang/String;)V

    .line 355
    :cond_16
    return-void
.end method

.method public final getPlayState([B)V
    .registers 5
    .parameter

    .prologue
    .line 367
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 369
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsTransmitterPlayState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsTransmitterPlayState;

    .line 370
    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 371
    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TgsTransmitter$OnGetPlayState;

    invoke-interface {v1, v0}, Landroid/support/place/music/TgsTransmitter$OnGetPlayState;->onGetPlayState(Landroid/support/place/music/TgsTransmitterPlayState;)V

    .line 373
    :cond_1a
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 272
    iget v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_22

    .line 310
    :goto_5
    :pswitch_5
    return-void

    .line 276
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->versionCheck([B)V

    goto :goto_5

    .line 281
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->reset([B)V

    goto :goto_5

    .line 286
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->getApplicationConnector([B)V

    goto :goto_5

    .line 291
    :pswitch_12
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->configureMediaPlayer([B)V

    goto :goto_5

    .line 296
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->getGroupId([B)V

    goto :goto_5

    .line 301
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->pauseTransmitter([B)V

    goto :goto_5

    .line 306
    :pswitch_1e
    invoke-virtual {p0, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->getPlayState([B)V

    goto :goto_5

    .line 272
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_5
        :pswitch_16
        :pswitch_1a
        :pswitch_5
        :pswitch_1e
    .end packed-switch
.end method

.method public final pauseTransmitter([B)V
    .registers 4
    .parameter

    .prologue
    .line 358
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 360
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 361
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 362
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TgsTransmitter$OnPauseTransmitter;

    invoke-interface {v0, v1}, Landroid/support/place/music/TgsTransmitter$OnPauseTransmitter;->onPauseTransmitter(Z)V

    .line 364
    :cond_16
    return-void
.end method

.method public final reset([B)V
    .registers 4
    .parameter

    .prologue
    .line 322
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 324
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 325
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 326
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TgsTransmitter$OnReset;

    invoke-interface {v0, v1}, Landroid/support/place/music/TgsTransmitter$OnReset;->onReset(Z)V

    .line 328
    :cond_16
    return-void
.end method

.method public final versionCheck([B)V
    .registers 5
    .parameter

    .prologue
    .line 313
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 315
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsVersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsVersionCheck;

    .line 316
    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 317
    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TgsTransmitter$OnVersionCheck;

    invoke-interface {v1, v0}, Landroid/support/place/music/TgsTransmitter$OnVersionCheck;->onVersionCheck(Landroid/support/place/music/TgsVersionCheck;)V

    .line 319
    :cond_1a
    return-void
.end method
