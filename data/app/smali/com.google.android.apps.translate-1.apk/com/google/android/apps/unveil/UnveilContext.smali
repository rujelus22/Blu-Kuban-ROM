.class public interface abstract Lcom/google/android/apps/unveil/UnveilContext;
.super Ljava/lang/Object;
.source "UnveilContext.java"


# virtual methods
.method public abstract getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;
.end method

.method public abstract getAuthenticator()Lcom/google/android/apps/unveil/auth/Authenticator;
.end method

.method public abstract getCameraParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCameraType()Ljava/lang/String;
.end method

.method public abstract getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;
.end method

.method public abstract getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getFrontendUrl()Ljava/net/URL;
.end method

.method public abstract getFullUserAgent()Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroundtruthDirectory()Ljava/lang/String;
.end method

.method public abstract getHttpClient()Lorg/apache/http/client/HttpClient;
.end method

.method public abstract getInstallationId()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLatLngEncrypter()Lcom/google/android/apps/unveil/network/LatLngEncrypter;
.end method

.method public abstract getLocationProvider()Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;
.end method

.method public abstract getMockLocation()Landroid/location/Location;
.end method

.method public abstract getNetworkInfoProvider()Lcom/google/android/apps/unveil/network/NetworkInfoProvider;
.end method

.method public abstract getQueryManager()Lcom/google/android/apps/unveil/protocol/QueryManager;
.end method

.method public abstract getQueryPipeline()Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end method

.method public abstract getSearchHistoryProvider()Lcom/google/android/apps/unveil/history/SearchHistoryProvider;
.end method

.method public abstract getSensorProvider()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;
.end method

.method public abstract getSettings()Lcom/google/android/apps/unveil/UnveilSettings;
.end method

.method public abstract getThumbnailCache()Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.end method

.method public abstract getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;
.end method

.method public abstract getUseGroundtruth()Z
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract getViewport()Lcom/google/android/apps/unveil/env/Viewport;
.end method

.method public abstract isContinuous()Z
.end method

.method public abstract isFirstRun()Z
.end method

.method public abstract isNetworkAvailable()Z
.end method

.method public abstract isSearchHistoryEnabled()Z
.end method

.method public abstract isUpgrade()Z
.end method

.method public abstract restoreAuthState(Lcom/google/android/apps/unveil/auth/AuthState;)V
.end method

.method public abstract setContinuous(Z)V
.end method

.method public abstract setFrontendUrl(Ljava/net/URL;)V
.end method

.method public abstract setMockLocation(DD)V
.end method

.method public abstract setPreviousVersion(I)V
.end method

.method public abstract setSettings(Lcom/google/android/apps/unveil/UnveilSettings;)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
.end method

.method public abstract setUserWantsHistory(Z)V
.end method

.method public abstract setViewport(Lcom/google/android/apps/unveil/env/Viewport;)V
.end method

.method public abstract userWantsHistory()Z
.end method
