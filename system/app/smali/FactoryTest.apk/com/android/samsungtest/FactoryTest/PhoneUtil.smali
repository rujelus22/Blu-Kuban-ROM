.class public Lcom/android/samsungtest/FactoryTest/PhoneUtil;
.super Landroid/app/Activity;
.source "PhoneUtil.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final NEVER_TIMEOUT:I

.field private final TlEnablerPathtest:Ljava/lang/String;

.field private final UART_PATH:Ljava/lang/String;

.field private final USB_PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mFactoryTestApp:Ljava/lang/String;

.field private mFlag:Ljava/lang/String;

.field private mModemCount:I

.field private mPdaCount:I

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSideloadingCount:I

.field private mUartRadioGroup:Landroid/widget/RadioGroup;

.field private mUsbRadioGroup:Landroid/widget/RadioGroup;

.field private final modem:[B

.field private final pda:[B

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "/sys/class/sec/switch/uart_sel"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->UART_PATH:Ljava/lang/String;

    .line 54
    const-string v0, "/sys/class/sec/switch/usb_sel"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->USB_PATH:Ljava/lang/String;

    .line 55
    const-string v0, "/sys/class/sec/switch/tool_launcher"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->TlEnablerPathtest:Ljava/lang/String;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_34

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->pda:[B

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->modem:[B

    .line 62
    const-string v0, "Phone_util"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mModemCount:I

    .line 66
    iput v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPdaCount:I

    .line 67
    iput v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mSideloadingCount:I

    .line 68
    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->NEVER_TIMEOUT:I

    return-void

    .line 58
    nop

    :array_34
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 59
    :array_3a
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeUart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$408(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mModemCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mModemCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/FactoryTest/PhoneUtil;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeUsb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$608(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPdaCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPdaCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mSideloadingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mSideloadingCount:I

    return v0
.end method

.method private changeToolLauncherTest(Z)V
    .registers 6
    .parameter "bTlauncher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/switch/tool_launcher"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, outFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 390
    .local v1, fwriter:Ljava/io/FileWriter;
    if-eqz p1, :cond_1a

    .line 392
    :try_start_e
    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_23

    .line 406
    :goto_16
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 408
    :goto_19
    return-void

    .line 397
    :cond_1a
    :try_start_1a
    const-string v3, "OFF"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_16

    .line 401
    :catch_23
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Exception;
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 406
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_19

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2b
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v3
.end method

.method private changeUart(Ljava/lang/String;)V
    .registers 5
    .parameter "uart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/switch/uart_sel"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_7
    const-string v2, "PDA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 352
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->pda:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_26

    .line 362
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 364
    :goto_17
    return-void

    .line 354
    :cond_18
    :try_start_18
    const-string v2, "MODEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 355
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->modem:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_14

    .line 358
    :catch_26
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 362
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_17

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private changeUsb(Ljava/lang/String;)V
    .registers 5
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 370
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_7
    const-string v2, "PDA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 371
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->pda:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_26

    .line 381
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 383
    :goto_17
    return-void

    .line 373
    :cond_18
    :try_start_18
    const-string v2, "MODEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 374
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->modem:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_14

    .line 377
    :catch_26
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 381
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_17

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mContext:Landroid/content/Context;

    const-string v2, "phoneutil.preferences_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initialSetting(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V
    .registers 8
    .parameter "uart"
    .parameter "usb"

    .prologue
    .line 217
    const-string v2, "persist.uart"

    invoke-direct {p0, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, uartString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uart string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->readAndSetUartValue()V

    .line 239
    const-string v2, "persist.usb"

    invoke-direct {p0, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, usbString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbString  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->readAndSetUsbValue()V

    .line 261
    return-void
.end method

.method private readAndSetUartValue()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    .line 412
    const/16 v8, 0x64

    new-array v0, v8, [B

    .line 414
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 416
    .local v2, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 420
    .local v6, s:Ljava/lang/String;
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/class/sec/switch/uart_sel"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_13} :catch_84

    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    move-object v2, v3

    .line 429
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_14
    :try_start_14
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_a2

    .line 430
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_b2

    .line 431
    .end local v6           #s:Ljava/lang/String;
    .local v7, s:Ljava/lang/String;
    :try_start_1f
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_37} :catch_f5

    move-object v6, v7

    .line 443
    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    :goto_38
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value of file for uart  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v5, Ljava/lang/String;

    const-string v8, "PDA"

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 446
    .local v5, pdaString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 448
    new-instance v4, Ljava/lang/String;

    const-string v8, "MODEM"

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 449
    .local v4, modemString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 450
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 451
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_d0

    .line 453
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "setting pda  readAndSetUartValue"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    const v9, 0x7f0900bc

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 456
    const-string v8, "persist.uart"

    const-string v9, "pda"

    invoke-direct {p0, v8, v9}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_83
    return-void

    .line 421
    .end local v4           #modemString:Ljava/lang/String;
    .end local v5           #pdaString:Ljava/lang/String;
    :catch_84
    move-exception v1

    .line 424
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 425
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 433
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_a2
    :try_start_a2
    new-instance v7, Ljava/lang/String;

    const-string v8, "reda fail.............."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a9} :catch_b2

    .line 434
    .end local v6           #s:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :try_start_a9
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "what\'s the problem !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b0} :catch_f5

    move-object v6, v7

    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    goto :goto_38

    .line 436
    :catch_b2
    move-exception v1

    .line 439
    .local v1, e:Ljava/io/IOException;
    :goto_b3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 440
    const-string v8, "Phoneutil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 459
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #modemString:Ljava/lang/String;
    .restart local v5       #pdaString:Ljava/lang/String;
    :cond_d0
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_ed

    .line 461
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "else modem readAndSetUartValue"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    const v9, 0x7f0900bb

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 464
    const-string v8, "persist.uart"

    const-string v9, "modem"

    invoke-direct {p0, v8, v9}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 469
    :cond_ed
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error not reading properly from UART file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 436
    .end local v4           #modemString:Ljava/lang/String;
    .end local v5           #pdaString:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :catch_f5
    move-exception v1

    move-object v6, v7

    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    goto :goto_b3
.end method

.method private readAndSetUsbValue()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    .line 476
    const/16 v8, 0x64

    new-array v0, v8, [B

    .line 478
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 480
    .local v2, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 484
    .local v6, s:Ljava/lang/String;
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_13} :catch_84

    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    move-object v2, v3

    .line 493
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_14
    :try_start_14
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_a9

    .line 494
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_b9

    .line 495
    .end local v6           #s:Ljava/lang/String;
    .local v7, s:Ljava/lang/String;
    :try_start_1f
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_37} :catch_fc

    move-object v6, v7

    .line 507
    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    :goto_38
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value of file for usb  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v5, Ljava/lang/String;

    const-string v8, "PDA"

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 510
    .local v5, pdaString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 512
    new-instance v4, Ljava/lang/String;

    const-string v8, "MODEM"

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 513
    .local v4, modemString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 514
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 515
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_d7

    .line 518
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "setting pda"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    const v9, 0x7f0900bf

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 521
    const-string v8, "persist.usb"

    const-string v9, "pda"

    invoke-direct {p0, v8, v9}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_83
    return-void

    .line 485
    .end local v4           #modemString:Ljava/lang/String;
    .end local v5           #pdaString:Ljava/lang/String;
    :catch_84
    move-exception v1

    .line 486
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "file not found ex readAndSetUsbValue"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 489
    const-string v8, "Phoneutil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 497
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_a9
    :try_start_a9
    new-instance v7, Ljava/lang/String;

    const-string v8, "reda fail.............."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b0} :catch_b9

    .line 498
    .end local v6           #s:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :try_start_b0
    const-string v8, "Phoneutil"

    const-string v9, "what\'s the problem !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b7} :catch_fc

    move-object v6, v7

    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    goto :goto_38

    .line 500
    :catch_b9
    move-exception v1

    .line 503
    .local v1, e:Ljava/io/IOException;
    :goto_ba
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 504
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 524
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #modemString:Ljava/lang/String;
    .restart local v5       #pdaString:Ljava/lang/String;
    :cond_d7
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v11, :cond_f4

    .line 526
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "I/O Error in readAndSetUsbValue"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    const v9, 0x7f0900be

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 529
    const-string v8, "persist.usb"

    const-string v9, "modem"

    invoke-direct {p0, v8, v9}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 534
    :cond_f4
    iget-object v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error not reading properly from USB file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 500
    .end local v4           #modemString:Ljava/lang/String;
    .end local v5           #pdaString:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :catch_fc
    move-exception v1

    move-object v6, v7

    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    goto :goto_ba
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mContext:Landroid/content/Context;

    const-string v3, "phoneutil.preferences_name"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 334
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 320
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 321
    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 322
    const/4 v0, 0x1

    .line 328
    :goto_24
    return v0

    .line 326
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevKey:I

    .line 327
    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevTime:J

    .line 328
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iput-object p0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mContext:Landroid/content/Context;

    .line 84
    const v3, 0x7f03002d

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, i:Landroid/content/Intent;
    const-string v3, "USBPATH_TEST_START"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 92
    :cond_20
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFactoryTestApp ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModemCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mModemCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||||mPdaCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPdaCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|||mSideloadingCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mSideloadingCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const v3, 0x7f0900ba

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    .line 98
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->pm:Landroid/os/PowerManager;

    .line 99
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->pm:Landroid/os/PowerManager;

    const/16 v4, 0xa

    const-string v5, "PhoneUtil"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    .line 101
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 103
    const-string v3, "PhoneUtil"

    const-string v4, "WakeLock acquire"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 107
    :cond_a1
    iput v7, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevKey:I

    .line 108
    iput-wide v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPrevTime:J

    .line 109
    iput v7, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrKey:I

    .line 110
    iput-wide v8, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrTime:J

    .line 112
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;

    invoke-direct {v4, p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil$1;-><init>(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 138
    const v3, 0x7f090046

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    .line 140
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;

    invoke-direct {v4, p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil$2;-><init>(Lcom/android/samsungtest/FactoryTest/PhoneUtil;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 187
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    if-eqz v3, :cond_f2

    .line 188
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mFactoryTestApp is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const v3, 0x7f0900b9

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 190
    .local v1, mUartName:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 193
    .local v2, sideloading:Landroid/widget/RadioButton;
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 195
    .end local v1           #mUartName:Landroid/widget/TextView;
    .end local v2           #sideloading:Landroid/widget/RadioButton;
    :cond_f2
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "calling intialsetting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 293
    const-string v0, "KEYCODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput p1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrKey:I

    .line 296
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mCurrTime:J

    .line 298
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9b

    .line 299
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_9b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 301
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KEYCODE : This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModemCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mModemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||||mPdaCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPdaCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|||mSideloadingCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mSideloadingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mModemCount:I

    if-lt v0, v3, :cond_84

    iget v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mPdaCount:I

    if-lt v0, v3, :cond_84

    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 305
    const/16 v0, 0xd0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->setResult(I)V

    .line 307
    :cond_84
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 309
    const-string v0, "PhoneUtil"

    const-string v1, "WakeLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    :cond_98
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->finish()V

    .line 316
    :cond_9b
    return v3
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 275
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mFactoryTestApp:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 276
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 278
    const-string v1, "PhoneUtil"

    const-string v2, "WakeLock release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    :cond_1b
    const-string v1, "PhoneUtil"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_22
    const/4 v1, 0x1

    :try_start_23
    invoke-direct {p0, v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeToolLauncherTest(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    .line 289
    :goto_26
    return-void

    .line 286
    :catch_27
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_26
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->changeToolLauncherTest(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_f

    .line 211
    :goto_7
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v1, v2}, Lcom/android/samsungtest/FactoryTest/PhoneUtil;->initialSetting(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V

    .line 212
    return-void

    .line 207
    :catch_f
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_7
.end method
