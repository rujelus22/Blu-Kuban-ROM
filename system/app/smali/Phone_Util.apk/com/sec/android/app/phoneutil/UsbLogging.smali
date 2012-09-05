.class public Lcom/sec/android/app/phoneutil/UsbLogging;
.super Landroid/app/Activity;
.source "UsbLogging.java"


# instance fields
.field private final LOGGING_ENABLE_PATH:Ljava/lang/String;

.field private final LOGGING_SEL_PATH:Ljava/lang/String;

.field private final aponly:[B

.field private final cpap:[B

.field private final cponly:[B

.field private final disable:[B

.field private final enable:[B

.field private mContext:Landroid/content/Context;

.field private mUartRadioGroup:Landroid/widget/RadioGroup;

.field private mUsbRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x7

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 210
    const-string v0, "/sys/class/sec/switch/DMport"

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->LOGGING_ENABLE_PATH:Ljava/lang/String;

    .line 211
    const-string v0, "/sys/class/sec/switch/DMlog"

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->LOGGING_SEL_PATH:Ljava/lang/String;

    .line 212
    new-array v0, v1, [B

    fill-array-data v0, :array_34

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->enable:[B

    .line 213
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->disable:[B

    .line 214
    new-array v0, v1, [B

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->cponly:[B

    .line 215
    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->aponly:[B

    .line 216
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->cpap:[B

    return-void

    .line 212
    nop

    :array_34
    .array-data 0x1
        0x45t
        0x4et
        0x41t
        0x42t
        0x4ct
        0x45t
        0x0t
    .end array-data

    .line 213
    :array_3c
    .array-data 0x1
        0x44t
        0x49t
        0x53t
        0x41t
        0x42t
        0x4ct
        0x45t
        0x0t
    .end array-data

    .line 214
    :array_44
    .array-data 0x1
        0x43t
        0x50t
        0x4ft
        0x4et
        0x4ct
        0x59t
        0x0t
    .end array-data

    .line 215
    :array_4c
    .array-data 0x1
        0x41t
        0x50t
        0x4ft
        0x4et
        0x4ct
        0x59t
        0x0t
    .end array-data

    .line 216
    :array_54
    .array-data 0x1
        0x43t
        0x50t
        0x41t
        0x50t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/phoneutil/UsbLogging;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/phoneutil/UsbLogging;->loggingenable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/phoneutil/UsbLogging;->loggingstatus(Ljava/lang/String;)V

    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mContext:Landroid/content/Context;

    const-string v2, "usblogging.preferences_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initialSetting(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V
    .registers 8
    .parameter "func"
    .parameter "type"

    .prologue
    const v4, 0x7f05000f

    const/4 v3, 0x1

    .line 173
    const-string v2, "persist.enablestatus"

    invoke-direct {p0, v2}, Lcom/sec/android/app/phoneutil/UsbLogging;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, uartString:Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 175
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_31

    .line 176
    const v2, 0x7f05000b

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 182
    :cond_1a
    :goto_1a
    const-string v2, "persist.logselection"

    invoke-direct {p0, v2}, Lcom/sec/android/app/phoneutil/UsbLogging;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, usbString:Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 185
    const-string v2, "cp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_40

    .line 186
    const v2, 0x7f05000e

    invoke-virtual {p2, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 194
    :cond_30
    :goto_30
    return-void

    .line 177
    .end local v1           #usbString:Ljava/lang/String;
    :cond_31
    const-string v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_1a

    .line 178
    const v2, 0x7f05000c

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1a

    .line 187
    .restart local v1       #usbString:Ljava/lang/String;
    :cond_40
    const-string v2, "ap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_4c

    .line 188
    invoke-virtual {p2, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_30

    .line 189
    :cond_4c
    const-string v2, "cpap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_30

    .line 190
    invoke-virtual {p2, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_30
.end method

.method private loggingenable(Ljava/lang/String;)V
    .registers 5
    .parameter "logenable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/switch/DMport"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_7
    const-string v2, "YES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->enable:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_26

    .line 233
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 235
    :goto_17
    return-void

    .line 225
    :cond_18
    :try_start_18
    const-string v2, "NO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 226
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->disable:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_14

    .line 229
    :catch_26
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 233
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_17

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private loggingstatus(Ljava/lang/String;)V
    .registers 5
    .parameter "sel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/switch/DMlog"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_7
    const-string v2, "CPONLY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->cponly:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_26

    .line 255
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 257
    :goto_17
    return-void

    .line 244
    :cond_18
    :try_start_18
    const-string v2, "APONLY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->aponly:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_14

    .line 251
    :catch_26
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3c

    .line 255
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_17

    .line 247
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2e
    :try_start_2e
    const-string v2, "CPAP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->cpap:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_26

    goto :goto_14

    .line 255
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mContext:Landroid/content/Context;

    .line 56
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/phoneutil/UsbLogging;->setContentView(I)V

    .line 60
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/phoneutil/UsbLogging;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUartRadioGroup:Landroid/widget/RadioGroup;

    .line 61
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/phoneutil/UsbLogging;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    .line 65
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mContext:Landroid/content/Context;

    const-string v3, "usblogging.preferences_name"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Enable"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_6b

    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUartRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 71
    :cond_3f
    :goto_3f
    const-string v2, "CPONLY"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_7c

    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 78
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUartRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/sec/android/app/phoneutil/UsbLogging$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/phoneutil/UsbLogging$1;-><init>(Lcom/sec/android/app/phoneutil/UsbLogging;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/sec/android/app/phoneutil/UsbLogging$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/phoneutil/UsbLogging$2;-><init>(Lcom/sec/android/app/phoneutil/UsbLogging;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUartRadioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/phoneutil/UsbLogging;->initialSetting(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V

    .line 169
    return-void

    .line 69
    :cond_6b
    const-string v2, "Disable"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_3f

    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUartRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f05000c

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3f

    .line 72
    :cond_7c
    const-string v2, "APONLY"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_8d

    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4f

    .line 73
    :cond_8d
    const-string v2, "CPAP"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_4f

    iget-object v2, p0, Lcom/sec/android/app/phoneutil/UsbLogging;->mUsbRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4f
.end method
