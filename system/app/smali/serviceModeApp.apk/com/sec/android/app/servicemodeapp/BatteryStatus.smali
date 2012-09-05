.class public Lcom/sec/android/app/servicemodeapp/BatteryStatus;
.super Landroid/app/Activity;
.source "BatteryStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static bdimming:I

.field private static brightness_mode:I

.field private static btimeout:I

.field private static pm:Landroid/os/PowerManager;

.field private static prev_timeout:I

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private config:Lcom/sec/android/app/servicemodeapp/appConfig;

.field public mHandler:Landroid/os/Handler;

.field private mHelpView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field power:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 55
    sput v1, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    .line 56
    sput v1, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->btimeout:I

    .line 57
    const v0, 0x927c0

    sput v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I

    .line 64
    sput v1, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->brightness_mode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->phone:Lcom/android/internal/telephony/Phone;

    .line 53
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/appConfig;->getInstance()Lcom/sec/android/app/servicemodeapp/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    .line 359
    new-instance v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus$2;-><init>(Lcom/sec/android/app/servicemodeapp/BatteryStatus;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private QuickStart()V
    .registers 7

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    const-string v4, "PATH_BATT_RESET"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_23

    .line 239
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_4d

    .line 244
    if-eqz v2, :cond_18

    .line 246
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    :cond_18
    :goto_18
    move-object v1, v2

    .line 252
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_19
    :goto_19
    return-void

    .line 247
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_1a
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    const-string v3, "RilActionService"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_23
    move-exception v0

    .line 241
    .restart local v0       #e:Ljava/io/IOException;
    :goto_24
    :try_start_24
    const-string v3, "QuickStart"

    const-string v4, "File open error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3a

    .line 244
    if-eqz v1, :cond_19

    .line 246
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_19

    .line 247
    :catch_31
    move-exception v0

    .line 248
    const-string v3, "RilActionService"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v3

    :goto_3b
    if-eqz v1, :cond_40

    .line 246
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 249
    :cond_40
    :goto_40
    throw v3

    .line 247
    :catch_41
    move-exception v0

    .line 248
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "RilActionService"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_4a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3b

    .line 240
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_24
.end method

.method private SetLcdNeverTimeOut()V
    .registers 7

    .prologue
    .line 376
    const/4 v0, -0x1

    .line 379
    .local v0, NERVER_TIMEOUT:I
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_59
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_31

    .line 386
    const-string v2, "BatteryStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get current timeout value finally, previous value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_27
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    return-void

    .line 381
    :catch_31
    move-exception v1

    .line 382
    .local v1, er:Ljava/lang/Throwable;
    :try_start_32
    const-string v2, "BatteryStatus"

    const-string v3, "get current screen off timeout value! set default with value 60secs."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const v2, 0xea60

    sput v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_59

    .line 386
    const-string v2, "BatteryStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get current timeout value finally, previous value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .end local v1           #er:Ljava/lang/Throwable;
    :catchall_59
    move-exception v2

    const-string v3, "BatteryStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get current timeout value finally, previous value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private SetLcdTimeOut()V
    .registers 4

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    sget v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->prev_timeout:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/BatteryStatus;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->lcdOn_sleeptest()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/BatteryStatus;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V

    return-void
.end method

.method private fixedTemp(I)Ljava/lang/String;
    .registers 6
    .parameter "temp"

    .prologue
    .line 217
    div-int/lit8 v0, p1, 0xa

    .line 218
    .local v0, tens:I
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0xa

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getIntFromFile(Ljava/lang/String;)I
    .registers 10
    .parameter "path"

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_19

    .line 180
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_34

    move-result v3

    .line 187
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .local v3, ret:I
    :goto_18
    return v3

    .line 183
    .end local v3           #ret:I
    .restart local v1       #in:Ljava/io/BufferedReader;
    :catch_19
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :goto_1a
    const-string v5, "BatteryStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v3, 0x0

    .restart local v3       #ret:I
    goto :goto_18

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #ret:I
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_34
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1a
.end method

.method private lcdOff_sleeptest()V
    .registers 7

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    const-string v4, "PATH_LCD_POWER"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_23

    .line 282
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_4d

    .line 287
    if-eqz v2, :cond_18

    .line 289
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    :cond_18
    :goto_18
    move-object v1, v2

    .line 295
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_19
    :goto_19
    return-void

    .line 290
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_1a
    move-exception v0

    .line 291
    .local v0, e:Ljava/io/IOException;
    const-string v3, "RilActionService"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 283
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_23
    move-exception v0

    .line 284
    .restart local v0       #e:Ljava/io/IOException;
    :goto_24
    :try_start_24
    const-string v3, "RilActionService"

    const-string v4, "File open error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3a

    .line 287
    if-eqz v1, :cond_19

    .line 289
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_19

    .line 290
    :catch_31
    move-exception v0

    .line 291
    const-string v3, "RilActionService"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 287
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v3

    :goto_3b
    if-eqz v1, :cond_40

    .line 289
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 292
    :cond_40
    :goto_40
    throw v3

    .line 290
    :catch_41
    move-exception v0

    .line 291
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "RilActionService"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 287
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_4a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3b

    .line 283
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_24
.end method

.method private lcdOn_sleeptest()V
    .registers 7

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    const-string v4, "PATH_LCD_POWER"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_48
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_31

    .line 258
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 259
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V

    .line 260
    const/4 v3, 0x1

    sput v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    .line 262
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->SetLcdNeverTimeOut()V

    .line 263
    const/4 v3, 0x1

    sput v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->btimeout:I
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_58
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_5b

    .line 268
    if-eqz v2, :cond_26

    .line 270
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_28

    :cond_26
    :goto_26
    move-object v1, v2

    .line 276
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_27
    :goto_27
    return-void

    .line 271
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_28
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    const-string v3, "RilActionService"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 264
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_31
    move-exception v0

    .line 265
    .restart local v0       #e:Ljava/io/IOException;
    :goto_32
    :try_start_32
    const-string v3, "RilActionService"

    const-string v4, "File open error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_48

    .line 268
    if-eqz v1, :cond_27

    .line 270
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_27

    .line 271
    :catch_3f
    move-exception v0

    .line 272
    const-string v3, "RilActionService"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    :catchall_48
    move-exception v3

    :goto_49
    if-eqz v1, :cond_4e

    .line 270
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 273
    :cond_4e
    :goto_4e
    throw v3

    .line 271
    :catch_4f
    move-exception v0

    .line 272
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "RilActionService"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_58
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_49

    .line 264
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_5b
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_32
.end method

.method private putIntToFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "path"
    .parameter "value"

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 195
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_22

    .line 196
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_d
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_5f

    .line 198
    const/4 v3, 0x0

    .line 205
    .local v3, ret:I
    if-eqz v2, :cond_16

    .line 207
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19

    :cond_16
    :goto_16
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    move v4, v3

    .line 213
    .end local v3           #ret:I
    .local v4, ret:I
    :goto_18
    return v4

    .line 208
    .end local v1           #out:Ljava/io/BufferedWriter;
    .end local v4           #ret:I
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #ret:I
    :catch_19
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    const-string v5, "LOG_TAG"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 199
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #ret:I
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :catch_22
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    :goto_23
    :try_start_23
    const-string v5, "BatteryStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_4c

    .line 201
    const/4 v3, -0x1

    .line 205
    .restart local v3       #ret:I
    if-eqz v1, :cond_41

    .line 207
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_43

    .end local v0           #e:Ljava/lang/Exception;
    :cond_41
    :goto_41
    move v4, v3

    .line 210
    .end local v3           #ret:I
    .restart local v4       #ret:I
    goto :goto_18

    .line 208
    .end local v4           #ret:I
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v3       #ret:I
    :catch_43
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    const-string v5, "LOG_TAG"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catchall_4c
    move-exception v5

    :goto_4d
    if-eqz v1, :cond_52

    .line 207
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 210
    :cond_52
    :goto_52
    throw v5

    .line 208
    :catch_53
    move-exception v0

    .line 209
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "LOG_TAG"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_5c
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4d

    .line 199
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_5f
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_23
.end method

.method private setBrightness(I)V
    .registers 4
    .parameter "brightness"

    .prologue
    .line 397
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 398
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_f

    .line 399
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 403
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_f
    :goto_f
    return-void

    .line 401
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private turnOffAutobrightness()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 411
    const-string v0, "BatteryStatus"

    const-string v1, "turnOffAutobrightness()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->brightness_mode:I

    .line 413
    const-string v0, "BatteryStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffAutobrightness() brightness_mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->brightness_mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    return-void
.end method

.method private turnOnAutobrightness()V
    .registers 4

    .prologue
    .line 406
    const-string v0, "BatteryStatus"

    const-string v1, "turnOffAutobrightness()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v0, "BatteryStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffAutobrightness() brightness_mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->brightness_mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    sget v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->brightness_mode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->lcdOff_sleeptest()V

    .line 223
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->QuickStart()V

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 228
    .local v1, timer:Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus$1;-><init>(Lcom/sec/android/app/servicemodeapp/BatteryStatus;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 233
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    const/4 v6, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "Press Right keypad to display CP status.\nTo return to this page, press Back key."

    .line 70
    .local v0, help_str:Ljava/lang/String;
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, intent:Landroid/content/Intent;
    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mTextView:Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const v3, 0x7f060009

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHelpView:Landroid/widget/TextView;

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHelpView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHelpView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, quickstartbutton:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->phone:Lcom/android/internal/telephony/Phone;

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 84
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setRequestedOrientation(I)V

    .line 86
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->pm:Landroid/os/PowerManager;

    .line 87
    sget-object v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->pm:Landroid/os/PowerManager;

    const v4, 0x1000000a

    const-string v5, "BatteryStatus"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    .line 88
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->power:Landroid/os/IPowerManager;

    .line 89
    sget-object v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 91
    sget-object v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 93
    const-string v3, "BatteryStatus"

    const-string v4, "WakeLock acquire"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 99
    :cond_8e
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_24

    .line 171
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 164
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-class v1, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    const-string v1, "keyString"

    const-string v2, "0228"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 162
    :pswitch_data_24
    .packed-switch 0x16
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_d} :catch_2b

    .line 149
    :goto_d
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    .line 151
    sget-object v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 153
    const-string v0, "BatteryStatus"

    const-string v1, "wl.isHeld()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 156
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->turnOnAutobrightness()V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void

    .line 147
    :catch_2b
    move-exception v0

    goto :goto_d
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V

    .line 132
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    .line 134
    sget-object v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 136
    const-string v0, "BatteryStatus"

    const-string v1, "WakeLock acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 139
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->turnOffAutobrightness()V

    .line 140
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    const-string v2, "PATH_BATT_TEST_MODE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1\n"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V

    .line 106
    sput v3, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->SetLcdNeverTimeOut()V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->setBrightness(I)V
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_2c

    .line 118
    :goto_e
    sput v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->bdimming:I

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->SetLcdTimeOut()V

    .line 121
    sput v2, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->btimeout:I

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    const-string v1, "PATH_BATT_TEST_MODE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0\n"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 125
    return-void

    .line 116
    :catch_2c
    move-exception v0

    goto :goto_e
.end method

.method updateBatteryStatus()V
    .registers 26

    .prologue
    .line 298
    const-string v5, ""

    .line 311
    .local v5, status:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_TEST_MODE"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 312
    .local v13, test_ret:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_VOL"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v14

    .line 313
    .local v14, volt:I
    int-to-float v0, v14

    move/from16 v19, v0

    const v20, 0x3a83126f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v14, v0

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_VOL_ADC"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v15

    .line 315
    .local v15, volt_adc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_VOL_ADC_CAL"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v17

    .line 316
    .local v17, volt_adc_cal:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_VOL_AVER"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v18

    .line 317
    .local v18, volt_aver:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_VOL_ADC_AVER"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v16

    .line 319
    .local v16, volt_adc_aver:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_TEMP"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v6

    .line 320
    .local v6, temp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_TEMP_ADC"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v7

    .line 321
    .local v7, temp_adc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_TEMP_ADC_CAL"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v9

    .line 322
    .local v9, temp_adc_cal:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_TEMP_AVER"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v10

    .line 323
    .local v10, temp_aver:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_TEMP_ADC_AVER"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v8

    .line 324
    .local v8, temp_adc_aver:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_V_F_ADC"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v11

    .line 325
    .local v11, temp_vf_adc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_VFOCV"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v12

    .line 326
    .local v12, temp_vf_ocv:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_CAPA"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, batt_level:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    move-object/from16 v19, v0

    const-string v20, "PATH_BATT_THERMAL"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->getIntFromFile(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, batt_thermal:I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Network: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "gsm.network.type"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " RSSI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Current Value \n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Voltage:  %.1f (mV)\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    int-to-double v0, v14

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     ADC:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Temperature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->fixedTemp(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (\'C)\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     ADC:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     VF ADC:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     VF OCV:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Level: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (%)\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Level Block: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v3, 0x2

    div-int/lit8 v20, v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " blocks (0~20) \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Thermal monitor: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Average Value \n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Voltage:  %.1f (mV)\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     ADC:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 347
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     cal.: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Temperature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->fixedTemp(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (\'C)\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 349
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     ADC:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 350
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "     cal.: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/servicemodeapp/BatteryStatus;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method
