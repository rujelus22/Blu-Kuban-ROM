.class public Lcom/vlingo/client/util/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableBluetooth()Z
    .registers 3

    .prologue
    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 25
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_13

    .line 26
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_13

    .line 27
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 28
    const/4 v1, 0x1

    .line 31
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static enableBluetooth()Z
    .registers 3

    .prologue
    .line 13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 14
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_13

    .line 15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_13

    .line 16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 17
    const/4 v1, 0x1

    .line 20
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static toggleBluetooth()I
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 36
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 50
    :cond_d
    :pswitch_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 39
    :pswitch_f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 40
    const/16 v1, 0xb

    goto :goto_e

    .line 42
    :pswitch_15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 43
    const/16 v1, 0xd

    goto :goto_e

    .line 37
    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_f
        :pswitch_d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
