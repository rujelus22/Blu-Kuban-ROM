.class public Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;
.super Landroid/app/Activity;
.source "BluetoothAddrViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer$1;-><init>(Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;)V

    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mTv:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050002

    if-ne v0, v1, :cond_13

    .line 68
    const-string v0, "BluetoothAddrViewer"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->finish()V

    .line 71
    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v1, "BluetoothAddrViewer"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sput-object p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->setContentView(I)V

    .line 53
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mTv:Landroid/widget/TextView;

    .line 56
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_56

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 60
    sget-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mContext:Landroid/content/Context;

    const-string v2, "Turning on..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_55
    :goto_55
    return-void

    .line 61
    :cond_56
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_55

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    const-string v0, "BluetoothAddrViewer"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method
