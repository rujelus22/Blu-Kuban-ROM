.class public Lcom/google/android/location/os/real/K;
.super Ljava/lang/Object;

# interfaces
.implements Li/E;
.implements Ll/a;


# static fields
.field private static final k:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Li/f;

.field private final c:Lcom/google/android/location/os/real/u;

.field private final d:Lcom/google/android/location/os/real/L;

.field private final e:Z

.field private final f:Landroid/app/AlarmManager;

.field private final g:[Landroid/app/PendingIntent;

.field private final h:Lcom/google/android/location/os/real/C;

.field private final i:Lj/a;

.field private final j:Li/C;

.field private final l:[Landroid/os/PowerManager$WakeLock;

.field private m:[Z

.field private n:[Landroid/net/wifi/WifiManager$WifiLock;

.field private final o:Landroid/net/wifi/WifiManager;

.field private final p:Landroid/hardware/SensorManager;

.field private final q:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NetworkLocationLocator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NetworkLocationActiveCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NetworkLocationBurstCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NetworkLocationPassiveCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NetworkLocationCacheUpdater"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NetworkLocationCalibrationCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NetworkLocationSCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NetworkLocationSensorUploader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/os/real/K;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li/f;Lcom/google/android/location/os/real/L;Z)V
    .registers 14

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    new-array v0, v6, [Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->l:[Landroid/os/PowerManager$WakeLock;

    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->m:[Z

    new-array v0, v6, [Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->n:[Landroid/net/wifi/WifiManager$WifiLock;

    iput-object p1, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    iput-object p3, p0, Lcom/google/android/location/os/real/K;->d:Lcom/google/android/location/os/real/L;

    iput-boolean p4, p0, Lcom/google/android/location/os/real/K;->e:Z

    new-instance v0, Li/C;

    invoke-direct {v0, p0, p0, p0}, Li/C;-><init>(Li/c;Li/A;Ll/a;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->j:Li/C;

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->j:Li/C;

    invoke-virtual {v0}, Li/C;->a()V

    new-instance v0, Lcom/google/android/location/os/real/u;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->j:Li/C;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/location/os/real/u;-><init>(Landroid/content/Context;Li/C;Li/f;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->f:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.location.ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.location.ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    const/4 v1, 0x3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    const/4 v1, 0x4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.ALARM_WAKEUP_CACHE_UPDATER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    const/4 v1, 0x5

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.ALARM_WAKEUP_CALIBRATION_COLLECTOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    const/4 v1, 0x6

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.ALARM_WAKEUP_S_COLLECTOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    const/4 v1, 0x7

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.ALARM_WAKEUP_SENSOR_UPLOADER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v0, v1

    new-instance v0, Lj/a;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->j:Li/C;

    invoke-direct {v0, p0, v1}, Lj/a;-><init>(Li/E;Li/C;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->i:Lj/a;

    new-instance v0, Lcom/google/android/location/os/real/C;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->j:Li/C;

    iget-object v3, p0, Lcom/google/android/location/os/real/K;->i:Lj/a;

    iget-object v4, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/google/android/location/os/real/C;-><init>(Landroid/content/Context;Li/C;Lj/a;Lcom/google/android/location/os/real/u;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->h:Lcom/google/android/location/os/real/C;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/google/android/location/os/real/K;->o:Landroid/net/wifi/WifiManager;

    move v1, v2

    :goto_e5
    if-ge v1, v6, :cond_112

    iget-object v3, p0, Lcom/google/android/location/os/real/K;->l:[Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/google/android/location/os/real/K;->k:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/google/android/location/os/real/K;->l:[Landroid/os/PowerManager$WakeLock;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v3, p0, Lcom/google/android/location/os/real/K;->n:[Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v4, p0, Lcom/google/android/location/os/real/K;->o:Landroid/net/wifi/WifiManager;

    sget-object v5, Lcom/google/android/location/os/real/K;->k:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v8, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/google/android/location/os/real/K;->n:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_112
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->p:Landroid/hardware/SensorManager;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/K;->q:Landroid/location/LocationManager;

    return-void
.end method

.method public static A()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/os/real/K;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {p0}, Lcom/google/android/location/os/real/K;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_1b

    :goto_e
    :try_start_e
    invoke-static {p0}, Lcom/google/android/location/os/real/K;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ll/b;->a(Ljava/io/File;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_19

    :goto_15
    invoke-static {}, Lcom/google/android/location/os/real/C;->a()V

    return-void

    :catch_19
    move-exception v0

    goto :goto_15

    :catch_1b
    move-exception v0

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    const-string v0, "cache.cell"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "cache.wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "gls.platform.key"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "nlp_GlsPlatformKey"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "nlp_state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/location/os/real/K;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_24
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_27} :catch_38

    move-result v0

    :goto_28
    if-eqz v0, :cond_32

    invoke-static {}, Lcom/google/android/location/os/real/N;->a()Lcom/google/android/location/os/real/N;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/N;->a(Ljava/io/File;)V

    :goto_31
    return-void

    :cond_32
    const-string v0, "nlp_state"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_31

    :catch_38
    move-exception v1

    goto :goto_28
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_s"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljavax/crypto/SecretKey;
    .registers 13

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    sget-boolean v0, Lcom/google/android/location/os/real/C;->a:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    :goto_19
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no android ID; can\'t access encrypted cache"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const-wide/16 v0, 0x1

    goto :goto_19

    :cond_2a
    const/16 v2, 0x20

    new-array v2, v2, [B

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    const/4 v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    ushr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xc

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xd

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xe

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    ushr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    const/16 v3, 0x11

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    ushr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    const/16 v3, 0x19

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1c

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1d

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1e

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1f

    ushr-long/2addr v0, v8

    and-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/location/os/real/K;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_devices"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static y()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static z()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->w:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ld/r;Ljava/lang/String;)Ld/I;
    .registers 15

    const/4 v10, 0x0

    invoke-static {}, Lcom/google/android/location/os/real/C;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v0, v10

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ld/h;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/location/os/real/K;->j()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v2}, Lcom/google/android/location/os/real/u;->c()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    new-instance v9, Lm/c;

    invoke-static {}, Lm/a;->a()Lm/b;

    move-result-object v2

    invoke-direct {v9, p3, v2}, Lm/c;-><init>(Ljava/lang/String;Lm/b;)V

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Ld/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLd/r;Landroid/os/Looper;Lm/c;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_30

    goto :goto_8

    :catch_30
    move-exception v0

    move-object v0, v10

    goto :goto_8
.end method

.method public a(Ljava/util/Set;Ljava/util/Map;JLd/x;Ljava/lang/String;Ljava/lang/Integer;LW/a;Ld/C;Ljava/lang/String;)Ld/J;
    .registers 21

    new-instance v9, Lcom/google/android/location/os/real/b;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/u;->c()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    move-object/from16 v0, p9

    invoke-direct {v9, v1, v0, v2}, Lcom/google/android/location/os/real/b;-><init>(Landroid/os/Handler;Ld/C;Landroid/content/Context;)V

    if-eqz p6, :cond_52

    :try_start_11
    new-instance v1, Ld/Z;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/location/os/real/K;->j()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    move-object v2, p1

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Ld/Z;-><init>(Ljava/util/Set;JLd/x;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_4f

    move-object v3, v1

    :goto_25
    if-eqz p2, :cond_58

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/an;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v2, v1}, Ld/w;->a(Ld/an;I)V

    goto :goto_2f

    :catch_4f
    move-exception v1

    const/4 v1, 0x0

    :goto_51
    return-object v1

    :cond_52
    new-instance v3, Ld/Z;

    invoke-direct {v3, p1, p3, p4, p5}, Ld/Z;-><init>(Ljava/util/Set;JLd/x;)V

    goto :goto_25

    :cond_58
    new-instance v1, Ld/ar;

    iget-object v2, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    new-instance v7, Lm/c;

    invoke-static {}, Lm/a;->a()Lm/b;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-direct {v7, v0, v4}, Lm/c;-><init>(Ljava/lang/String;Lm/b;)V

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Ld/ar;-><init>(Landroid/content/Context;Ld/w;Ljava/lang/Integer;LW/a;Ld/C;Lm/c;)V

    goto :goto_51
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->u:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->f:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(IJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    invoke-virtual {v0, p1, p2, p3}, Li/f;->a(IJ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->f:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/os/real/K;->g:[Landroid/app/PendingIntent;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/u;->a(IZ)V

    return-void
.end method

.method public a(LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->B:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->h:Lcom/google/android/location/os/real/C;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/C;->a(LW/a;)V

    return-void
.end method

.method public a(LW/a;LW/a;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->z:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->h:Lcom/google/android/location/os/real/C;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/C;->a(LW/a;LW/a;)V

    return-void
.end method

.method public a(Le/u;Le/G;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    invoke-virtual {v0, p1}, Li/f;->a(Le/u;)V

    if-eqz p1, :cond_19

    iget-object v0, p1, Le/u;->a:Le/n;

    if-eqz v0, :cond_19

    iget-object v0, p1, Le/u;->a:Le/n;

    iget-object v0, v0, Le/n;->c:Le/x;

    if-eqz v0, :cond_19

    iget-object v0, p1, Le/u;->a:Le/n;

    iget-object v0, v0, Le/n;->d:Le/p;

    sget-object v1, Le/p;->a:Le/p;

    if-eq v0, v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/location/os/real/K;->d:Lcom/google/android/location/os/real/L;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/real/L;->a(Le/u;Le/G;)V

    goto :goto_19
.end method

.method public a(Li/C;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/u;->a(Li/C;)V

    :cond_9
    return-void
.end method

.method public a(Li/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/u;->a(Li/a;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    iget-boolean v1, p0, Lcom/google/android/location/os/real/K;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/u;->b(Z)V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->D:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    invoke-static {}, Lcom/google/android/location/os/real/N;->a()Lcom/google/android/location/os/real/N;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/N;->a(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Li/C;

    invoke-virtual {p0, p1}, Lcom/google/android/location/os/real/K;->a(Li/C;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    invoke-virtual {v0, p1}, Li/f;->e(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/u;->c(Z)V

    return-void
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->x:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    invoke-static {}, Lcom/google/android/location/os/real/K;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    invoke-virtual {v0, p1}, Li/f;->c(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->m:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already acquired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lcom/google/android/location/os/real/K;->m:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->l:[Landroid/os/PowerManager$WakeLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->n:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public b(LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->y:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->h:Lcom/google/android/location/os/real/C;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/C;->b(LW/a;)V

    return-void
.end method

.method public b(LW/a;LW/a;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->A:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->h:Lcom/google/android/location/os/real/C;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/C;->b(LW/a;LW/a;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/u;->a(Z)V

    return-void
.end method

.method public c()J
    .registers 3

    invoke-static {}, Lcom/google/android/location/os/real/K;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    invoke-virtual {v0, p1}, Li/f;->d(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->m:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lcom/google/android/location/os/real/K;->n:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->m:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->l:[Landroid/os/PowerManager$WakeLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/u;->b(Z)V

    return-void
.end method

.method public d()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->C:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->E:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->F:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/K;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->G:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->H:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->v:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/u;->b()V

    return-void
.end method

.method public j()Ljavax/crypto/SecretKey;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->I:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/K;->d(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljavax/crypto/SecretKey;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/os/real/K;->j()Ljavax/crypto/SecretKey;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public l()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_b
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_10} :catch_15

    move-result v0

    :goto_11
    return v0

    :catch_12
    move-exception v0

    move v0, v1

    goto :goto_11

    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_11
.end method

.method public m()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->b:Li/f;

    sget-object v1, Li/d;->P:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->o:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method public n()Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public o()Li/B;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->d:Lcom/google/android/location/os/real/L;

    invoke-interface {v0}, Lcom/google/android/location/os/real/L;->d()Li/B;

    move-result-object v0

    return-object v0
.end method

.method public p()Li/F;
    .registers 4

    new-instance v0, Li/F;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Li/F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->p:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->q:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/O;->a(Landroid/hardware/SensorManager;Landroid/location/LocationManager;)Z

    move-result v0

    return v0
.end method

.method public t()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/K;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->o:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    return v0
.end method

.method public v()Lj/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->i:Lj/a;

    return-object v0
.end method

.method public w()Li/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/K;->j:Li/C;

    return-object v0
.end method

.method public x()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->c:Lcom/google/android/location/os/real/u;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/u;->a()V

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/K;->a(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/real/K;->a(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/real/K;->a(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/real/K;->a(I)V

    :goto_15
    const/16 v1, 0x8

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/android/location/os/real/K;->m:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_22

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/K;->c(I)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    return-void
.end method
