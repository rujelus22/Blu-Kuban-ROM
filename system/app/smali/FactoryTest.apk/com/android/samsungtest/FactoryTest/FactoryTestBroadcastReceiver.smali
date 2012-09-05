.class public Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestBroadcastReceiver.java"


# static fields
.field private static mRingtone:Landroid/media/Ringtone;

.field private static mSperkerTestRunningFlag:Z

.field private static mTimer:Ljava/util/Timer;


# instance fields
.field private AFTER_BT_OFF_BT_ON_DURATION:J

.field private final BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

.field private final FACTORY_TEST_HISTORY_VIEW_FIRST_COMMAND:I

.field private final FACTORY_TEST_HISTORY_VIEW_SECOND_COMMAND:I

.field private final NOW:I

.field private final SIMPLE_FUNCTION_TEST_STATUS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TIMER_DURATION:I

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerBTOn:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mSperkerTestRunningFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    const-string v0, "FactoryTestBroadcastReceiver"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 63
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->TIMER_DURATION:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->NOW:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mHandlerBTOn:Landroid/os/Handler;

    .line 72
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->AFTER_BT_OFF_BT_ON_DURATION:J

    .line 73
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

    .line 75
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->FACTORY_TEST_HISTORY_VIEW_FIRST_COMMAND:I

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->FACTORY_TEST_HISTORY_VIEW_SECOND_COMMAND:I

    .line 78
    const-string v0, "START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->SIMPLE_FUNCTION_TEST_STATUS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    sput-boolean p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mSperkerTestRunningFlag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->setOnDiscoverable()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDataFromRilFactory()V
    .registers 8

    .prologue
    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 251
    .local v3, fileSize:I
    const-string v4, "FactoryTestBroadcastReceiver"

    const-string v5, "getDataFromRilFactory()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v4, 0x12

    :try_start_14
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 254
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 255
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 256
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 258
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2a} :catch_3b

    .line 263
    :goto_2a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 264
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 266
    return-void

    .line 259
    :catch_3b
    move-exception v2

    .line 260
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method

.method private loopbackTestStart()V
    .registers 4

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    const-string v1, "RemoteCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method private setOnDiscoverable()V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$3;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    return-void
.end method

.method private startWLanRFTest()V
    .registers 4

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/WLanRFTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 455
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 456
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 457
    return-void
.end method


# virtual methods
.method public bluetoothSearchTestStart()V
    .registers 4

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 410
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 413
    return-void
.end method

.method public bluetoothTestStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_e

    .line 362
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_e
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 367
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "Bluetooth\'state is changed to Off!! wait for seconds"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 368
    const-string v1, "BT\'s visibility off"

    const-string v2, "BT\'s visibility is changed off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 371
    const-string v1, "BT Start"

    const-string v2, "So, BT is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 376
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    const-string v1, "Set BT Timer"

    const-string v2, "BT discoverable time off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_5a
    return-void

    .line 383
    :cond_5b
    const-string v1, "BT Start"

    const-string v2, "So, BT is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "Bluetooth\'state is changed to On!! wait for 10 seconds"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 385
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "After 10 seconds, My devices is can be discoverable!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 387
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mHandlerBTOn:Landroid/os/Handler;

    new-instance v2, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$2;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)V

    iget-wide v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->AFTER_BT_OFF_BT_ON_DURATION:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a
.end method

.method public checkSdCard()Z
    .registers 3

    .prologue
    .line 307
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sd/1kHz.mp3"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public makeFile()V
    .registers 8

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, out:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 316
    .local v2, in:Ljava/io/InputStream;
    :try_start_2
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v5, "mp3_1khz.mp3"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 317
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 318
    const/16 v4, 0x7d0

    new-array v0, v4, [B

    .line 320
    .local v0, buffer:[B
    :goto_1c
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3d

    .line 321
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_25} :catch_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_25} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_64

    goto :goto_1c

    .line 325
    .end local v0           #buffer:[B
    :catch_26
    move-exception v1

    .line 326
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_27
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_7b

    .line 332
    if-eqz v3, :cond_36

    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_8d

    const/4 v3, 0x0

    .line 333
    :cond_36
    :goto_36
    if-eqz v2, :cond_3c

    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_8f

    const/4 v2, 0x0

    .line 335
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_3c
    :goto_3c
    return-void

    .line 323
    .restart local v0       #buffer:[B
    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_40} :catch_4d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_64

    .line 332
    if-eqz v3, :cond_46

    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_89

    const/4 v3, 0x0

    .line 333
    :cond_46
    :goto_46
    if-eqz v2, :cond_3c

    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_8b

    const/4 v2, 0x0

    goto :goto_3c

    .line 327
    .end local v0           #buffer:[B
    :catch_4d
    move-exception v1

    .line 328
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_4e
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_7b

    .line 332
    if-eqz v3, :cond_5d

    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_91

    const/4 v3, 0x0

    .line 333
    :cond_5d
    :goto_5d
    if-eqz v2, :cond_3c

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_93

    const/4 v2, 0x0

    goto :goto_3c

    .line 329
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_64
    move-exception v1

    .line 330
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_7b

    .line 332
    if-eqz v3, :cond_74

    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_95

    const/4 v3, 0x0

    .line 333
    :cond_74
    :goto_74
    if-eqz v2, :cond_3c

    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_97

    const/4 v2, 0x0

    goto :goto_3c

    .line 332
    .end local v1           #e:Ljava/io/IOException;
    :catchall_7b
    move-exception v4

    if-eqz v3, :cond_82

    :try_start_7e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_99

    const/4 v3, 0x0

    .line 333
    :cond_82
    :goto_82
    if-eqz v2, :cond_88

    :try_start_84
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_9b

    const/4 v2, 0x0

    :cond_88
    :goto_88
    throw v4

    .line 332
    .restart local v0       #buffer:[B
    :catch_89
    move-exception v4

    goto :goto_46

    .line 333
    :catch_8b
    move-exception v4

    goto :goto_3c

    .line 332
    .end local v0           #buffer:[B
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_8d
    move-exception v4

    goto :goto_36

    .line 333
    :catch_8f
    move-exception v4

    goto :goto_3c

    .line 332
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :catch_91
    move-exception v4

    goto :goto_5d

    .line 333
    :catch_93
    move-exception v4

    goto :goto_3c

    .line 332
    .local v1, e:Ljava/io/IOException;
    :catch_95
    move-exception v4

    goto :goto_74

    .line 333
    :catch_97
    move-exception v4

    goto :goto_3c

    .line 332
    .end local v1           #e:Ljava/io/IOException;
    :catch_99
    move-exception v5

    goto :goto_82

    .line 333
    :catch_9b
    move-exception v5

    goto :goto_88
