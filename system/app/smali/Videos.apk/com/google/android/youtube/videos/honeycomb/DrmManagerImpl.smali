.class public Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;
.super Lcom/google/android/youtube/videos/DrmManager;
.source "DrmManagerImpl.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;
.implements Landroid/drm/DrmManagerClient$OnEventListener;
.implements Landroid/drm/DrmManagerClient$OnInfoListener;
.implements Lcom/google/android/youtube/videos/DrmManager$Listener;


# instance fields
.field private final config:Lcom/google/android/youtube/videos/VideosConfig;

.field private final context:Landroid/content/Context;

.field private final deviceId:Ljava/lang/String;

.field private final drmManager:Landroid/drm/DrmManagerClient;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final legacyDrmManager:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

.field private final requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

.field private final videosApplication:Lcom/google/android/youtube/videos/VideosApplication;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosApplication;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)V
    .registers 14
    .parameter "context"
    .parameter "videosApplication"
    .parameter "executor"
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"
    .parameter "config"

    .prologue
    .line 70
    invoke-direct {p0, p5}, Lcom/google/android/youtube/videos/DrmManager;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 71
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->videosApplication:Lcom/google/android/youtube/videos/VideosApplication;

    .line 73
    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 74
    new-instance v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->legacyDrmManager:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->legacyDrmManager:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->setListener(Lcom/google/android/youtube/videos/DrmManager$Listener;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 78
    .local v6, contentResolver:Landroid/content/ContentResolver;
    const-string v0, "android_id"

    invoke-static {v6, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->deviceId:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->config:Lcom/google/android/youtube/videos/VideosConfig;

    .line 81
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequestSigner;

    invoke-direct {v0, p4}, Lcom/google/android/youtube/videos/DrmRequestSigner;-><init>(Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

    .line 82
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->shouldRefreshLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getError(Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v0

    return-object v0
.end method

.method private eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;
    .registers 3
    .parameter "event"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_34

    .line 348
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 332
    :sswitch_9
    const-string v0, "ALL_RIGHTS_REMOVED"

    goto :goto_8

    .line 333
    :sswitch_c
    const-string v0, "DRM_INFO_PROCESSED"

    goto :goto_8

    .line 334
    :sswitch_f
    const-string v0, "ACCOUNT_ALREADY_REGISTERED"

    goto :goto_8

    .line 336
    :sswitch_12
    const-string v0, "ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT"

    goto :goto_8

    .line 337
    :sswitch_15
    const-string v0, "REMOVE_RIGHTS"

    goto :goto_8

    .line 338
    :sswitch_18
    const-string v0, "RIGHTS_INSTALLED"

    goto :goto_8

    .line 339
    :sswitch_1b
    const-string v0, "WAIT_FOR_RIGHTS"

    goto :goto_8

    .line 340
    :sswitch_1e
    const-string v0, "NO_INTERNET_CONNECTION"

    goto :goto_8

    .line 341
    :sswitch_21
    const-string v0, "NOT_SUPPORTED"

    goto :goto_8

    .line 342
    :sswitch_24
    const-string v0, "OUT_OF_MEMORY"

    goto :goto_8

    .line 343
    :sswitch_27
    const-string v0, "PROCESS_DRM_INFO_FAILED"

    goto :goto_8

    .line 344
    :sswitch_2a
    const-string v0, "REMOVE_ALL_RIGHTS_FAILED"

    goto :goto_8

    .line 345
    :sswitch_2d
    const-string v0, "RIGHTS_NOT_INSTALLED"

    goto :goto_8

    .line 346
    :sswitch_30
    const-string v0, "RIGHTS_RENEWAL_NOT_ALLOWED"

    goto :goto_8

    .line 331
    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_15
        0x3 -> :sswitch_18
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_f
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_c
        0x7d1 -> :sswitch_2d
        0x7d2 -> :sswitch_30
        0x7d3 -> :sswitch_21
        0x7d4 -> :sswitch_24
        0x7d5 -> :sswitch_1e
        0x7d6 -> :sswitch_27
        0x7d7 -> :sswitch_2a
    .end sparse-switch
.end method

.method private getError(Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;
    .registers 8
    .parameter "stream"

    .prologue
    .line 150
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 153
    .local v1, constraints:Landroid/content/ContentValues;
    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 154
    .local v2, drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    const/4 v0, 0x0

    .line 156
    .local v0, cgiError:I
    if-nez v1, :cond_1c

    .line 157
    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 165
    :goto_16
    new-instance v3, Lcom/google/android/youtube/videos/DrmException;

    invoke-direct {v3, v2, v0}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    return-object v3

    .line 158
    :cond_1c
    const-string v3, "WVLicenseTypeKey"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getRemainingTime(Landroid/content/ContentValues;)I

    move-result v3

    if-nez v3, :cond_2d

    .line 160
    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_EXPIRED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    goto :goto_16

    .line 162
    :cond_2d
    const-string v3, "WVLastErrorKey"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->parseCgiError(Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getDrmError(I)Lcom/google/android/youtube/videos/DrmException$DrmError;

    move-result-object v2

    goto :goto_16
.end method

.method private getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    .registers 11
    .parameter "stream"
    .parameter "ids"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 131
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v6

    .line 133
    .local v6, constraints:Landroid/content/ContentValues;
    if-eqz v6, :cond_1a

    const-string v3, "WVLicenseTypeKey"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 134
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No license for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    .line 145
    :goto_31
    return-object v0

    .line 138
    :cond_32
    const-string v3, "WVLicenseTypeKey"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 139
    .local v7, mode:I
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_5a

    move v1, v2

    .line 140
    .local v1, allowsStreaming:Z
    :goto_41
    and-int/lit8 v3, v7, 0x2

    if-eqz v3, :cond_5c

    .line 142
    .local v2, allowsOffline:Z
    :goto_45
    const-string v0, "license_start_time"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 145
    .local v4, secondsSinceActivation:I
    new-instance v0, Lcom/google/android/youtube/videos/DrmResponse;

    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getRemainingTime(Landroid/content/ContentValues;)I

    move-result v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/DrmResponse;-><init>(ZZIILcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    goto :goto_31

    .end local v1           #allowsStreaming:Z
    .end local v2           #allowsOffline:Z
    .end local v4           #secondsSinceActivation:I
    :cond_5a
    move v1, v0

    .line 139
    goto :goto_41

    .restart local v1       #allowsStreaming:Z
    :cond_5c
    move v2, v0

    .line 140
    goto :goto_45
.end method

.method private getRemainingTime(Landroid/content/ContentValues;)I
    .registers 4
    .parameter "constraints"

    .prologue
    .line 169
    const-string v1, "license_start_time"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, time:I
    if-nez v0, :cond_e

    .line 172
    const/4 v0, -0x1

    .line 176
    :goto_d
    return v0

    .line 174
    :cond_e
    const-string v1, "license_expiry_time"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d
.end method

.method private invokePendingCallback(Landroid/drm/DrmInfo;)V
    .registers 10
    .parameter "drmInfo"

    .prologue
    .line 280
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    const-string v1, "WVKeyIDKey"

    invoke-virtual {p1, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v4, "WVAssetIDKey"

    invoke-virtual {p1, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v7, "WVSystemIDKey"

    invoke-virtual {p1, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/DrmManager$Identifiers;-><init>(JJJ)V

    .line 285
    .local v0, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    const-string v1, "VideosRequest"

    invoke-virtual {p1, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/videos/DrmRequest;

    .line 287
    .local v5, request:Lcom/google/android/youtube/videos/DrmRequest;
    const-string v1, "VideosCallback"

    invoke-virtual {p1, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/async/Callback;

    .line 290
    .local v6, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    if-eqz v5, :cond_3d

    if-nez v6, :cond_54

    .line 291
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request or callback missing from DrmEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 320
    :goto_53
    return-void

    .line 295
    :cond_54
    iget-object v1, v5, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 296
    .local v3, assetUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;-><init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v7, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_53
.end method

.method private logDrmInfoRequest(Landroid/drm/DrmInfoRequest;)V
    .registers 6
    .parameter "drmRequest"

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "infoType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->getInfoType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/drm/DrmInfoRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    goto :goto_2c

    .line 328
    .end local v1           #key:Ljava/lang/String;
    :cond_57
    return-void
.end method

.method private shouldRefreshLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)Z
    .registers 6
    .parameter "request"
    .parameter "existingLicense"

    .prologue
    .line 250
    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 251
    .local v0, assetUri:Landroid/net/Uri;
    if-eqz p2, :cond_1c

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v2, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->videosApplication:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->isAppLevelDrmEncrypted(Lcom/google/android/youtube/videos/VideosApplication;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->legacyDrmManager:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 101
    .end local p1
    :cond_18
    return-object p1
.end method

.method public isDeviceRooted()Z
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .registers 6
    .parameter "client"
    .parameter "event"

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRM error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getUniqueId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 271
    const-string v1, "drm_info_object"

    invoke-virtual {p2, v1}, Landroid/drm/DrmErrorEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmInfo;

    .line 272
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v0, :cond_44

    .line 273
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmInfo;)V

    .line 277
    :goto_43
    return-void

    .line 275
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfo missing from DrmEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_43
.end method

.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .registers 6
    .parameter "client"
    .parameter "event"

    .prologue
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRM event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getUniqueId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 257
    const-string v1, "drm_info_object"

    invoke-virtual {p2, v1}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmInfo;

    .line 258
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v0, :cond_44

    .line 259
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmInfo;)V

    .line 263
    :goto_43
    return-void

    .line 261
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfo missing from DrmEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_43
.end method

.method public onHeartbeatError(Ljava/lang/String;I)V
    .registers 3
    .parameter "assetPathKey"
    .parameter "cgiError"

    .prologue
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->notifyHeartbeatError(Ljava/lang/String;I)V

    .line 354
    return-void
.end method

.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .registers 5
    .parameter "client"
    .parameter "event"

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRM info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->eventType(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getUniqueId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V
    .registers 3
    .parameter "assetPathKey"
    .parameter "reason"

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->notifyPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V

    .line 359
    return-void
.end method

.method public request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
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
    .line 106
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->videosApplication:Lcom/google/android/youtube/videos/VideosApplication;

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->isAppLevelDrmEncrypted(Lcom/google/android/youtube/videos/VideosApplication;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->legacyDrmManager:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 113
    :goto_1b
    return-void

    .line 112
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_1b
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
    .line 118
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;-><init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method protected requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 13
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
    .line 182
    .local p3, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v0, 0x3

    const-string v1, "video/wvm"

    invoke-direct {v2, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 185
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v0, "WVPortalKey"

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosConfig;->wvPortalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string v0, "WVDRMServerKey"

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosConfig;->wvDrmServerUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v0, "WVAssetURIKey"

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string v0, "WVDeviceIDKey"

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v1, "WVLicenseTypeKey"

    iget-object v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    iget-boolean v0, v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->isOffline:Z

    if-eqz v0, :cond_116

    const-string v0, "3"

    :goto_40
    invoke-virtual {v2, v1, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    if-eqz v0, :cond_6e

    .line 192
    const-string v0, "WVKeyIDKey"

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iget-wide v3, v1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->keyId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v0, "WVAssetIDKey"

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iget-wide v3, v1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->assetId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v0, "WVSystemIDKey"

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iget-wide v3, v1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->systemId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_6e
    iget-object v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    if-eqz v0, :cond_79

    .line 198
    const-string v0, "WVStreamIDKey"

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&clientauth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, userData:Ljava/lang/String;
    if-eqz p2, :cond_c3

    iget v0, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    if-lez v0, :cond_c3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&time_since_started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 205
    :cond_c3
    iget-object v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-ne v0, v1, :cond_fb

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&unpin=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 208
    :try_start_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestSigner:Lcom/google/android/youtube/videos/DrmRequestSigner;

    iget-object v3, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Lcom/google/android/youtube/videos/DrmRequestSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_fa} :catch_11a

    move-result-object v7

    .line 215
    :cond_fb
    const-string v0, "WVCAUserDataKey"

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->logDrmInfoRequest(Landroid/drm/DrmInfoRequest;)V

    .line 219
    iget-object v8, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;-><init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfoRequest;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/videos/DrmResponse;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    :goto_115
    return-void

    .line 189
    .end local v7           #userData:Ljava/lang/String;
    :cond_116
    const-string v0, "1"

    goto/16 :goto_40

    .line 209
    .restart local v7       #userData:Ljava/lang/String;
    :catch_11a
    move-exception v6

    .line 210
    .local v6, e:Ljava/io/IOException;
    invoke-interface {p3, p1, v6}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_115
.end method
