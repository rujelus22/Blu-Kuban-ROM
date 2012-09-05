.class public Lcom/sec/android/app/phoneutil/PhoneUtil;
.super Landroid/app/Activity;
.source "PhoneUtil.java"


# instance fields
.field private final AP_PDA_SELECTION:[B

.field private final CP_MODEM_SELECTION:[B

.field private MODEL:Ljava/lang/String;

.field private UART_PATH:Ljava/lang/String;

.field private final UART_SEL_MASK:I

.field private USB_PATH:Ljava/lang/String;

.field private final USB_SEL_MASK:I

.field private config:Lcom/sec/android/app/phoneutil/appConfig;

.field private mContext:Landroid/content/Context;

.field private mUartRadioGroup:Landroid/widget/RadioGroup;

.field private mUsbRadioGroup:Landroid/widget/RadioGroup;

.field private final modem:[B

.field private final pda:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->UART_PATH:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->USB_PATH:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    .line 56
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->AP_PDA_SELECTION:[B

    .line 57
    new-array v0, v1, [B

    fill-array-data v0, :array_3c

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->CP_MODEM_SELECTION:[B

    .line 59
    invoke-static {}, Lcom/sec/android/app/phoneutil/appConfig;->getInstance()Lcom/sec/android/app/phoneutil/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->config:Lcom/sec/android/app/phoneutil/appConfig;

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->USB_SEL_MASK:I

    .line 154
    iput v1, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->UART_SEL_MASK:I

    .line 260
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_42

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->pda:[B

    .line 261
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_48

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->modem:[B

    return-void

    .line 56
    nop

    :array_36
    .array-data 0x1
        0x31t
        0x0t
    .end array-data

    .line 57
    nop

    :array_3c
    .array-data 0x1
        0x30t
        0x0t
    .end array-data

    .line 260
    nop

    :array_42
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 261
    :array_48
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/phoneutil/PhoneUtil;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/phoneutil/PhoneUtil;->changeUart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/phoneutil/PhoneUtil;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/phoneutil/PhoneUtil;->changeUsb(Ljava/lang/String;)V

    return-void
.end method

.method private changeUart(Ljava/lang/String;)V
    .registers 7
    .parameter "uart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->UART_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, out:Ljava/io/FileOutputStream;
    const/4 v0, 0x1

    .line 267
    .local v0, apUart:Z
    :try_start_8
    const-string v3, "PDA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 268
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E110S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E120S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E120K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E120L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E160S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E160K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E160L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "I9100G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 271
    :cond_60
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->pda:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_df
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_65} :catch_72

    .line 292
    :cond_65
    :goto_65
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 295
    :goto_68
    invoke-direct {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->updateUartSetting(Z)V

    .line 296
    return-void

    .line 274
    :cond_6c
    :try_start_6c
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->AP_PDA_SELECTION:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_df
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_72

    goto :goto_65

    .line 288
    :catch_72
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    :try_start_73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_df

    .line 292
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_68

    .line 276
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7a
    :try_start_7a
    const-string v3, "MODEM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 277
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E110S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E120S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E120K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E120L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E160S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E160K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "E160L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v4, "I9100G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 280
    :cond_d2
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->modem:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 285
    :goto_d7
    const/4 v0, 0x0

    goto :goto_65

    .line 283
    :cond_d9
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->CP_MODEM_SELECTION:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_de
    .catchall {:try_start_7a .. :try_end_de} :catchall_df
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_de} :catch_72

    goto :goto_d7

    .line 292
    :catchall_df
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method

.method private changeUsb(Ljava/lang/String;)V
    .registers 8
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->USB_PATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, out:Ljava/io/FileOutputStream;
    const/4 v0, 0x1

    .line 301
    .local v0, apUsb:Z
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mContext:Landroid/content/Context;

    const-string v5, "usb"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 304
    .local v3, usbManager:Landroid/hardware/usb/UsbManager;
    :try_start_12
    const-string v4, "PDA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 306
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "M250S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "M250K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "M250L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "SC02C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100P"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 309
    :cond_6a
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->pda:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6f
    .catchall {:try_start_12 .. :try_end_6f} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6f} :catch_c8

    .line 339
    :cond_6f
    :goto_6f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 341
    :goto_72
    invoke-direct {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->updateUsbSetting(Z)V

    .line 342
    return-void

    .line 310
    :cond_76
    :try_start_76
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E110S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E120S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E120K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E120L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E160S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E160K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E160L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 313
    :cond_bc
    const-string v4, "acm,mass_storage"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 314
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->pda:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c7
    .catchall {:try_start_76 .. :try_end_c7} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c7} :catch_c8

    goto :goto_6f

    .line 335
    :catch_c8
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/Exception;
    :try_start_c9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_d6

    .line 339
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_72

    .line 316
    .end local v1           #e:Ljava/lang/Exception;
    :cond_d0
    :try_start_d0
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->AP_PDA_SELECTION:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_c8

    goto :goto_6f

    .line 339
    :catchall_d6
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 319
    :cond_db
    :try_start_db
    const-string v4, "MODEM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "M250S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "M250K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "M250L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "SC02C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100P"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "I9100G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 323
    :cond_133
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->modem:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    :goto_138
    const/4 v0, 0x0

    goto/16 :goto_6f

    .line 324
    :cond_13b
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E110S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E120S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E120K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E120L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E160S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E160K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    const-string v5, "E160L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 327
    :cond_181
    const-string v4, "acm,diag,diag_mdm,rmnet_sdio"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 328
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->modem:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_138

    .line 330
    :cond_18d
    iget-object v4, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->CP_MODEM_SELECTION:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_192
    .catchall {:try_start_db .. :try_end_192} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_192} :catch_c8

    goto :goto_138
.end method

.method private getSwitchSelValue()I
    .registers 14

    .prologue
    .line 158
    const/4 v7, 0x1

    .line 159
    .local v7, ret:I
    const/4 v5, 0x0

    .line 160
    .local v5, in:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 167
    .local v2, fr:Ljava/io/FileReader;
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    const-string v9, "/mnt/.lfs/sw_sel"

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_78

    .line 168
    .end local v2           #fr:Ljava/io/FileReader;
    .local v3, fr:Ljava/io/FileReader;
    :try_start_a
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_dc
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_e3

    .line 170
    .end local v5           #in:Ljava/io/BufferedReader;
    .local v6, in:Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->read()I

    move-result v4

    .line 172
    .local v4, i:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_37

    .line 173
    int-to-char v0, v4

    .line 175
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, s:Ljava/lang/String;
    const-string v9, "SWITCH_SEL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_df
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_e6

    move-result v7

    .line 185
    .end local v0           #c:C
    .end local v8           #s:Ljava/lang/String;
    :cond_37
    if-eqz v6, :cond_3c

    .line 186
    :try_start_39
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 188
    :cond_3c
    if-eqz v3, :cond_41

    .line 189
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_5c

    :cond_41
    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    move-object v5, v6

    .line 195
    .end local v4           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_43
    :goto_43
    const-string v9, "SWITCH_SEL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSwitchSelValue: getSwitchSelValue : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v7

    .line 190
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v4       #i:I
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_5c
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/IOException;
    const-string v9, "SWITCH_SEL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSwitchSelValue: exception in close "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    move-object v5, v6

    .line 193
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    goto :goto_43

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #i:I
    :catch_78
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/Exception;
    :goto_79
    :try_start_79
    const-string v9, "SWITCH_SEL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t read (/mnt/.lfs/sw_sel), e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_b6

    .line 185
    if-eqz v5, :cond_96

    .line 186
    :try_start_93
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 188
    :cond_96
    if-eqz v2, :cond_43

    .line 189
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9b} :catch_9c

    goto :goto_43

    .line 190
    :catch_9c
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/IOException;
    const-string v9, "SWITCH_SEL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSwitchSelValue: exception in close "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 184
    .end local v1           #e:Ljava/io/IOException;
    :catchall_b6
    move-exception v9

    .line 185
    :goto_b7
    if-eqz v5, :cond_bc

    .line 186
    :try_start_b9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 188
    :cond_bc
    if-eqz v2, :cond_c1

    .line 189
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c1} :catch_c2

    .line 192
    :cond_c1
    :goto_c1
    throw v9

    .line 190
    :catch_c2
    move-exception v1

    .line 191
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "SWITCH_SEL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSwitchSelValue: exception in close "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 184
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catchall_dc
    move-exception v9

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_b7

    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catchall_df
    move-exception v9

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    goto :goto_b7

    .line 181
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_e3
    move-exception v1

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_79

    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_e6
    move-exception v1

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    goto :goto_79
.end method

.method private initialSetting(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V
    .registers 9
    .parameter "uart"
    .parameter "usb"

    .prologue
    const/4 v5, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uartapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, currentUart:I
    invoke-virtual {p0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usbapcpmode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, currentUsb:I
    const-string v2, "Init_USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UART_Init : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v2, "Pnit_USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB_Init : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez v0, :cond_57

    .line 141
    const v2, 0x7f050005

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 146
    :cond_4e
    :goto_4e
    if-nez v1, :cond_60

    .line 147
    const v2, 0x7f050008

    invoke-virtual {p2, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 151
    :cond_56
    :goto_56
    return-void

    .line 142
    :cond_57
    if-ne v0, v5, :cond_4e

    .line 143
    const v2, 0x7f050006

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4e

    .line 148
    :cond_60
    if-ne v1, v5, :cond_56

    .line 149
    const v2, 0x7f050009

    invoke-virtual {p2, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_56
.end method

.method private setSwitchSelValue(I)I
    .registers 12
    .parameter "value"

    .prologue
    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, out:Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 206
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_2
    new-instance v2, Ljava/io/FileWriter;

    const-string v6, "/mnt/.lfs/sw_sel"

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_57

    .line 207
    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_9
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_bc
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_c3

    .line 209
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_c6

    .line 210
    const/4 v5, 0x0

    .line 217
    .local v5, ret:I
    if-eqz v4, :cond_1b

    .line 218
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 220
    :cond_1b
    if-eqz v2, :cond_20

    .line 221
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_3b

    :cond_20
    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    move-object v3, v4

    .line 227
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_22
    :goto_22
    const-string v6, "SWITCH_SEL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSwitchSelValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v5

    .line 222
    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3b
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    const-string v6, "SWITCH_SEL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSwitchSelValue: exception in close "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    move-object v3, v4

    .line 225
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_22

    .line 212
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #ret:I
    :catch_57
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    :goto_58
    :try_start_58
    const-string v6, "SWITCH_SEL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t write (/mnt/.lfs/sw_sel), e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_96

    .line 214
    const/4 v5, -0x1

    .line 217
    .restart local v5       #ret:I
    if-eqz v3, :cond_76

    .line 218
    :try_start_73
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 220
    :cond_76
    if-eqz v1, :cond_22

    .line 221
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_7c

    goto :goto_22

    .line 222
    :catch_7c
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    const-string v6, "SWITCH_SEL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSwitchSelValue: exception in close "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #ret:I
    :catchall_96
    move-exception v6

    .line 217
    :goto_97
    if-eqz v3, :cond_9c

    .line 218
    :try_start_99
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 220
    :cond_9c
    if-eqz v1, :cond_a1

    .line 221
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a1} :catch_a2

    .line 224
    :cond_a1
    :goto_a1
    throw v6

    .line 222
    :catch_a2
    move-exception v0

    .line 223
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "SWITCH_SEL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSwitchSelValue: exception in close "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_bc
    move-exception v6

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_97

    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_bf
    move-exception v6

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_97

    .line 212
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_c3
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_58

    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_c6
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_58
.end method

.method private updateUartSetting(Z)V
    .registers 4
    .parameter "pda"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getSwitchSelValue()I

    move-result v0

    .line 236
    .local v0, value:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 237
    or-int/lit8 v0, v0, 0x2

    .line 243
    :goto_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->setSwitchSelValue(I)I

    .line 244
    return-void

    .line 240
    :cond_d
    and-int/lit8 v0, v0, -0x3

    goto :goto_9
.end method

.method private updateUsbSetting(Z)V
    .registers 4
    .parameter "pda"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getSwitchSelValue()I

    move-result v0

    .line 250
    .local v0, value:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 251
    or-int/lit8 v0, v0, 0x1

    .line 257
    :goto_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->setSwitchSelValue(I)I

    .line 258
    return-void

    .line 254
    :cond_d
    and-int/lit8 v0, v0, -0x2

    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mContext:Landroid/content/Context;

    .line 66
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->setContentView(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->config:Lcom/sec/android/app/phoneutil/appConfig;

    const-string v1, "PATH_UART"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/phoneutil/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->UART_PATH:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->config:Lcom/sec/android/app/phoneutil/appConfig;

    const-string v1, "PATH_USB"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/phoneutil/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->USB_PATH:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->config:Lcom/sec/android/app/phoneutil/appConfig;

    const-string v1, "MODEL"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/phoneutil/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->MODEL:Ljava/lang/String;

    .line 72
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sec/android/app/phoneutil/PhoneUtil$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/phoneutil/PhoneUtil$1;-><init>(Lcom/sec/android/app/phoneutil/PhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 99
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/phoneutil/PhoneUtil;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sec/android/app/phoneutil/PhoneUtil$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/phoneutil/PhoneUtil$2;-><init>(Lcom/sec/android/app/phoneutil/PhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mUartRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/sec/android/app/phoneutil/PhoneUtil;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/phoneutil/PhoneUtil;->initialSetting(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V

    .line 131
    return-void
.end method