.end method

.method public mp3TestStart()V
    .registers 6

    .prologue
    .line 285
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, i:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 288
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->checkSdCard()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 289
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->makeFile()V

    .line 290
    const-string v3, "file:///data/data/com.android.samsungtest.FactoryTest/files/mp3_1khz.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    const-string v3, "FactoryTest_Mp3Test"

    const-string v4, "LOCAD_AREA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_1e
    const-string v3, "audio/mp3"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    :try_start_28
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2d} :catch_3c

    .line 304
    :goto_2d
    return-void

    .line 293
    :cond_2e
    const-string v3, "file:///sdcard/sd/1kHz.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    const-string v3, "FactoryTest_Mp3Test"

    const-string v4, "SDCARD_AREA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 301
    :catch_3c
    move-exception v1

    .line 302
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2d
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x1000

    .line 84
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 88
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 91
    sget-object v1, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_40

    .line 92
    const-string v1, "Speakertest"

    const-string v2, "mRingtone is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v1, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mRingtone:Landroid/media/Ringtone;

    .line 100
    :goto_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 101
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "BOOT_COMPLETE_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->getDataFromRilFactory()V

    .line 245
    :cond_3f
    :goto_3f
    return-void

    .line 95
    :cond_40
    const-string v1, "Speakertest"

    const-string v2, "mRingtone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 97
    sput-object v1, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mRingtone:Landroid/media/Ringtone;

    goto :goto_29

    .line 104
    :cond_54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    .line 105
    const-string v2, "FactoryTestBoradCastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string v3, "$$15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 110
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3f

    .line 116
    :cond_bc
    const-string v3, "$$0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 118
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mp3TestStart()V

    goto/16 :goto_3f

    .line 120
    :cond_c9
    const-string v3, "$$2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d9

    const-string v3, "0283"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 122
    :cond_d9
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->loopbackTestStart()V

    goto/16 :goto_3f

    .line 124
    :cond_de
    const-string v3, "$$8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 126
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->bluetoothTestStart()V

    goto/16 :goto_3f

    .line 129
    :cond_eb
    const-string v3, "$$9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 131
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->bluetoothSearchTestStart()V

    goto/16 :goto_3f

    .line 133
    :cond_f8
    const-string v3, "$*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 135
    sget-boolean v2, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mSperkerTestRunningFlag:Z

    if-nez v2, :cond_110

    .line 136
    const-string v2, "SpeakerTest"

    const-string v3, "Start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->speakerTestStart(Landroid/media/Ringtone;Landroid/media/AudioManager;)V

    goto/16 :goto_3f

    .line 139
    :cond_110
    const-string v0, "SpeakerTest"

    const-string v2, "Stop"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->speakerTestStop(Landroid/media/Ringtone;)V

    goto/16 :goto_3f

    .line 143
    :cond_11c
    const-string v0, "$#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "$9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "0*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 147
    :cond_17c
    sget-boolean v0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mSperkerTestRunningFlag:Z

    if-eqz v0, :cond_3f

    .line 148
    const-string v0, "SpeakerTest"

    const-string v2, "Stop"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->speakerTestStop(Landroid/media/Ringtone;)V

    goto/16 :goto_3f

    .line 152
    :cond_18c
    const-string v0, "SOCRESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 154
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "Fuel Gauge Reset MAX17043 isFactoryTest = "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v6}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->setFuelGaugeReset(Z)V

    goto/16 :goto_3f

    .line 158
    :cond_1a0
    const-string v0, "WLan_RF_Test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 160
    const-string v0, "WLan_RF_Test"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->startWLanRFTest()V

    goto/16 :goto_3f

    .line 164
    :cond_1b4
    const-string v0, "436324"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 166
    const-string v0, "Old Version FactoryTest"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/SFTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3f

    .line 173
    :cond_1db
    const-string v0, "4747"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 174
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, " grip Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3f

    .line 182
    :cond_202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_228

    .line 184
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MAX"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "SPK"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 192
    :cond_228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 193
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v1, "SPK"

    const-string v2, "MIN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 198
    :cond_24e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_OFF_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    .line 199
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    const-string v1, "com.android.samsungtest.FactoryTest"

    const-string v2, "com.android.samsungtest.FactoryTest.SpeakerTestService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3f

    .line 205
    :cond_272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_L_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_298

    .line 206
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MAX_L"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string v1, "SPK"

    const-string v2, "MAX_L"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 211
    :cond_298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_L_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 212
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN_L"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string v1, "SPK"

    const-string v2, "MIN_L"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 218
    :cond_2be
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_R_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 219
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v1, "SPK"

    const-string v2, "MAX_R"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 224
    :cond_2e4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_R_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 225
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string v1, "SPK"

    const-string v2, "MIN_R"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 229
    :cond_30a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.MP3_TEST_START_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_330

    .line 231
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "MP3_TEST_START_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/MP3TestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const-string v1, "MP3"

    const-string v2, "START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3f

    .line 236
    :cond_330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.MP3_TEST_STOP_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 237
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "MP3_TEST_STOP_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/FactoryTest/MP3TestService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3f
.end method

