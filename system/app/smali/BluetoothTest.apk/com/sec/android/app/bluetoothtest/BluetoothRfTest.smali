.class public Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;
.super Landroid/app/Activity;
.source "BluetoothRfTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;-><init>(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)V

    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->onEnterBtRfTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private onEnterBtRfTest()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 87
    const-wide/16 v0, 0x3e8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_1e

    .line 89
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 90
    const-string v0, "ctl.start"

    const-string v1, "bt_dut_cmd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;

    const-string v1, "Enter Bluetooth RF test mode"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    return-void

    .line 88
    :catch_1e
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050004

    if-ne v0, v1, :cond_1b

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_18

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 99
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->finish()V

    .line 101
    :cond_1b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->setContentView(I)V

    .line 64
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object p0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mIntentFilter:Landroid/content/IntentFilter;

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, mIntentFilter2:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.BluetoothRfTestOff"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4e

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 82
    :cond_4d
    :goto_4d
    return-void

    .line 79
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4d

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->onEnterBtRfTest()V

    goto :goto_4d
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method
