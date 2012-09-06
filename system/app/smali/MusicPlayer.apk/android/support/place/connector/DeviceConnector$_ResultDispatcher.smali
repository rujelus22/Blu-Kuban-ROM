.class final Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;
.super Ljava/lang/Object;
.source "DeviceConnector.java"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/DeviceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "_ResultDispatcher"
.end annotation


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/connector/DeviceConnector;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "methId"
    .parameter "cbObj"

    .prologue
    .line 403
    iput-object p1, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->this$0:Landroid/support/place/connector/DeviceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput p2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->methodId:I

    .line 405
    iput-object p3, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 406
    return-void
.end method


# virtual methods
.method public factoryReset([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 658
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 660
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 661
    .local v1, rv:Z
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 662
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnFactoryReset;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnFactoryReset;->onFactoryReset(Z)V

    .line 664
    :cond_16
    return-void
.end method

.method public getAdbState([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 604
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 606
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 607
    .local v1, rv:Z
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 608
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetAdbState;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetAdbState;->onGetAdbState(Z)V

    .line 610
    :cond_16
    return-void
.end method

.method public getAvailableUpdate([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 577
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 579
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 581
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetAvailableUpdate;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetAvailableUpdate;->onGetAvailableUpdate(Ljava/lang/String;)V

    .line 583
    :cond_16
    return-void
.end method

.method public getBluetoothMac([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 523
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 525
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 527
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetBluetoothMac;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetBluetoothMac;->onGetBluetoothMac(Ljava/lang/String;)V

    .line 529
    :cond_16
    return-void
.end method

.method public getBuildVersion([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 568
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 570
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 572
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetBuildVersion;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetBuildVersion;->onGetBuildVersion(Ljava/lang/String;)V

    .line 574
    :cond_16
    return-void
.end method

.method public getDebugInfo([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 586
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 588
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 590
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetDebugInfo;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetDebugInfo;->onGetDebugInfo(Ljava/lang/String;)V

    .line 592
    :cond_16
    return-void
.end method

.method public getDeviceName([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 541
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 543
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 545
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;->onGetDeviceName(Ljava/lang/String;)V

    .line 547
    :cond_16
    return-void
.end method

.method public getDeviceSerialNumber([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 550
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 552
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 554
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetDeviceSerialNumber;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetDeviceSerialNumber;->onGetDeviceSerialNumber(Ljava/lang/String;)V

    .line 556
    :cond_16
    return-void
.end method

.method public getDeviceState([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 631
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 633
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 634
    .local v1, rv:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 635
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetDeviceState;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetDeviceState;->onGetDeviceState(Landroid/support/place/rpc/RpcData;)V

    .line 637
    :cond_16
    return-void
.end method

.method public getDeviceVersion([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 559
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 561
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 563
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetDeviceVersion;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetDeviceVersion;->onGetDeviceVersion(Ljava/lang/String;)V

    .line 565
    :cond_16
    return-void
.end method

.method public getManufacturerName([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 640
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 642
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 644
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetManufacturerName;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetManufacturerName;->onGetManufacturerName(Ljava/lang/String;)V

    .line 646
    :cond_16
    return-void
.end method

.method public getMaster([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 514
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 516
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Landroid/support/place/rpc/EndpointInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Landroid/support/place/rpc/EndpointInfo;

    .line 517
    .local v1, rv:Landroid/support/place/rpc/EndpointInfo;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    .line 518
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetMaster;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetMaster;->onGetMaster(Landroid/support/place/rpc/EndpointInfo;)V

    .line 520
    :cond_1a
    return-void
.end method

.method public getModelName([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 649
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 651
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 653
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetModelName;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetModelName;->onGetModelName(Ljava/lang/String;)V

    .line 655
    :cond_16
    return-void
.end method

.method public getUpdateWindow([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 622
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 624
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, rv:Ljava/lang/String;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 626
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnGetUpdateWindow;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnGetUpdateWindow;->onGetUpdateWindow(Ljava/lang/String;)V

    .line 628
    :cond_16
    return-void
.end method

.method public helloFromHub([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 505
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 507
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 508
    .local v1, rv:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 509
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnHelloFromHub;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnHelloFromHub;->onHelloFromHub(Landroid/support/place/rpc/RpcData;)V

    .line 511
    :cond_16
    return-void
.end method

.method public onResult([B)V
    .registers 3
    .parameter "result"

    .prologue
    .line 409
    iget v0, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_4e

    .line 502
    :goto_5
    :pswitch_5
    return-void

    .line 413
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->helloFromHub([B)V

    goto :goto_5

    .line 418
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getMaster([B)V

    goto :goto_5

    .line 423
    :pswitch_e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getBluetoothMac([B)V

    goto :goto_5

    .line 428
    :pswitch_12
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->setDeviceName([B)V

    goto :goto_5

    .line 433
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getDeviceName([B)V

    goto :goto_5

    .line 438
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getDeviceSerialNumber([B)V

    goto :goto_5

    .line 443
    :pswitch_1e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getDeviceVersion([B)V

    goto :goto_5

    .line 448
    :pswitch_22
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getBuildVersion([B)V

    goto :goto_5

    .line 453
    :pswitch_26
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getAvailableUpdate([B)V

    goto :goto_5

    .line 458
    :pswitch_2a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getDebugInfo([B)V

    goto :goto_5

    .line 463
    :pswitch_2e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->setAdbState([B)V

    goto :goto_5

    .line 468
    :pswitch_32
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getAdbState([B)V

    goto :goto_5

    .line 473
    :pswitch_36
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->setUpdateWindow([B)V

    goto :goto_5

    .line 478
    :pswitch_3a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getUpdateWindow([B)V

    goto :goto_5

    .line 483
    :pswitch_3e
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getDeviceState([B)V

    goto :goto_5

    .line 488
    :pswitch_42
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getManufacturerName([B)V

    goto :goto_5

    .line 493
    :pswitch_46
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->getModelName([B)V

    goto :goto_5

    .line 498
    :pswitch_4a
    invoke-virtual {p0, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->factoryReset([B)V

    goto :goto_5

    .line 409
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_5
        :pswitch_42
        :pswitch_46
        :pswitch_5
        :pswitch_5
        :pswitch_4a
    .end packed-switch
.end method

.method public setAdbState([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 595
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 597
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 598
    .local v1, rv:Z
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 599
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnSetAdbState;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnSetAdbState;->onSetAdbState(Z)V

    .line 601
    :cond_16
    return-void
.end method

.method public setDeviceName([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 532
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 534
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 535
    .local v1, rv:Z
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 536
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnSetDeviceName;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnSetDeviceName;->onSetDeviceName(Z)V

    .line 538
    :cond_16
    return-void
.end method

.method public setUpdateWindow([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 613
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 615
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 616
    .local v1, rv:Z
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 617
    iget-object v2, p0, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/support/place/connector/DeviceConnector$OnSetUpdateWindow;

    invoke-interface {v2, v1}, Landroid/support/place/connector/DeviceConnector$OnSetUpdateWindow;->onSetUpdateWindow(Z)V

    .line 619
    :cond_16
    return-void
.end method
