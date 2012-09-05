.class public Lcom/widevine/drm/internal/HTTPDecrypter;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/widevine/drm/internal/HTTPDecrypter;

.field private static b:Lcom/widevine/drm/internal/e;

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/widevine/drm/internal/f;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "WVphoneAPI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_16

    :goto_6
    sput-object v1, Lcom/widevine/drm/internal/HTTPDecrypter;->a:Lcom/widevine/drm/internal/HTTPDecrypter;

    sget-object v0, Lcom/widevine/drm/internal/e;->a:Lcom/widevine/drm/internal/e;

    sput-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->b:Lcom/widevine/drm/internal/e;

    const-string v0, ""

    sput-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z

    sput-object v1, Lcom/widevine/drm/internal/HTTPDecrypter;->f:Landroid/net/ConnectivityManager;

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->e:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/widevine/drm/internal/HTTPDecrypter;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->a:Lcom/widevine/drm/internal/HTTPDecrypter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-direct {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;-><init>()V

    sput-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->a:Lcom/widevine/drm/internal/HTTPDecrypter;

    :cond_b
    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->a:Lcom/widevine/drm/internal/HTTPDecrypter;

    return-object v0
.end method

.method public static a(I)Lcom/widevine/drmapi/android/WVStatus;
    .registers 2

    packed-switch p0, :pswitch_data_60

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensedByRegion:Lcom/widevine/drmapi/android/WVStatus;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyInitialized:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_f
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_12
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_15
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToDrmServer:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_18
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_1b
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->LicenseDenied:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_1e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_21
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->LicenseExpired:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_24
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AssetExpired:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_27
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensedByRegion:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_2a
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->LicenseRequestLimitReached:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_2d
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->BadURL:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_30
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_33
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotRegistered:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_36
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyRegistered:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_39
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotPlaying:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_3c
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_3f
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->FileSystemError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_42
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AssetDBWasCorrupted:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_45
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->ClockTamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_48
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->MandatorySettingAbsent:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_4b
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_4e
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OutOfMemoryError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_51
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_54
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->PendingServerNotification:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_57
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->HardwareIDAbsent:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_5a
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_5d
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->HeartbeatError:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_5

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->f:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static c()Lcom/widevine/drm/internal/e;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->b:Lcom/widevine/drm/internal/e;

    return-object v0
.end method

.method private native cs(Ljava/lang/String;I)I
.end method

.method public static d()V
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private native d(Ljava/nio/ByteBuffer;I)[Ljava/lang/String;
.end method

.method public static e()Lcom/widevine/drm/internal/f;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/widevine/drm/internal/f;

    return-object v0
.end method

.method private native glem()Ljava/lang/String;
.end method

.method private native gms([I)V
.end method

.method public static isOnline()Z
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private native os(Ljava/lang/String;I)I
.end method

.method private native sr([I)I
.end method

.method private native uc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;I)I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/widevine/drm/internal/HTTPDecrypter;->cs(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/widevine/drm/internal/e;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sput-object p1, Lcom/widevine/drm/internal/HTTPDecrypter;->b:Lcom/widevine/drm/internal/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    sput-boolean v0, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z

    sput-object p3, Lcom/widevine/drm/internal/HTTPDecrypter;->c:Ljava/lang/String;

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/widevine/drm/internal/HTTPDecrypter;->os(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(I)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    const/4 v1, 0x0

    sput-boolean v1, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z

    :cond_21
    new-instance v1, Lcom/widevine/drm/internal/ad;

    invoke-direct {p0}, Lcom/widevine/drm/internal/HTTPDecrypter;->glem()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2e
    :try_start_2e
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37

    const/4 v0, 0x0

    sput-boolean v0, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    :cond_37
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p14}, Lcom/widevine/drm/internal/HTTPDecrypter;->uc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(I)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v0, v1, :cond_1a

    new-instance v1, Lcom/widevine/drm/internal/ad;

    invoke-direct {p0}, Lcom/widevine/drm/internal/HTTPDecrypter;->glem()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a([I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/HTTPDecrypter;->gms([I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/nio/ByteBuffer;ILjava/lang/String;)[Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    sget-object v0, Lcom/widevine/drm/internal/HTTPDecrypter;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_3b

    :cond_28
    :goto_28
    monitor-exit p0

    return-object v0

    :cond_2a
    const/4 v0, 0x1

    :try_start_2b
    sput-boolean v0, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z

    :cond_2d
    invoke-direct {p0, p1, p2}, Lcom/widevine/drm/internal/HTTPDecrypter;->d(Ljava/nio/ByteBuffer;I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    sput-boolean v1, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3b

    goto :goto_28

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b([I)I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/HTTPDecrypter;->sr([I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/widevine/drm/internal/HTTPDecrypter;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native gin(I)I
.end method

.method public native ir()Z
.end method

.method public native queryLicense(JJJ)I
.end method

.method public native queryLicense(Ljava/lang/String;)I
.end method

.method public native queryLicenses()I
.end method

.method public native queryRegisteredAsset(Ljava/lang/String;)I
.end method

.method public native queryRegisteredAssets()I
.end method

.method public native refreshLicense(JJJ)I
.end method

.method public native registerAsset(Ljava/lang/String;)I
.end method

.method public native unregisterAsset(Ljava/lang/String;)I
.end method
