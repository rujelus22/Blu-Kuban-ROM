.class public Lcom/google/android/apps/unveil/env/InfoProvider;
.super Ljava/lang/Object;
.source "InfoProvider.java"


# static fields
.field private static clientVersion:Ljava/lang/String;

.field private static deviceInfo:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getClientVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    .line 32
    const-class v2, Lcom/google/android/apps/unveil/env/InfoProvider;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/google/android/apps/unveil/env/InfoProvider;->clientVersion:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v1, :cond_18

    .line 35
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/google/android/apps/unveil/env/InfoProvider;->clientVersion:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_18} :catch_1c

    .line 41
    :cond_18
    :try_start_18
    sget-object v1, Lcom/google/android/apps/unveil/env/InfoProvider;->clientVersion:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_23

    monitor-exit v2

    return-object v1

    .line 37
    :catch_1c
    move-exception v0

    .line 38
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_23

    .line 32
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3

    .prologue
    .line 21
    const-class v1, Lcom/google/android/apps/unveil/env/InfoProvider;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/unveil/env/InfoProvider;->deviceInfo:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    if-nez v0, :cond_23

    .line 22
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->setPlatform(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->setBuildVersion(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->setModel(Ljava/lang/String;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->build()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/env/InfoProvider;->deviceInfo:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 28
    :cond_23
    sget-object v0, Lcom/google/android/apps/unveil/env/InfoProvider;->deviceInfo:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method
