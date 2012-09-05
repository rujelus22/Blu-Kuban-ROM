.class public Lcom/google/android/common/datarequest/ConfigAndDrdUtil;
.super Ljava/lang/Object;
.source "ConfigAndDrdUtil.java"


# static fields
.field private static sAppVersionName:Ljava/lang/String;

.field private static sIsInitialized:Z

.field private static sLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "DRD"

    sput-object v0, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sLogTag:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sIsInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static declared-synchronized cleanupConfigAndDrd()V
    .registers 3

    .prologue
    .line 113
    const-class v1, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;

    monitor-enter v1

    :try_start_3
    sget-boolean v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sIsInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-nez v2, :cond_9

    .line 124
    :goto_7
    monitor-exit v1

    return-void

    .line 117
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 118
    .local v0, dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    if-eqz v0, :cond_15

    .line 119
    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->stop()V

    .line 120
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clearInstance()V

    .line 123
    :cond_15
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sIsInitialized:Z
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 113
    .end local v0           #dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :catchall_19
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static createDataRequestDispatcher(Landroid/content/Context;Ljava/lang/String;)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    .registers 8
    .parameter "context"
    .parameter "appName"

    .prologue
    .line 133
    const-string v1, "http://mobilemaps.clients.google.com/glm/mmap"

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getPlatformID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getDistributionChannel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 144
    .local v0, dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "logging_id2"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setAndroidLoggingId2(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setGzipEnabled(Z)V

    .line 151
    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setAndroidSignature(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setApplicationName(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setScreenPixelDensity(I)V

    .line 157
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setMaxNetworkErrorRetryTimeout(J)V

    .line 159
    return-object v0
.end method

.method public static declared-synchronized getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 54
    const-class v1, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_21

    if-nez v2, :cond_f

    .line 56
    :try_start_7
    invoke-static {p0}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_13

    .line 62
    :cond_f
    :goto_f
    :try_start_f
    sget-object v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_21

    monitor-exit v1

    return-object v2

    .line 57
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15
    sget-object v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sLogTag:Ljava/lang/String;

    const-string v3, "Couldn\'t get the PackageInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const-string v2, "1.5.0"

    sput-object v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    goto :goto_f

    .line 54
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_21
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setupConfigAndDrd(Landroid/content/Context;Ljava/lang/String;Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V
    .registers 6
    .parameter "context"
    .parameter "appName"
    .parameter "listener"

    .prologue
    .line 85
    const-class v1, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;

    monitor-enter v1

    :try_start_3
    sget-boolean v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sIsInitialized:Z

    if-eqz v2, :cond_c

    .line 86
    invoke-static {}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->updateConfig()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    .line 109
    :goto_a
    monitor-exit v1

    return-void

    .line 90
    :cond_c
    :try_start_c
    sput-object p1, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sLogTag:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getInstance()Lcom/google/mobile/googlenav/common/Config;

    move-result-object v2

    if-nez v2, :cond_35

    .line 93
    new-instance v2, Lcom/google/mobile/googlenav/common/Config;

    invoke-direct {v2, p0}, Lcom/google/mobile/googlenav/common/Config;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/mobile/googlenav/common/Config;->setConfig(Lcom/google/mobile/googlenav/common/Config;)V

    .line 99
    :goto_1c
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 100
    .local v0, dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    if-nez v0, :cond_26

    .line 101
    invoke-static {p0, p1}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->createDataRequestDispatcher(Landroid/content/Context;Ljava/lang/String;)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 103
    :cond_26
    if-eqz p2, :cond_2b

    .line 104
    invoke-virtual {v0, p2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequestListener(Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V

    .line 106
    :cond_2b
    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->start()V

    .line 108
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->sIsInitialized:Z
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_32

    goto :goto_a

    .line 85
    .end local v0           #dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :catchall_32
    move-exception v2

    monitor-exit v1

    throw v2

    .line 95
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->updateConfig()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    goto :goto_1c
.end method

.method private static updateConfig()V
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getInstance()Lcom/google/mobile/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 70
    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getInstance()Lcom/google/mobile/googlenav/common/Config;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/Config;->initLocale(Ljava/util/Locale;)V

    .line 72
    :cond_11
    return-void
.end method
