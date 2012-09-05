.class public Lcom/google/android/youtube/videos/honeycomb/HoneycombVideosPlatformUtil;
.super Ljava/lang/Object;
.source "HoneycombVideosPlatformUtil.java"

# interfaces
.implements Lcom/google/android/youtube/videos/VideosPlatformUtil;


# instance fields
.field private widevineEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isWidevineEnabled(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    .line 59
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, drmClient:Landroid/drm/DrmManagerClient;
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->getAvailableDrmEngines()[Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, drmEngines:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_c
    if-ge v4, v5, :cond_23

    aget-object v2, v0, v4

    .line 62
    .local v2, drmEngine:Ljava/lang/String;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "widevine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 63
    const/4 v6, 0x1

    .line 66
    .end local v2           #drmEngine:Ljava/lang/String;
    :goto_1f
    return v6

    .line 61
    .restart local v2       #drmEngine:Ljava/lang/String;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 66
    .end local v2           #drmEngine:Ljava/lang/String;
    :cond_23
    const/4 v6, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public getDeveloperKey()[B
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/youtube/videos/honeycomb/K;->DEVELOPER_KEY:[B

    return-object v0
.end method

.method public getDeveloperSecret()[B
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/youtube/videos/honeycomb/K;->DEVELOPER_SECRET:[B

    return-object v0
.end method

.method public getPlusOneDeveloperKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const-string v0, "AIzaSyB2YyVxWTm4Bgi_4d1KMSUK4k4SBhQ1zpM"

    return-object v0
.end method

.method public isFrameworkDrmSupported(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/HoneycombVideosPlatformUtil;->widevineEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/HoneycombVideosPlatformUtil;->isWidevineEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/HoneycombVideosPlatformUtil;->widevineEnabled:Ljava/lang/Boolean;

    .line 55
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/HoneycombVideosPlatformUtil;->widevineEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public newDrmManager(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosApplication;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)Lcom/google/android/youtube/videos/DrmManager;
    .registers 14
    .parameter "context"
    .parameter "videosApplication"
    .parameter "executor"
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"
    .parameter "config"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/HoneycombVideosPlatformUtil;->isFrameworkDrmSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;-><init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosApplication;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)V

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)V

    goto :goto_11
.end method
