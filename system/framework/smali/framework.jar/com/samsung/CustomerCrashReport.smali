.class public Lcom/samsung/CustomerCrashReport;
.super Ljava/lang/Object;
.source "CustomerCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO_SEND:Ljava/lang/String; = "android.intent.action.SAMSUNG_CRASHREPORT_CONFIG"

.field public static final ACTION_REPORT:Ljava/lang/String; = "android.intent.action.SAMSUNG_CRASHREPORT"

.field public static final ACTION_START_SETTING:Ljava/lang/String; = "android.intent.action.SAMSUNG_CRASHREPORT_SETTING"

.field private static final AUTO_SEND_OFF:I = -0x789abcdf

.field private static final AUTO_SEND_ON:I = 0x12345678

.field private static final CCR_PKG_NAME:Ljava/lang/String; = "com.samsung.ccr"

.field private static final DEBUG_CCR_INSTALL:Z = false

.field private static final DEBUG_CCR_NORMAL:Z = false

.field private static final PROPERTY_CCR_INSTALL:Ljava/lang/String; = "sys.ccr"

.field private static final TAG:Ljava/lang/String; = "CCR"

.field public static final TYPE_ANR:Ljava/lang/String; = "ANR"

.field public static final TYPE_CRASH:Ljava/lang/String; = "CRASH"

.field public static final TYPE_NATIVE_CRASH:Ljava/lang/String; = "NATIVE_CRASH"

.field public static final TYPE_SYSTEM_CRASH:Ljava/lang/String; = "SYSTEM_CRASH"

.field public static final TYPE_WATCHDOG:Ljava/lang/String; = "WATCHDOG"

.field private static mAutoSend:Z

.field private static mCCR:Lcom/samsung/CustomerCrashReport;

.field private static mContext:Landroid/content/Context;

.field private static mPackageMonitor:Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;

.field private static mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 100
    sput-object v1, Lcom/samsung/CustomerCrashReport;->mCCR:Lcom/samsung/CustomerCrashReport;

    .line 101
    sput-object v1, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/CustomerCrashReport;->mAutoSend:Z

    .line 103
    sput-object v1, Lcom/samsung/CustomerCrashReport;->mPm:Landroid/content/pm/PackageManager;

    .line 104
    sput-object v1, Lcom/samsung/CustomerCrashReport;->mPackageMonitor:Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sput-object p1, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    .line 113
    sget-object v4, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/CustomerCrashReport;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    new-instance v4, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;

    sget-object v5, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;-><init>(Lcom/samsung/CustomerCrashReport;Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/CustomerCrashReport;->mPackageMonitor:Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;

    .line 116
    sget-object v4, Lcom/samsung/CustomerCrashReport;->mPackageMonitor:Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;

    sget-object v5, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SAMSUNG_CRASHREPORT_CONFIG"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, autoSendFilter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/samsung/CustomerCrashReport$1;

    invoke-direct {v1, p0}, Lcom/samsung/CustomerCrashReport$1;-><init>(Lcom/samsung/CustomerCrashReport;)V

    .line 141
    .local v1, autoSendReceiver:Landroid/content/BroadcastReceiver;
    sget-object v4, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, bootCompleteFilter:Landroid/content/IntentFilter;
    new-instance v3, Lcom/samsung/CustomerCrashReport$2;

    invoke-direct {v3, p0}, Lcom/samsung/CustomerCrashReport$2;-><init>(Lcom/samsung/CustomerCrashReport;)V

    .line 157
    .local v3, booteCompleteReceiver:Landroid/content/BroadcastReceiver;
    sget-object v4, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    sput-boolean p0, Lcom/samsung/CustomerCrashReport;->mAutoSend:Z

    return p0
.end method

.method public static getModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSWVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    const-string v0, "gsm.version.baseband"

    const-string/jumbo v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 166
    const-class v1, Lcom/samsung/CustomerCrashReport;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/CustomerCrashReport;->mCCR:Lcom/samsung/CustomerCrashReport;

    if-nez v0, :cond_20

    .line 167
    new-instance v0, Lcom/samsung/CustomerCrashReport;

    invoke-direct {v0, p0}, Lcom/samsung/CustomerCrashReport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/CustomerCrashReport;->mCCR:Lcom/samsung/CustomerCrashReport;

    .line 170
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 172
    const-string/jumbo v0, "sys.ccr"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_22

    .line 174
    :cond_1d
    const/4 v0, 0x1

    .line 176
    :goto_1e
    monitor-exit v1

    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1e

    .line 166
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAutoSend()Z
    .registers 1

    .prologue
    .line 185
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_7
    return v0

    :cond_8
    sget-boolean v0, Lcom/samsung/CustomerCrashReport;->mAutoSend:Z

    goto :goto_7
.end method

.method public static isCCRInstalled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "sys.ccr"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 262
    .local v0, ccrIntent:Landroid/content/Intent;
    :cond_14
    :goto_14
    return v1

    .line 248
    .end local v0           #ccrIntent:Landroid/content/Intent;
    :cond_15
    sget-object v3, Lcom/samsung/CustomerCrashReport;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1b

    move v1, v2

    .line 250
    goto :goto_14

    .line 253
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SAMSUNG_CRASHREPORT_SETTING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v0       #ccrIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    sget-object v3, Lcom/samsung/CustomerCrashReport;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x20

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v2

    .line 262
    goto :goto_14
.end method

.method public static isCCRTarget()Z
    .registers 1

    .prologue
    .line 197
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static makeHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "inputText"
    .parameter "alg"

    .prologue
    .line 214
    const-string v8, ""

    .line 217
    .local v8, result:Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 218
    .local v7, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 219
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 220
    .local v3, digest:[B
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    .local v10, sb:Ljava/lang/StringBuffer;
    move-object v0, v3

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_19
    if-ge v5, v6, :cond_35

    aget-byte v1, v0, v5

    .line 223
    .local v1, b:B
    and-int/lit16 v11, v1, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, b_hex:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_2f

    .line 225
    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_2f
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 229
    .end local v1           #b:B
    .end local v2           #b_hex:Ljava/lang/String;
    :cond_35
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_38} :catch_3b

    move-result-object v8

    move-object v9, v8

    .line 236
    .end local v0           #arr$:[B
    .end local v3           #digest:[B
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #md:Ljava/security/MessageDigest;
    .end local v8           #result:Ljava/lang/String;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .local v9, result:Ljava/lang/String;
    :goto_3a
    return-object v9

    .line 231
    .end local v9           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    :catch_3b
    move-exception v4

    .line 232
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_3c
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "no such algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_5a

    move-object v9, v8

    .line 236
    .end local v8           #result:Ljava/lang/String;
    .restart local v9       #result:Ljava/lang/String;
    goto :goto_3a

    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v9           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    :catchall_5a
    move-exception v11

    move-object v9, v8

    .end local v8           #result:Ljava/lang/String;
    .restart local v9       #result:Ljava/lang/String;
    goto :goto_3a
.end method
