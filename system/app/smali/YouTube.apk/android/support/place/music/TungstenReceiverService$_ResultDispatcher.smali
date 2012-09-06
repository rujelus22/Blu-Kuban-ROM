.class final Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/music/TungstenReceiverService;


# direct methods
.method public constructor <init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->this$0:Landroid/support/place/music/TungstenReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput p2, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->methodId:I

    .line 377
    iput-object p3, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 378
    return-void
.end method


# virtual methods
.method public final getFixedVolumeLevel([B)V
    .registers 4
    .parameter

    .prologue
    .line 546
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 548
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 549
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 550
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnGetFixedVolumeLevel;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnGetFixedVolumeLevel;->onGetFixedVolumeLevel(F)V

    .line 552
    :cond_16
    return-void
.end method

.method public final getFixedVolumeOut([B)V
    .registers 4
    .parameter

    .prologue
    .line 492
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 494
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 495
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 496
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnGetFixedVolumeOut;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnGetFixedVolumeOut;->onGetFixedVolumeOut(Z)V

    .line 498
    :cond_16
    return-void
.end method

.method public final getMasterMute([B)V
    .registers 4
    .parameter

    .prologue
    .line 474
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 476
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 477
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 478
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnGetMasterMute;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnGetMasterMute;->onGetMasterMute(Z)V

    .line 480
    :cond_16
    return-void
.end method

.method public final getMasterVolume([B)V
    .registers 4
    .parameter

    .prologue
    .line 465
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 467
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 468
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 469
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnGetMasterVolume;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnGetMasterVolume;->onGetMasterVolume(F)V

    .line 471
    :cond_16
    return-void
.end method

.method public final getSyncDelay([B)V
    .registers 4
    .parameter

    .prologue
    .line 510
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 512
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 513
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 514
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnGetSyncDelay;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnGetSyncDelay;->onGetSyncDelay(F)V

    .line 516
    :cond_16
    return-void
.end method

.method public final isOutputEnabled([B)V
    .registers 4
    .parameter

    .prologue
    .line 519
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 521
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 522
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 523
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnIsOutputEnabled;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnIsOutputEnabled;->onIsOutputEnabled(Z)V

    .line 525
    :cond_16
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 381
    iget v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_36

    .line 444
    :goto_5
    :pswitch_5
    return-void

    .line 385
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->versionCheck([B)V

    goto :goto_5

    .line 390
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->reset([B)V

    goto :goto_5

    .line 395
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->getMasterVolume([B)V

    goto :goto_5

    .line 400
    :pswitch_12
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->getMasterMute([B)V

    goto :goto_5

    .line 405
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->setFixedVolumeOut([B)V

    goto :goto_5

    .line 410
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->getFixedVolumeOut([B)V

    goto :goto_5

    .line 415
    :pswitch_1e
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->setSyncDelay([B)V

    goto :goto_5

    .line 420
    :pswitch_22
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->getSyncDelay([B)V

    goto :goto_5

    .line 425
    :pswitch_26
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->isOutputEnabled([B)V

    goto :goto_5

    .line 430
    :pswitch_2a
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->setOutputEnabled([B)V

    goto :goto_5

    .line 435
    :pswitch_2e
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->setFixedVolumeLevel([B)V

    goto :goto_5

    .line 440
    :pswitch_32
    invoke-virtual {p0, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->getFixedVolumeLevel([B)V

    goto :goto_5

    .line 381
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_12
        :pswitch_5
        :pswitch_5
        :pswitch_16
        :pswitch_1a
        :pswitch_5
        :pswitch_1e
        :pswitch_22
        :pswitch_5
        :pswitch_26
        :pswitch_2a
        :pswitch_5
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method public final reset([B)V
    .registers 4
    .parameter

    .prologue
    .line 456
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 458
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 459
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 460
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnReset;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnReset;->onReset(Z)V

    .line 462
    :cond_16
    return-void
.end method

.method public final setFixedVolumeLevel([B)V
    .registers 4
    .parameter

    .prologue
    .line 537
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 539
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 540
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 541
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnSetFixedVolumeLevel;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnSetFixedVolumeLevel;->onSetFixedVolumeLevel(F)V

    .line 543
    :cond_16
    return-void
.end method

.method public final setFixedVolumeOut([B)V
    .registers 4
    .parameter

    .prologue
    .line 483
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 485
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 486
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 487
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnSetFixedVolumeOut;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnSetFixedVolumeOut;->onSetFixedVolumeOut(Z)V

    .line 489
    :cond_16
    return-void
.end method

.method public final setOutputEnabled([B)V
    .registers 4
    .parameter

    .prologue
    .line 528
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 530
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 531
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 532
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnSetOutputEnabled;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnSetOutputEnabled;->onSetOutputEnabled(Z)V

    .line 534
    :cond_16
    return-void
.end method

.method public final setSyncDelay([B)V
    .registers 4
    .parameter

    .prologue
    .line 501
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 503
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 504
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 505
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/TungstenReceiverService$OnSetSyncDelay;

    invoke-interface {v0, v1}, Landroid/support/place/music/TungstenReceiverService$OnSetSyncDelay;->onSetSyncDelay(F)V

    .line 507
    :cond_16
    return-void
.end method

.method public final versionCheck([B)V
    .registers 5
    .parameter

    .prologue
    .line 447
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 449
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/music/TgsVersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsVersionCheck;

    .line 450
    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 451
    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/music/TungstenReceiverService$OnVersionCheck;

    invoke-interface {v1, v0}, Landroid/support/place/music/TungstenReceiverService$OnVersionCheck;->onVersionCheck(Landroid/support/place/music/TgsVersionCheck;)V

    .line 453
    :cond_1a
    return-void
.end method
