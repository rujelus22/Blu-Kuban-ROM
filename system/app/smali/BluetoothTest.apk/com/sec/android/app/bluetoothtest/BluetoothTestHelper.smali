.class public Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestHelper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field public mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string v0, "BluetoothTestHelper"

    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->TAG:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 27
    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 30
    iput-object p1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 32
    invoke-virtual {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->getBtRef()V

    .line 34
    const-string v0, "BluetoothTestHelper"

    invoke-direct {p0, v0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private declared-synchronized HostSendDisableAckFromApp()V
    .registers 5

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    const-string v2, "Inside --->HostSendDisableAckFromApp "

    invoke-direct {p0, v2}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 118
    .local v0, data:[B
    const/4 v1, 0x2

    .line 121
    .local v1, length:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 122
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->sendAck([BI)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 125
    monitor-exit p0

    return-void

    .line 115
    .end local v0           #data:[B
    .end local v1           #length:I
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized HostSendDiscoveryAckFromApp(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HostSendAckFromApp for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 93
    .local v0, data:[B
    const/4 v1, 0x2

    .line 96
    .local v1, length:I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 97
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->sendAck([BI)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 100
    monitor-exit p0

    return-void

    .line 90
    .end local v0           #data:[B
    .end local v1           #length:I
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized HostSendEnableAckFromApp()V
    .registers 5

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    const-string v2, "Inside --->HostSendEnableAckFromApp "

    invoke-direct {p0, v2}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 106
    .local v0, data:[B
    const/4 v1, 0x2

    .line 108
    .local v1, length:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 109
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->sendAck([BI)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 112
    monitor-exit p0

    return-void

    .line 103
    .end local v0           #data:[B
    .end local v1           #length:I
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 128
    const-string v0, "BluetoothTestHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method


# virtual methods
.method public getBtRef()V
    .registers 3

    .prologue
    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_12

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_12
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 51
    const-string v4, "BluetoothTestHelper - onReceive"

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 57
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, state:I
    const/16 v4, 0xc

    if-ne v3, v4, :cond_3e

    .line 61
    const-string v4, " BluetoothIntent.BLUETOOTH_ENABLED_ACTION "

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->HostSendEnableAckFromApp()V

    .line 64
    const-string v4, "Making BT Device :: SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 66
    const-string v4, "BT IS ENABLED"

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 87
    .end local v3           #state:I
    :cond_3d
    :goto_3d
    return-void

    .line 67
    .restart local v3       #state:I
    :cond_3e
    const/16 v4, 0xa

    if-ne v3, v4, :cond_3d

    .line 68
    const-string v4, "BluetoothIntent.BLUETOOTH_DISABLED_ACTION"

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->HostSendDisableAckFromApp()V

    .line 70
    const-string v4, "BT IS DISABLED"

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->unregisterReceiver()V

    goto :goto_3d

    .line 74
    .end local v3           #state:I
    :cond_57
    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 75
    const-string v4, "BluetoothAdapter.ACTION_DISCOVERY_STARTED"

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    goto :goto_3d

    .line 76
    :cond_65
    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 77
    const-string v4, "BluetoothAdapter.ACTION_DISCOVERY_FINISHED"

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    goto :goto_3d

    .line 78
    :cond_73
    const-string v4, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 79
    const-string v4, "BluetoothDevice.ACTION_FOUND"

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 80
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 81
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, address:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->HostSendDiscoveryAckFromApp(Ljava/lang/String;)V

    goto :goto_3d

    .line 85
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_90
    const-string v4, "SHOULD NOT COME HERE,unknown action "

    invoke-direct {p0, v4}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public sendAck([BI)V
    .registers 10
    .parameter "data1"
    .parameter "len"

    .prologue
    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    .local v2, dos:Ljava/io/DataOutputStream;
    const/16 v5, 0xc

    :try_start_c
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 137
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 138
    add-int/lit8 v5, p2, 0x3

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    if-ge v4, p2, :cond_27

    .line 141
    aget-byte v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_23

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 142
    .end local v4           #i:I
    :catch_23
    move-exception v3

    .line 144
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    .end local v3           #e:Ljava/io/IOException;
    :cond_27
    if-eqz v2, :cond_2c

    .line 148
    :try_start_29
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_57

    .line 154
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 156
    .local v1, cmd:[B
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_31
    add-int/lit8 v5, p2, 0x3

    if-ge v4, v5, :cond_50

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The cmd ack before sending to ril is ----> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 159
    :cond_50
    iget-object v5, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 160
    return-void

    .line 149
    .end local v1           #cmd:[B
    .end local v4           #i:I
    :catch_57
    move-exception v5

    goto :goto_2c
.end method

.method public sendEarlyAck()V
    .registers 3

    .prologue
    .line 163
    const-string v0, "Making BT Device :: SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-direct {p0, v0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->HostSendEnableAckFromApp()V

    .line 167
    return-void
.end method

.method public unregisterReceiver()V
    .registers 2

    .prologue
    .line 45
    const-string v0, "unregisterReceiver"

    invoke-direct {p0, v0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->log(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method
