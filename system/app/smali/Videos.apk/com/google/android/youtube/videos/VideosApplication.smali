.class public Lcom/google/android/youtube/videos/VideosApplication;
.super Lcom/google/android/youtube/core/BaseApplication;
.source "VideosApplication.java"


# static fields
.field private static final EARLIEST_PERMITTED_DATE:Ljava/util/Date;


# instance fields
.field private analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

.field private config:Lcom/google/android/youtube/videos/VideosConfig;

.field private countryCode:Ljava/lang/String;

.field private drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private legacyDownloadsHaveAppLevelDrm:Z

.field private mobileDownloadsEnabled:Z

.field private mobileStreamingEnabled:Z

.field private offlineSubtitles:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

.field private platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

.field private plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

.field private purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field private requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

.field private statsClient:Lcom/google/android/youtube/core/client/DefaultStatsClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 45
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x6f

    const/16 v2, 0xb

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    sput-object v0, Lcom/google/android/youtube/videos/VideosApplication;->EARLIEST_PERMITTED_DATE:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;-><init>()V

    return-void
.end method

.method private createVideosPlatformUtil()Lcom/google/android/youtube/videos/VideosPlatformUtil;
    .registers 5

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_17

    .line 271
    const-string v2, "com.google.android.youtube.videos.froyo.FroyoVideosPlatformUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 277
    .local v1, platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/VideosPlatformUtil;

    return-object v2

    .line 274
    .end local v1           #platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_17
    const-string v2, "com.google.android.youtube.videos.honeycomb.HoneycombVideosPlatformUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v1

    .restart local v1       #platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_10

    .line 278
    .end local v1           #platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1e
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t create VideosPlatformUtil object"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getCurrentCountryCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosConfig;->countryOverride()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override country = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 197
    :goto_1e
    return-object v0

    .line 188
    :cond_1f
    iget-object v1, p0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosConfig;->deviceCountry()Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_3e

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device country = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    goto :goto_1e

    .line 193
    :cond_3e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default country = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/Navigation;)Z
    .registers 6
    .parameter "item"
    .parameter "activity"
    .parameter "analytics"
    .parameter "navigation"

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 308
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 290
    :pswitch_a
    invoke-interface {p3}, Lcom/google/android/youtube/videos/Navigation;->toSettings()V

    .line 291
    const-string v1, "Settings"

    invoke-virtual {p2, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackPage(Ljava/lang/String;)V

    goto :goto_9

    .line 294
    :pswitch_13
    const v1, 0x7f0b00fc

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 296
    const-string v1, "Settings"

    invoke-virtual {p2, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackPage(Ljava/lang/String;)V

    goto :goto_9

    .line 299
    :pswitch_27
    const v1, 0x7f0b00fd

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 301
    const-string v1, "Contact"

    invoke-virtual {p2, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackPage(Ljava/lang/String;)V

    goto :goto_9

    .line 304
    :pswitch_3b
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/BugReporter;->launchGoogleFeedback(Landroid/app/Activity;)V

    .line 305
    const-string v1, "Feedback"

    invoke-virtual {p2, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackPage(Ljava/lang/String;)V

    goto :goto_9

    .line 288
    :pswitch_data_44
    .packed-switch 0x7f0d0042
        :pswitch_a
        :pswitch_13
        :pswitch_27
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getAnalytics()Lcom/google/android/youtube/core/Analytics;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/google/android/youtube/core/Config;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getConfig()Lcom/google/android/youtube/videos/VideosConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/google/android/youtube/videos/VideosConfig;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmManager()Lcom/google/android/youtube/videos/DrmManager;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    return-object v0
.end method

.method public getPlusOneClient()Lcom/google/android/youtube/plus1/PlusOneClient;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    const-string v0, "Videos"

    return-object v0
.end method

.method public getPurchaseStore()Lcom/google/android/youtube/videos/store/PurchaseStore;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    return-object v0
.end method

.method public getRequesters()Lcom/google/android/youtube/videos/Requesters;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    return-object v0
.end method

.method public getStatsClient()Lcom/google/android/youtube/core/client/StatsClient;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->statsClient:Lcom/google/android/youtube/core/client/DefaultStatsClient;

    return-object v0
.end method

.method public getStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->offlineSubtitles:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->getStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->offlineSubtitles:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->getSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v0

    return-object v0
.end method

.method public getVideosPlatformUtil()Lcom/google/android/youtube/videos/VideosPlatformUtil;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    return-object v0
.end method

.method protected bridge synthetic initAnalytics(Lcom/google/android/youtube/core/client/AnalyticsClient;)Lcom/google/android/youtube/core/Analytics;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/VideosApplication;->initAnalytics(Lcom/google/android/youtube/core/client/AnalyticsClient;)Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    return-object v0
.end method

.method protected initAnalytics(Lcom/google/android/youtube/core/client/AnalyticsClient;)Lcom/google/android/youtube/videos/VideosAnalytics;
    .registers 3
    .parameter "analyticsClient"

    .prologue
    .line 244
    new-instance v0, Lcom/google/android/youtube/videos/VideosAnalytics;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/videos/VideosAnalytics;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/client/AnalyticsClient;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    return-object v0
.end method

.method protected initInternal()V
    .registers 25

    .prologue
    .line 68
    new-instance v7, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    .line 69
    .local v7, uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;
    new-instance v2, Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lcom/google/android/youtube/videos/VideosConfig;-><init>(Landroid/content/ContentResolver;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->createVideosPlatformUtil()Lcom/google/android/youtube/videos/VideosPlatformUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    .line 71
    invoke-super/range {p0 .. p0}, Lcom/google/android/youtube/core/BaseApplication;->initInternal()V

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->countryCode:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosConfig;->mobileStreamingEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->mobileStreamingEnabled:Z

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosConfig;->mobileDownloadsEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->mobileDownloadsEnabled:Z

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 78
    .local v6, preferences:Landroid/content/SharedPreferences;
    const-string v2, "mobile_downloads_enabled"

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 79
    const-string v2, "mobile_downloads_enabled"

    const/4 v3, 0x1

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 81
    .local v22, cachedMobileDownloadsEnabled:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->mobileDownloadsEnabled:Z

    move/from16 v0, v22

    if-eq v2, v0, :cond_79

    .line 83
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mobile_downloads_enabled"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/youtube/videos/VideosApplication;->mobileDownloadsEnabled:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_policy"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_policy_dialog_shown"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    .end local v22           #cachedMobileDownloadsEnabled:Z
    :cond_79
    :goto_79
    const-string v2, "legacy_downloads_have_app_level_drm"

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 98
    const-string v2, "legacy_downloads_have_app_level_drm"

    const/4 v3, 0x0

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->legacyDownloadsHaveAppLevelDrm:Z

    .line 109
    :goto_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->countryCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/async/GDataRequests;->setCountryCodeRestrict(Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    invoke-interface {v3}, Lcom/google/android/youtube/videos/VideosPlatformUtil;->getDeveloperKey()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    invoke-interface {v4}, Lcom/google/android/youtube/videos/VideosPlatformUtil;->getDeveloperSecret()[B

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "android_id"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;-><init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    .line 120
    .local v1, deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    .line 121
    .local v11, singleThreadExecutor:Ljava/util/concurrent/Executor;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    move-object v12, v1

    invoke-interface/range {v8 .. v14}, Lcom/google/android/youtube/videos/VideosPlatformUtil;->newDrmManager(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosApplication;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 124
    new-instance v12, Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getClock()Lcom/google/android/youtube/core/utils/SystemClock;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getVideosPlatformUtil()Lcom/google/android/youtube/videos/VideosPlatformUtil;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/VideosApplication;->config:Lcom/google/android/youtube/videos/VideosConfig;

    move-object/from16 v20, v0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Lcom/google/android/youtube/videos/DefaultRequesters;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/converter/XmlParser;Lcom/google/android/youtube/core/PlatformUtil;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/VideosConfig;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/youtube/videos/DefaultRequesters;->init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 128
    new-instance v2, Lcom/google/android/youtube/core/client/DefaultStatsClient;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/client/DefaultStatsClient;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->statsClient:Lcom/google/android/youtube/core/client/DefaultStatsClient;

    .line 130
    new-instance v23, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subtitles"

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v23, subtitlesDir:Ljava/io/File;
    new-instance v12, Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v15

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getClock()Lcom/google/android/youtube/core/utils/SystemClock;

    move-result-object v17

    invoke-direct/range {v12 .. v17}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/XmlParser;Ljava/lang/String;Lcom/google/android/youtube/core/utils/Clock;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/youtube/videos/VideosApplication;->offlineSubtitles:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    .line 138
    new-instance v12, Lcom/google/android/youtube/plus1/SignedInListenerPlusOneClient;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    invoke-interface {v2}, Lcom/google/android/youtube/videos/VideosPlatformUtil;->getPlusOneDeveloperKey()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v18

    invoke-direct/range {v12 .. v18}, Lcom/google/android/youtube/plus1/SignedInListenerPlusOneClient;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/youtube/videos/VideosApplication;->plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

    .line 146
    new-instance v12, Lcom/google/android/youtube/videos/store/PurchaseStore;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->getSyncMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->getSyncBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v16

    const-string v17, "purchase_store.db"

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/google/android/youtube/videos/store/PurchaseStore;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/youtube/videos/VideosApplication;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    .line 153
    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/videos/VideosApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    return-void

    .line 91
    .end local v1           #deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;
    .end local v11           #singleThreadExecutor:Ljava/util/concurrent/Executor;
    .end local v23           #subtitlesDir:Ljava/io/File;
    :cond_192
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mobile_downloads_enabled"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/youtube/videos/VideosApplication;->mobileDownloadsEnabled:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_79

    .line 101
    :cond_1a5
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/VideosApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IDM"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v21, appDrmFolder:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/youtube/videos/VideosApplication;->legacyDownloadsHaveAppLevelDrm:Z

    .line 103
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "legacy_downloads_have_app_level_drm"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/youtube/videos/VideosApplication;->legacyDownloadsHaveAppLevelDrm:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_8c
.end method

.method public isSystemClockWrong()Z
    .registers 3

    .prologue
    .line 165
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 166
    .local v0, now:Ljava/util/Date;
    sget-object v1, Lcom/google/android/youtube/videos/VideosApplication;->EARLIEST_PERMITTED_DATE:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public legacyDownloadsHaveAppLevelDrm()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->legacyDownloadsHaveAppLevelDrm:Z

    return v0
.end method

.method public mobileDownloadsEnabled()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->mobileDownloadsEnabled:Z

    return v0
.end method

.method public mobileStreamingEnabled()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->mobileStreamingEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/app/Activity;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 254
    const/high16 v1, 0x7f11

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 255
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/BugReporter;->isGoogleFeedbackInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 256
    const v1, 0x7f0d0045

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 257
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1b

    .line 258
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 262
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_1b
    return-void
.end method