.method public setFuelGaugeReset(Z)V
    .registers 9
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 418
    const/16 v4, 0x64

    new-array v0, v4, [B

    .line 420
    .local v0, buffer:[B
    if-eqz p1, :cond_2e

    .line 421
    const/16 v4, 0x31

    aput-byte v4, v0, v5

    .line 426
    :goto_b
    const/4 v2, 0x0

    .line 429
    .local v2, out:Ljava/io/OutputStream;
    :try_start_c
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_67

    .line 430
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_18
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 431
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v5, "SOC Reset Complete!"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_27} :catch_a8
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_27} :catch_a5

    .line 439
    if-eqz v3, :cond_ab

    .line 441
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_33

    .line 442
    const/4 v2, 0x0

    .line 449
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_2d
    :goto_2d
    return-void

    .line 423
    .end local v2           #out:Ljava/io/OutputStream;
    :cond_2e
    const/16 v4, 0x30

    aput-byte v4, v0, v5

    goto :goto_b

    .line 443
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_33
    move-exception v1

    .line 444
    .local v1, e:Ljava/io/IOException;
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 445
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2d

    .line 432
    .end local v1           #e:Ljava/io/IOException;
    :catch_3f
    move-exception v1

    .line 433
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_40
    :try_start_40
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v5, " SOC Reset exception!"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_8f

    .line 439
    if-eqz v2, :cond_2d

    .line 441
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    .line 442
    const/4 v2, 0x0

    goto :goto_2d

    .line 443
    :catch_5c
    move-exception v1

    .line 444
    .local v1, e:Ljava/io/IOException;
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 435
    .end local v1           #e:Ljava/io/IOException;
    :catch_67
    move-exception v1

    .line 436
    .restart local v1       #e:Ljava/io/IOException;
    :goto_68
    :try_start_68
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v5, " SOC Reset exception!"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_8f

    .line 439
    if-eqz v2, :cond_2d

    .line 441
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_84

    .line 442
    const/4 v2, 0x0

    goto :goto_2d

    .line 443
    :catch_84
    move-exception v1

    .line 444
    const-string v4, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 439
    .end local v1           #e:Ljava/io/IOException;
    :catchall_8f
    move-exception v4

    :goto_90
    if-eqz v2, :cond_96

    .line 441
    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_97

    .line 442
    const/4 v2, 0x0

    .line 445
    :cond_96
    :goto_96
    throw v4

    .line 443
    :catch_97
    move-exception v1

    .line 444
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "FactoryTestBroadcastReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 439
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_a2
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_90

    .line 435
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_a5
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_68

    .line 432
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_a8
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_40

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_ab
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2d
.end method

.method public speakerTestStart(Landroid/media/Ringtone;Landroid/media/AudioManager;)V
    .registers 9
    .parameter "ringtone"
    .parameter "audioManager"

    .prologue
    const/4 v2, 0x2

    .line 338
    invoke-virtual {p2, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 339
    invoke-virtual {p2, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 340
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mTimer:Ljava/util/Timer;

    .line 342
    sget-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$1;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;Landroid/media/Ringtone;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 349
    return-void
.end method

.method public speakerTestStop(Landroid/media/Ringtone;)V
    .registers 4
    .parameter "ringtone"

    .prologue
    .line 352
    const-string v0, "SeakerTest"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mSperkerTestRunningFlag:Z

    .line 354
    invoke-virtual {p1}, Landroid/media/Ringtone;->stop()V

    .line 355
    const-string v0, "RingtoneTimerCheck :"

    sget-object v1, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 357
    return-void
.end method
