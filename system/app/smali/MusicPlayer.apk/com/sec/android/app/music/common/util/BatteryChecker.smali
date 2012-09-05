.class public Lcom/sec/android/app/music/common/util/BatteryChecker;
.super Landroid/os/AsyncTask;
.source "BatteryChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Activity;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static mFinishApp:Ljava/lang/Boolean;

.field public static mShowPopup:Ljava/lang/Boolean;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private batteryMessageBox:Landroid/app/AlertDialog;

.field private final mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mLowBattery:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const-class v0, Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 229
    new-instance v0, Lcom/sec/android/app/music/common/util/BatteryChecker$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker$4;-><init>(Lcom/sec/android/app/music/common/util/BatteryChecker;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    invoke-interface {v0}, Lcom/sec/android/app/music/common/util/OnLowBatteryListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/common/util/BatteryChecker;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/OnLowBatteryListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/util/BatteryChecker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private batteryCheck()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 70
    const/4 v9, 0x0

    .line 72
    .local v9, voltage:I
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 74
    .local v0, CHARGESOURCE_FILE:Ljava/lang/String;
    const/4 v5, 0x0

    .line 75
    .local v5, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 76
    .local v2, charging_source:I
    const/16 v12, 0xa

    new-array v1, v12, [B

    .line 77
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 78
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 81
    .local v7, length:I
    :try_start_d
    new-instance v6, Ljava/io/FileInputStream;

    const-string v12, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_14} :catch_2a

    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    move-object v5, v6

    .line 88
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_15
    if-eqz v5, :cond_1e

    .line 90
    :try_start_17
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_53
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_4b

    move-result v7

    .line 94
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 98
    :cond_1e
    :goto_1e
    if-eqz v7, :cond_58

    .line 99
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v12, v7, -0x1

    invoke-direct {v8, v1, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 105
    .restart local v8       #value:Ljava/lang/String;
    :goto_27
    if-nez v8, :cond_60

    .line 132
    :cond_29
    :goto_29
    return v10

    .line 82
    :catch_2a
    move-exception v3

    .line 83
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 85
    iget-object v12, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "charging_source FileNotFoundException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 91
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_4b
    move-exception v3

    .line 92
    .local v3, e:Ljava/io/IOException;
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_53

    .line 94
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_1e

    .end local v3           #e:Ljava/io/IOException;
    :catchall_53
    move-exception v10

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v10

    .line 102
    :cond_58
    iget-object v12, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v13, "batteryCheck : read in length is 0.."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 107
    :cond_60
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 112
    if-nez v2, :cond_29

    .line 114
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6b
    const/4 v12, 0x5

    if-ge v4, v12, :cond_9a

    .line 115
    :try_start_6e
    invoke-direct {p0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getVoltage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_79} :catch_7e

    move-result v12

    add-int/2addr v9, v12

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 117
    :catch_7e
    move-exception v3

    .line 118
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    iget-object v12, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "batteryCheck : IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v3           #e:Ljava/io/IOException;
    :cond_9a
    div-int/lit8 v12, v9, 0x5

    if-gt v12, v10, :cond_29

    .line 125
    iget-object v10, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v12, "batteryCheck : Low Battery.."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 127
    goto :goto_29
.end method

.method private getVoltage()Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x64

    const/4 v12, 0x0

    .line 137
    iget-object v9, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v10, "getVoltage() is called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 139
    .local v0, BATT_FILE:Ljava/lang/String;
    const/16 v1, 0x64

    .line 141
    .local v1, MAX_BUFFER_SIZE:I
    const/4 v5, 0x0

    .line 142
    .local v5, in:Ljava/io/InputStream;
    new-array v2, v11, [B

    .line 143
    .local v2, buffer:[B
    const/4 v8, 0x0

    .line 144
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 146
    .local v7, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_14
    if-ge v4, v11, :cond_1b

    .line 147
    aput-byte v12, v2, v4

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 151
    :cond_1b
    :try_start_1b
    new-instance v6, Ljava/io/FileInputStream;

    const-string v9, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_36

    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    move-object v5, v6

    .line 158
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_23
    if-eqz v5, :cond_2c

    .line 160
    :try_start_25
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_53

    move-result v7

    .line 164
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_2c
    :goto_2c
    if-eqz v7, :cond_35

    .line 169
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .line 171
    .restart local v8       #value:Ljava/lang/String;
    :cond_35
    return-object v8

    .line 152
    :catch_36
    move-exception v3

    .line 153
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 155
    iget-object v9, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVoltage : FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 161
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_53
    move-exception v3

    .line 162
    .local v3, e:Ljava/io/IOException;
    :try_start_54
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5b

    .line 164
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_2c

    .end local v3           #e:Ljava/io/IOException;
    :catchall_5b
    move-exception v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Object;
    .registers 6
    .parameter "params"

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_14

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    .line 65
    :cond_14
    :goto_14
    const/4 v1, 0x0

    return-object v1

    .line 61
    :catch_16
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, [Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->doInBackground([Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public showLowBatteryMsg(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->TAG:Ljava/lang/String;

    const-string v2, "showLowBatteryMsg() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_62

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    if-eqz v1, :cond_62

    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_62

    .line 188
    sget-object v2, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    monitor-enter v2

    .line 189
    :try_start_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mContext:Lcom/sec/android/app/music/common/util/OnLowBatteryListener;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sec/android/app/music/common/util/BatteryChecker$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker$1;-><init>(Lcom/sec/android/app/music/common/util/BatteryChecker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    new-instance v1, Lcom/sec/android/app/music/common/util/BatteryChecker$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker$2;-><init>(Lcom/sec/android/app/music/common/util/BatteryChecker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0900ed

    new-instance v4, Lcom/sec/android/app/music/common/util/BatteryChecker$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker$3;-><init>(Lcom/sec/android/app/music/common/util/BatteryChecker;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 221
    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_61

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/BatteryChecker;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 223
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 225
    :cond_61
    monitor-exit v2

    .line 227
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_62
    return-void

    .line 225
    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_1c .. :try_end_65} :catchall_63

    throw v1
.end method
