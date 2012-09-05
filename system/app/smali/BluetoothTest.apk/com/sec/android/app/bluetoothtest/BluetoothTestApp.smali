.class public Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestApp.java"


# static fields
.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mContext:Landroid/content/Context;

.field private static mIntent:Landroid/content/Intent;

.field private static mIsStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIsStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private declared-synchronized HostRequestBTOFF(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothTestApp"

    const-string v1, "HostRequestBTOFF()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "REQUEST TO MAKE BT OFF"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    const-string v0, "BluetoothTestApp"

    const-string v1, "Disabling BT "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 103
    monitor-exit p0

    return-void

    .line 98
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized HostRequestBTON(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    const-string v2, "BluetoothTestApp"

    const-string v3, "HostRequestBTON()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "REQUEST TO MAKE BT ON"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 83
    const-string v2, "BluetoothTestApp"

    const-string v3, "BT is already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "BT IS ALREADY ON "

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 87
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "BluetoothTestApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneFactory.getDefaultPhone()  is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 90
    .local v0, earlyAck:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;
    invoke-virtual {v0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;->sendEarlyAck()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_5e

    .line 95
    .end local v0           #earlyAck:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_4f
    monitor-exit p0

    return-void

    .line 92
    :cond_51
    :try_start_51
    const-string v2, "BluetoothTestApp"

    const-string v3, "Enabling BT "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_5e

    goto :goto_4f

    .line 74
    :catchall_5e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized HostRequestBTSearch(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothTestApp"

    const-string v1, "HostRequestBTSearch()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "REQUEST TO PERFORM BT SEARCH"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    sget-object v0, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 110
    monitor-exit p0

    return-void

    .line 106
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v2, "BluetoothTestApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    .line 42
    const-string v2, "BluetoothTestApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_4e

    .line 46
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Platform does not support Bluetooth"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_4e
    const-string v2, "android.test.bluetooth.intent.action.HOSTREQ_BTTESTMODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 50
    const-string v2, "android.test.bluetooth.intent.HOSTREQ_OPERTYPE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, operation:Ljava/lang/String;
    const-string v2, "BluetoothTestApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v2, "android.test.bluetooth.intent.HOSTREQ_BTENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.bluetoothtestapp.btstartservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIntent:Landroid/content/Intent;

    .line 54
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIsStarted:Z

    .line 56
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->HostRequestBTON(Landroid/content/Context;)V

    .line 71
    .end local v1           #operation:Ljava/lang/String;
    :cond_94
    :goto_94
    return-void

    .line 57
    .restart local v1       #operation:Ljava/lang/String;
    :cond_95
    const-string v2, "android.test.bluetooth.intent.HOSTREQ_BTDISABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 58
    sget-boolean v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIsStarted:Z

    if-eqz v2, :cond_94

    .line 59
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->HostRequestBTOFF(Landroid/content/Context;)V

    .line 60
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 61
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIsStarted:Z

    goto :goto_94

    .line 63
    :cond_b1
    const-string v2, "android.test.bluetooth.intent.HOSTREQ_BTSEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 64
    sget-boolean v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mIsStarted:Z

    if-eqz v2, :cond_94

    .line 65
    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/app/bluetoothtest/BluetoothTestApp;->HostRequestBTSearch(Landroid/content/Context;)V

    goto :goto_94

    .line 68
    :cond_c3
    const-string v2, "BluetoothTestApp"

    const-string v3, "SHOULD NOT COME HERE "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94
.end method
