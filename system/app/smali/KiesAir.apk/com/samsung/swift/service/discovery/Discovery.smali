.class public Lcom/samsung/swift/service/discovery/Discovery;
.super Ljava/lang/Object;
.source "Discovery.java"


# static fields
.field public static final ERROR:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final NOT_RUNNING:I = 0x0

.field public static final RUNNING:I = 0x2

.field public static final STARTING:I = 0x1

.field public static final STOPPED:I = 0x4

.field public static final STOPPING:I = 0x3

.field private static final deviceName:Ljava/lang/String; = "devicenamepref"

.field private static instance:Lcom/samsung/swift/service/discovery/Discovery;


# instance fields
.field private final connectionInfoReceiver:Landroid/content/BroadcastReceiver;

.field private isStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/discovery/Discovery;->instance:Lcom/samsung/swift/service/discovery/Discovery;

    .line 106
    const-class v0, Lcom/samsung/swift/service/discovery/Discovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/swift/service/discovery/Discovery;->isStarted:Z

    .line 197
    new-instance v1, Lcom/samsung/swift/service/discovery/Discovery$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/service/discovery/Discovery$1;-><init>(Lcom/samsung/swift/service/discovery/Discovery;)V

    iput-object v1, p0, Lcom/samsung/swift/service/discovery/Discovery;->connectionInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    :try_start_d
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 178
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "libdiscoveryserver.so"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v2, "Discovery created"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_29

    .line 193
    :goto_28
    return-void

    .line 181
    :catch_29
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    if-nez v1, :cond_54

    .line 185
    sget-object v1, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v2, "SwiftService.instance() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_37
    :goto_37
    sget-object v1, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discovery instance failed. Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 187
    :cond_54
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    const-string v2, "libdiscoveryserver.so"

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/SwiftService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_37

    .line 189
    sget-object v1, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v2, "cannot find libdiscoveryserver.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/service/discovery/Discovery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/samsung/swift/service/discovery/Discovery;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/service/discovery/Discovery;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/samsung/swift/service/discovery/Discovery;->update()Z

    move-result v0

    return v0
.end method

.method private native destroy()V
.end method

.method public static getInstance()Lcom/samsung/swift/service/discovery/Discovery;
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/samsung/swift/service/discovery/Discovery;->instance:Lcom/samsung/swift/service/discovery/Discovery;

    if-nez v0, :cond_12

    .line 125
    sget-object v0, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v1, "Discovery getInstance, creating plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/samsung/swift/service/discovery/Discovery;

    invoke-direct {v0}, Lcom/samsung/swift/service/discovery/Discovery;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/discovery/Discovery;->instance:Lcom/samsung/swift/service/discovery/Discovery;

    .line 128
    :cond_12
    sget-object v0, Lcom/samsung/swift/service/discovery/Discovery;->instance:Lcom/samsung/swift/service/discovery/Discovery;

    return-object v0
.end method

.method private native getState()I
.end method

.method private native setApplicationName(Ljava/lang/String;)V
.end method

.method private native setDeviceDescription(Ljava/lang/String;)V
.end method

.method private native setManufacturer(Ljava/lang/String;)V
.end method

.method private native setModelName(Ljava/lang/String;)V
.end method

.method private native setModelNumber(Ljava/lang/String;)V
.end method

.method private native setUserFriendlyName(Ljava/lang/String;)V
.end method

.method private native start()Z
.end method

.method private native stop()Z
.end method

.method private native update()Z
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/swift/service/discovery/Discovery;->stopService()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/swift/service/discovery/Discovery;->destroy()V

    .line 141
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    return-void
.end method

.method public declared-synchronized isServiceStarted()Z
    .registers 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/swift/service/discovery/Discovery;->isStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startService()V
    .registers 5

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v2, "Discovery startService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/service/discovery/Discovery;->connectionInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/swift/service/SwiftService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/swift/service/discovery/Discovery;->isStarted:Z

    .line 152
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/discovery/Discovery;->setManufacturer(Ljava/lang/String;)V

    .line 153
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/discovery/Discovery;->setModelName(Ljava/lang/String;)V

    .line 154
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/discovery/Discovery;->setModelNumber(Ljava/lang/String;)V

    .line 155
    const-string v1, "appName"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/discovery/Discovery;->setApplicationName(Ljava/lang/String;)V

    .line 156
    const-string v1, "server_app_description"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/discovery/Discovery;->setDeviceDescription(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "devicenamepref"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/discovery/Discovery;->setUserFriendlyName(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/samsung/swift/service/discovery/Discovery;->start()Z

    .line 159
    sget-object v1, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v2, "Discovery startService -- Done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5f

    .line 160
    monitor-exit p0

    return-void

    .line 146
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_5f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopService()V
    .registers 3

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/swift/service/discovery/Discovery;->isStarted:Z

    if-eqz v0, :cond_e

    .line 165
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/discovery/Discovery;->connectionInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/SwiftService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/service/discovery/Discovery;->isStarted:Z

    .line 168
    sget-object v0, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v1, "Discovery stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/samsung/swift/service/discovery/Discovery;->stop()Z

    .line 170
    sget-object v0, Lcom/samsung/swift/service/discovery/Discovery;->LOGTAG:Ljava/lang/String;

    const-string v1, "Discovery stopService -- Done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 171
    monitor-exit p0

    return-void

    .line 163
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
