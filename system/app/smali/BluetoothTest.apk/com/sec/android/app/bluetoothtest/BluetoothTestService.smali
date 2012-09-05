.class public Lcom/sec/android/app/bluetoothtest/BluetoothTestService;
.super Landroid/app/Service;
.source "BluetoothTestService.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field public mHelper:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mHelper:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 35
    const-string v1, "BluetoothTestService"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 38
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "BluetoothTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneFactory.getDefaultPhone()  is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez v0, :cond_2c

    .line 41
    const-string v1, "BluetoothTestService"

    const-string v2, "BT TEST Application is not able to get the phone instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_2c
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 45
    sget-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mContext:Landroid/content/Context;

    .line 51
    const-string v1, "BluetoothTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;

    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mHelper:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 56
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 61
    const-string v0, "BluetoothTestService"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mHelper:Lcom/sec/android/app/bluetoothtest/BluetoothTestHelper;

    sget-object v2, Lcom/sec/android/app/bluetoothtest/BluetoothTestService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method
