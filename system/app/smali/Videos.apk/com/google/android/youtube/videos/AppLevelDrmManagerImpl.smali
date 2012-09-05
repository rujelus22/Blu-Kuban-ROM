.class public Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;
.super Lcom/google/android/youtube/videos/DrmManager;
.source "AppLevelDrmManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$3;,
        Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;,
        Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;
    }
.end annotation


# static fields
.field private static final INITIALIZE_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

.field private static final LICENSE_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

.field private static final QUERY_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

.field private static final REGISTER_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceId:Ljava/lang/String;

.field private final drmListener:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final globalCredentials:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

.field private final pendingResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final requestLock:Ljava/lang/Object;

.field private final requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

.field private final wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [Lcom/widevine/drmapi/android/WVEvent;

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Initialized:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->InitializeFailed:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->INITIALIZE_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    .line 41
    new-array v0, v4, [Lcom/widevine/drmapi/android/WVEvent;

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseReceived:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->LicenseRequestFailed:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->LICENSE_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    .line 43
    new-array v0, v3, [Lcom/widevine/drmapi/android/WVEvent;

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->Registered:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->REGISTER_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    .line 44
    new-array v0, v3, [Lcom/widevine/drmapi/android/WVEvent;

    sget-object v1, Lcom/widevine/drmapi/android/WVEvent;->QueryStatus:Lcom/widevine/drmapi/android/WVEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->QUERY_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)V
    .registers 10
    .parameter "context"
    .parameter "executor"
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"
    .parameter "config"

    .prologue
    .line 64
    invoke-direct {p0, p4}, Lcom/google/android/youtube/videos/DrmManager;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 65
    iput-object p1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestLock:Ljava/lang/Object;

    .line 69
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->deviceId:Ljava/lang/String;

    .line 70
    new-instance v1, Lcom/widevine/drmapi/android/WVPlayback;

    invoke-direct {v1}, Lcom/widevine/drmapi/android/WVPlayback;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    .line 71
    new-instance v1, Lcom/google/android/youtube/videos/DrmRequestSigner;

    invoke-direct {v1, p3}, Lcom/google/android/youtube/videos/DrmRequestSigner;-><init>(Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

    .line 72
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->pendingResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    const-string v2, "WVDRMServer"

    invoke-virtual {p5}, Lcom/google/android/youtube/videos/VideosConfig;->wvDrmServerUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    const-string v2, "WVPortalKey"

    invoke-virtual {p5}, Lcom/google/android/youtube/videos/VideosConfig;->wvPortalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    const-string v2, "WVDeviceIDKey"

    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    const-string v2, "WVAssetRootKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    const-string v2, "WVAssetDBPathKey"

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;-><init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->drmListener:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getLicense(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->logEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->pendingResponseQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Lcom/widevine/drmapi/android/WVPlayback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/widevine/drmapi/android/WVStatus;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->toErrorCode(Lcom/widevine/drmapi/android/WVStatus;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()[Lcom/widevine/drmapi/android/WVEvent;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->REGISTER_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForAssetUri(Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Lcom/widevine/drmapi/android/WVEvent;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->LICENSE_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/DrmManager$Identifiers;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForIdentifiers(Lcom/google/android/youtube/videos/DrmManager$Identifiers;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getError(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v0

    return-object v0
.end method

.method private getError(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;
    .registers 6
    .parameter "response"

    .prologue
    .line 285
    iget-object v2, p1, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->attributes:Ljava/util/HashMap;

    const-string v3, "WVErrorKey"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->parseCgiError(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, cgiError:I
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getDrmError(I)Lcom/google/android/youtube/videos/DrmException$DrmError;

    move-result-object v1

    .line 287
    .local v1, drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    new-instance v2, Lcom/google/android/youtube/videos/DrmException;

    invoke-direct {v2, v1, v0}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    return-object v2
.end method

.method private getLicense(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    .registers 14
    .parameter "assetUri"
    .parameter "ids"

    .prologue
    const/4 v7, 0x0

    .line 141
    invoke-direct {p0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initialize()V

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->isDeviceRooted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    :cond_10
    :goto_10
    return-object v7

    .line 147
    :cond_11
    iget-object v10, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestLock:Ljava/lang/Object;

    monitor-enter v10

    .line 148
    if-eqz p2, :cond_41

    :try_start_16
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-wide v1, p2, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->systemId:J

    iget-wide v3, p2, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->assetId:J

    iget-wide v5, p2, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->keyId:J

    invoke-virtual/range {v0 .. v6}, Lcom/widevine/drmapi/android/WVPlayback;->queryAssetStatus(JJJ)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v9

    .line 151
    .local v9, status:Lcom/widevine/drmapi/android/WVStatus;
    :goto_22
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v9, v0, :cond_48

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widevine queryAssetStatus failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 153
    monitor-exit v10

    goto :goto_10

    .line 157
    .end local v9           #status:Lcom/widevine/drmapi/android/WVStatus;
    :catchall_3e
    move-exception v0

    monitor-exit v10
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_3e

    throw v0

    .line 148
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v0, p1}, Lcom/widevine/drmapi/android/WVPlayback;->queryAssetStatus(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v9

    goto :goto_22

    .line 155
    .restart local v9       #status:Lcom/widevine/drmapi/android/WVStatus;
    :cond_48
    if-eqz p2, :cond_70

    sget-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->QUERY_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForIdentifiers(Lcom/google/android/youtube/videos/DrmManager$Identifiers;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v8

    .line 157
    .local v8, response:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    :goto_50
    monitor-exit v10
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_3e

    .line 159
    iget-object v0, v8, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->attributes:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->parseLicense(Ljava/util/HashMap;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v7

    .line 160
    .local v7, license:Lcom/google/android/youtube/videos/DrmResponse;
    if-nez v7, :cond_10

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No license for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_10

    .line 155
    .end local v7           #license:Lcom/google/android/youtube/videos/DrmResponse;
    .end local v8           #response:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    :cond_70
    :try_start_70
    sget-object v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->QUERY_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForAssetUri(Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_3e

    move-result-object v8

    goto :goto_50
.end method

.method private getRemainingTime(Ljava/util/HashMap;)J
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "WVPlaybackElapsedTimeKey"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 306
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 308
    const-wide/16 v0, -0x1

    .line 313
    :goto_14
    return-wide v0

    .line 310
    :cond_15
    const-string v2, "WVPurchaseDurationRemainingKey"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v2, "WVLicenseDurationRemainingKey"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_14
.end method

.method private getResponse(Ljava/util/Map;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .registers 14
    .parameter
    .parameter "eventTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/widevine/drmapi/android/WVEvent;",
            ")",
            "Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, expectedAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 346
    .local v3, eventSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/widevine/drmapi/android/WVEvent;>;"
    invoke-static {v3, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 347
    const/4 v8, 0x0

    .line 348
    .local v8, next:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    const/4 v7, 0x0

    .line 349
    .local v7, matchedEvent:Z
    :cond_a
    :goto_a
    if-nez v7, :cond_76

    .line 351
    :try_start_c
    iget-object v9, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->pendingResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-object v8, v0

    .line 353
    const/4 v1, 0x1

    .line 354
    .local v1, attributesMatch:Z
    if-eqz p1, :cond_4c

    .line 355
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 356
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 357
    .local v6, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 358
    .local v4, expectedValue:Ljava/lang/Object;
    iget-object v9, v8, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->attributes:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    iget-object v9, v8, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->attributes:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 360
    :cond_4b
    const/4 v1, 0x0

    .line 366
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #expectedValue:Ljava/lang/Object;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    :cond_4c
    if-eqz v1, :cond_74

    iget-object v9, v8, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->event:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    const/4 v7, 0x1

    .line 367
    :goto_57
    if-nez v7, :cond_a

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discarding unexpected event from WV library of type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->event:Lcom/widevine/drmapi/android/WVEvent;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_71} :catch_72

    goto :goto_a

    .line 370
    .end local v1           #attributesMatch:Z
    :catch_72
    move-exception v9

    goto :goto_a

    .line 366
    .restart local v1       #attributesMatch:Z
    :cond_74
    const/4 v7, 0x0

    goto :goto_57

    .line 374
    .end local v1           #attributesMatch:Z
    :cond_76
    return-object v8
.end method

.method private getResponseForAssetUri(Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .registers 5
    .parameter "assetPath"
    .parameter "eventTypes"

    .prologue
    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v0, expectedAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "WVAssetPathKey"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponse(Ljava/util/Map;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v1

    return-object v1
.end method

.method private getResponseForIdentifiers(Lcom/google/android/youtube/videos/DrmManager$Identifiers;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .registers 7
    .parameter "ids"
    .parameter "eventTypes"

    .prologue
    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, expectedAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "WVKeyIDKey"

    iget-wide v2, p1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->keyId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "WVAssetIDKey"

    iget-wide v2, p1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->assetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "WVSystemIDKey"

    iget-wide v2, p1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->systemId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponse(Ljava/util/Map;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v1

    return-object v1
.end method

.method private initialize()V
    .registers 9

    .prologue
    .line 85
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    sget-object v4, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v3, v4, :cond_7

    .line 113
    :cond_6
    :goto_6
    return-void

    .line 91
    :cond_7
    iget-object v4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestLock:Ljava/lang/Object;

    monitor-enter v4

    .line 94
    :try_start_a
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->drmListener:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;

    invoke-virtual {v3, v5, v6, v7}, Lcom/widevine/drmapi/android/WVPlayback;->initialize(Landroid/content/Context;Ljava/util/HashMap;Lcom/widevine/drmapi/android/WVEventListener;)Lcom/widevine/drmapi/android/WVStatus;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_39
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_15} :catch_3c

    move-result-object v2

    .line 100
    .local v2, status:Lcom/widevine/drmapi/android/WVStatus;
    :try_start_16
    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v2, v3, :cond_48

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widevine initialize failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 102
    iput-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    .line 103
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v3}, Lcom/widevine/drmapi/android/WVPlayback;->terminate()Lcom/widevine/drmapi/android/WVStatus;

    .line 104
    monitor-exit v4

    goto :goto_6

    .line 107
    .end local v2           #status:Lcom/widevine/drmapi/android/WVStatus;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_39

    throw v3

    .line 95
    :catch_3c
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :try_start_3d
    const-string v3, "Can\'t load native drm library"

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    iput-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    .line 98
    monitor-exit v4

    goto :goto_6

    .line 106
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    .restart local v2       #status:Lcom/widevine/drmapi/android/WVStatus;
    :cond_48
    const/4 v3, 0x0

    sget-object v5, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->INITIALIZE_EVENT_TYPES:[Lcom/widevine/drmapi/android/WVEvent;

    invoke-direct {p0, v3, v5}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponse(Ljava/util/Map;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v1

    .line 107
    .local v1, response:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_39

    .line 109
    iget-object v3, v1, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->attributes:Ljava/util/HashMap;

    const-string v4, "WVStatusKey"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/widevine/drmapi/android/WVStatus;

    iput-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    .line 110
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    sget-object v4, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v3, v4, :cond_6

    .line 111
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v3}, Lcom/widevine/drmapi/android/WVPlayback;->terminate()Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_6
.end method

.method private logEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V
    .registers 7
    .parameter "eventType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/widevine/drmapi/android/WVEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "===================================="

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/widevine/drmapi/android/WVEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_27

    .line 410
    .end local v1           #key:Ljava/lang/String;
    :cond_52
    const-string v2, "===================================="

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private parseLicense(Ljava/util/HashMap;)Lcom/google/android/youtube/videos/DrmResponse;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/youtube/videos/DrmResponse;"
        }
    .end annotation

    .prologue
    .local p1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 167
    const-string v1, "WVStatusKey"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v1, v3, :cond_11

    move v9, v7

    .line 168
    .local v9, haveLicense:Z
    :goto_d
    if-nez v9, :cond_13

    .line 169
    const/4 v1, 0x0

    .line 183
    :goto_10
    return-object v1

    .end local v9           #haveLicense:Z
    :cond_11
    move v9, v2

    .line 167
    goto :goto_d

    .line 172
    .restart local v9       #haveLicense:Z
    :cond_13
    const-string v1, "WVLicenseTypeKey"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 173
    .local v10, mode:I
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_6c

    move v8, v7

    .line 174
    .local v8, allowsStreaming:Z
    :goto_24
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_6e

    .line 176
    .local v7, allowsOffline:Z
    :goto_28
    const-string v1, "WVPlaybackElapsedTimeKey"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 178
    .local v11, secondsSinceActivation:J
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    const-string v1, "WVKeyIDKey"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "WVAssetIDKey"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "WVSystemIDKey"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmManager$Identifiers;-><init>(JJJ)V

    .line 183
    .local v0, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    new-instance v1, Lcom/google/android/youtube/videos/DrmResponse;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getRemainingTime(Ljava/util/HashMap;)J

    move-result-wide v2

    long-to-int v4, v2

    long-to-int v5, v11

    move v2, v8

    move v3, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/videos/DrmResponse;-><init>(ZZIILcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    goto :goto_10

    .end local v0           #ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    .end local v7           #allowsOffline:Z
    .end local v8           #allowsStreaming:Z
    .end local v11           #secondsSinceActivation:J
    :cond_6c
    move v8, v2

    .line 173
    goto :goto_24

    .restart local v8       #allowsStreaming:Z
    :cond_6e
    move v7, v2

    .line 174
    goto :goto_28
.end method

.method private toErrorCode(Lcom/widevine/drmapi/android/WVStatus;)I
    .registers 3
    .parameter "status"

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/widevine/drmapi/android/WVStatus;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x384

    return v0
.end method


# virtual methods
.method public getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, assetUri:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestLock:Ljava/lang/Object;

    monitor-enter v3

    .line 295
    :try_start_b
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v2, v0}, Lcom/widevine/drmapi/android/WVPlayback;->play(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, decryptedUri:Ljava/lang/String;
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    :goto_19
    return-object v2

    .line 300
    .end local v1           #decryptedUri:Ljava/lang/String;
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    .line 301
    .restart local v1       #decryptedUri:Ljava/lang/String;
    :cond_1d
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_19
.end method

.method public isDeviceRooted()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v0}, Lcom/widevine/drmapi/android/WVPlayback;->isRooted()Z

    move-result v0

    return v0
.end method

.method protected requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;-><init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method protected requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 12
    .parameter "request"
    .parameter "existingLicense"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p3, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initialize()V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->isDeviceRooted()Z

    move-result v3

    .line 193
    .local v3, isDeviceRooted:Z
    iget-object v5, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    sget-object v6, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v5, v6, :cond_f

    if-eqz v3, :cond_25

    .line 194
    :cond_f
    if-eqz v3, :cond_22

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->ROOTED_DEVICE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 195
    .local v1, drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    :goto_13
    new-instance v5, Lcom/google/android/youtube/videos/DrmException;

    iget-object v6, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->initializationStatus:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->toErrorCode(Lcom/widevine/drmapi/android/WVStatus;)I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    invoke-interface {p3, p1, v5}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 282
    .end local v1           #drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    :goto_21
    return-void

    .line 194
    :cond_22
    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    goto :goto_13

    .line 199
    :cond_25
    new-instance v0, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->globalCredentials:Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 200
    .local v0, credentials:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "WVLicenseTypeKey"

    iget-object v5, p1, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    iget-boolean v5, v5, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->isOffline:Z

    if-eqz v5, :cond_de

    const/4 v5, 0x3

    :goto_35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v5, p1, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    if-eqz v5, :cond_47

    .line 203
    const-string v5, "WVStreamIDKey"

    iget-object v6, p1, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&clientauth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, userData:Ljava/lang/String;
    if-eqz p2, :cond_91

    iget v5, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    if-lez v5, :cond_91

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&time_since_started="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    :cond_91
    iget-object v5, p1, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v6, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-ne v5, v6, :cond_c9

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&unpin=true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    :try_start_aa
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

    iget-object v7, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/google/android/youtube/videos/DrmRequestSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_c8} :catch_e1

    move-result-object v4

    .line 220
    :cond_c9
    const-string v5, "WVCAUserDataKey"

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v5, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;

    invoke-direct {v6, p0, v0, p3, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;-><init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/util/HashMap;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/videos/DrmRequest;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_21

    .line 200
    .end local v4           #userData:Ljava/lang/String;
    :cond_de
    const/4 v5, 0x1

    goto/16 :goto_35

    .line 214
    .restart local v4       #userData:Ljava/lang/String;
    :catch_e1
    move-exception v2

    .line 215
    .local v2, e:Ljava/io/IOException;
    invoke-interface {p3, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_21
.end method
