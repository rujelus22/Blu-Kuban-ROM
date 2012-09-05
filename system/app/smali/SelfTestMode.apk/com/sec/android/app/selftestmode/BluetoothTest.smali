.class public Lcom/sec/android/app/selftestmode/BluetoothTest;
.super Landroid/app/Activity;
.source "BluetoothTest.java"


# instance fields
.field private final BLUETOOTH_SETTING_ACTIVITY:I

.field mBa:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mFullWl:Landroid/os/PowerManager$WakeLock;

.field mFullWlTemp:Landroid/os/PowerManager$WakeLock;

.field private mIsDiscoveringStart:Z

.field private mIsForceStop:Z

.field private mIsOn:Z

.field private mRequest:I

.field private mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->BLUETOOTH_SETTING_ACTIVITY:I

    .line 83
    new-instance v0, Lcom/sec/android/app/selftestmode/BluetoothTest$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/BluetoothTest$1;-><init>(Lcom/sec/android/app/selftestmode/BluetoothTest;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/selftestmode/BluetoothTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/selftestmode/BluetoothTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->stopTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/selftestmode/BluetoothTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mRequest:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/selftestmode/BluetoothTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->startDiscovery()V

    return-void
.end method

.method private btOnOff()V
    .registers 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bt_on_off"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mRequest:I

    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsOn:Z

    if-eqz v0, :cond_15

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->startDiscovery()V

    .line 121
    :goto_14
    return-void

    .line 107
    :cond_15
    iget v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mRequest:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_14

    .line 109
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->finish()V

    goto :goto_14

    .line 112
    :pswitch_1f
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mTv:Landroid/widget/TextView;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_14

    .line 116
    :pswitch_2d
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mTv:Landroid/widget/TextView;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_14

    .line 107
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1f
        :pswitch_2d
    .end packed-switch
.end method

.method private startDiscovery()V
    .registers 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsDiscoveringStart:Z

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/selftestmode/BluetoothTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.method private stopTest()V
    .registers 3

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->finishActivity(I)V

    .line 133
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsOn:Z

    if-eqz v0, :cond_c

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->finish()V

    .line 139
    :goto_b
    return-void

    .line 136
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mTv:Landroid/widget/TextView;

    const-string v1, "Bluetooth is being turned Off\nPlease Wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/selftestmode/BluetoothTest;->setContentView(I)V

    .line 47
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/selftestmode/BluetoothTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mTv:Landroid/widget/TextView;

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsOn:Z

    .line 51
    iput-boolean v3, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsDiscoveringStart:Z

    .line 52
    iput-boolean v3, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsForceStop:Z

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/selftestmode/BluetoothTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 60
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "FactoryTest_Full Wake Lock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mFullWl:Landroid/os/PowerManager$WakeLock;

    .line 61
    const-string v2, "FactoryTest_Full Wake Lock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mFullWlTemp:Landroid/os/PowerManager$WakeLock;

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mFullWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->btOnOff()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/BluetoothTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mFullWlTemp:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mFullWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsDiscoveringStart:Z

    if-nez v0, :cond_a

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/BluetoothTest;->mIsForceStop:Z

    .line 81
    :cond_a
    return-void
.end method
