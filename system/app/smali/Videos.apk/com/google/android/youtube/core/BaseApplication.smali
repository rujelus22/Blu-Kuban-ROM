.class public abstract Lcom/google/android/youtube/core/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;
    }
.end annotation


# instance fields
.field private analytics:Lcom/google/android/youtube/core/Analytics;

.field private applicationVersion:Ljava/lang/String;

.field private clock:Lcom/google/android/youtube/core/utils/SystemClock;

.field private cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

.field private executor:Ljava/util/concurrent/Executor;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private isInitialized:Z

.field private isUpdate:Z

.field private platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

.field private preferences:Landroid/content/SharedPreferences;

.field private safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

.field private uiExecutor:Ljava/util/concurrent/Executor;

.field private uiHandler:Landroid/os/Handler;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/BaseApplication;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildUserAgent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v3, "(Linux; U; Android "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 174
    .local v2, model:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_42

    .line 175
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_42
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 180
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_52

    .line 181
    const-string v3, " Build/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_52
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createCpuIntensiveExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x3c

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/BaseApplication;->createThreadPoolExecutor(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private createExecutor()Ljava/util/concurrent/Executor;
    .registers 4

    .prologue
    .line 375
    const/16 v0, 0x10

    const/16 v1, 0x3c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/BaseApplication;->createThreadPoolExecutor(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .registers 9
    .parameter "userAgent"

    .prologue
    const/16 v6, 0x4e20

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpClient.UserAgent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 288
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 291
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 293
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 294
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 295
    const/16 v4, 0x2000

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 296
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gzip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 299
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 300
    .local v3, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 301
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 302
    new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 303
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 304
    .local v1, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 305
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;

    invoke-direct {v4}, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;-><init>()V

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 306
    return-object v0
.end method

.method private static createThreadPoolExecutor(III)Ljava/util/concurrent/Executor;
    .registers 11
    .parameter "size"
    .parameter "keepAliveTimeInSeconds"
    .parameter "priority"

    .prologue
    .line 400
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;

    invoke-direct {v7, p2}, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;-><init>(I)V

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private createUiExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 364
    new-instance v0, Lcom/google/android/youtube/core/BaseApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/BaseApplication$1;-><init>(Lcom/google/android/youtube/core/BaseApplication;)V

    return-object v0
.end method

.method private createUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 5

    .prologue
    const/16 v1, 0xe

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_1a

    .line 349
    :cond_e
    new-instance v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V

    .line 357
    :goto_19
    return-object v0

    .line 353
    :cond_1a
    :try_start_1a
    const-string v0, "com.google.android.youtube.coreicecream.UserAuthorizer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 355
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/accounts/AccountManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/content/SharedPreferences;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 357
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_47

    goto :goto_19

    .line 358
    :catch_47
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private maybeEnableManageNetworkUsageActivity()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 310
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isMobileNetworkCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 311
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.google.android.youtube.ManageNetworkUsageActivity"

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    .local v0, manageActivity:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 314
    .local v1, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 315
    .local v2, state:I
    if-eq v2, v4, :cond_20

    .line 316
    const-string v3, "Enabling network usage management"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 323
    .end local v0           #manageActivity:Landroid/content/ComponentName;
    .end local v1           #manager:Landroid/content/pm/PackageManager;
    .end local v2           #state:I
    :cond_20
    return-void
.end method


# virtual methods
.method protected createPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;
    .registers 5

    .prologue
    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_17

    .line 335
    const-string v2, "com.google.android.youtube.core.FroyoPlatformUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 341
    .local v1, platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/PlatformUtil;

    return-object v2

    .line 338
    .end local v1           #platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_17
    const-string v2, "com.google.android.youtube.coreicecream.HoneycombPlatformUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v1

    .restart local v1       #platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_10

    .line 342
    .end local v1           #platformUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1e
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t create PlatformUtil object"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAnalytics()Lcom/google/android/youtube/core/Analytics;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->analytics:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 233
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 236
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_18

    move-result-object v1

    .line 241
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    .line 243
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_15
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    :goto_17
    return-object v2

    .line 237
    :catch_18
    move-exception v0

    .line 238
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "could not retrieve application version name"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    const-string v2, "Unknown"

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    goto :goto_17
.end method

.method public getClock()Lcom/google/android/youtube/core/utils/SystemClock;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->clock:Lcom/google/android/youtube/core/utils/SystemClock;

    return-object v0
.end method

.method public abstract getConfig()Lcom/google/android/youtube/core/Config;
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    const-string v0, "?"

    return-object v0
.end method

.method public getRevShareClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "youtube_client_id"

    const-string v2, "android-google"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->uiExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method public getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    return-object v0
.end method

.method public final init()V
    .registers 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/youtube/core/utils/Preconditions;->checkMainThread()V

    .line 97
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->isInitialized:Z

    if-nez v0, :cond_d

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->isInitialized:Z

    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->initInternal()V

    .line 101
    :cond_d
    return-void
.end method

.method protected initAnalytics(Lcom/google/android/youtube/core/client/AnalyticsClient;)Lcom/google/android/youtube/core/Analytics;
    .registers 3
    .parameter "analyticsClient"

    .prologue
    .line 269
    new-instance v0, Lcom/google/android/youtube/core/Analytics;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/Analytics;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/client/AnalyticsClient;)V

    return-object v0
.end method

.method protected initInternal()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->setTag(Ljava/lang/String;)V

    .line 106
    const-string v2, "youtube"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    .line 107
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, previousVersion:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, currentVersion:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    iput-boolean v1, p0, Lcom/google/android/youtube/core/BaseApplication;->isUpdate:Z

    .line 110
    iget-boolean v1, p0, Lcom/google/android/youtube/core/BaseApplication;->isUpdate:Z

    if-eqz v1, :cond_45

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    :cond_45
    new-instance v1, Lcom/google/android/youtube/core/utils/SystemClock;

    invoke-direct {v1}, Lcom/google/android/youtube/core/utils/SystemClock;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->clock:Lcom/google/android/youtube/core/utils/SystemClock;

    .line 119
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->uiHandler:Landroid/os/Handler;

    .line 120
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->createUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 121
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->createExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    .line 122
    invoke-static {}, Lcom/google/android/youtube/core/BaseApplication;->createCpuIntensiveExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

    .line 123
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/BaseApplication;->createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 124
    invoke-static {}, Lcom/google/android/youtube/core/converter/XmlParser;->createPrefixesOnlyParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 126
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->createUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 128
    new-instance v1, Lcom/google/android/youtube/core/utils/SafeSearch;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/core/utils/SafeSearch;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 129
    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->setSafeSearch(Lcom/google/android/youtube/core/utils/SafeSearch;)V

    .line 131
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->setCountryCodeRestrict(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getConfig()Lcom/google/android/youtube/core/Config;

    move-result-object v7

    .line 135
    .local v7, config:Lcom/google/android/youtube/core/Config;
    invoke-interface {v7}, Lcom/google/android/youtube/core/Config;->useAnalytics()Z

    move-result v1

    if-eqz v1, :cond_d3

    invoke-interface {v7}, Lcom/google/android/youtube/core/Config;->analyticsPropertyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d3

    .line 136
    new-instance v0, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7}, Lcom/google/android/youtube/core/Config;->analyticsPropertyId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Lcom/google/android/youtube/core/Config;->analyticsUpdateSecs()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/client/DefaultAnalyticsClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    .local v0, analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;
    :goto_c3
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/BaseApplication;->initAnalytics(Lcom/google/android/youtube/core/client/AnalyticsClient;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 148
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->createPlatformUtil()Lcom/google/android/youtube/core/PlatformUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->platformUtil:Lcom/google/android/youtube/core/PlatformUtil;

    .line 150
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->maybeEnableManageNetworkUsageActivity()V

    .line 151
    return-void

    .line 144
    .end local v0           #analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;
    :cond_d3
    new-instance v0, Lcom/google/android/youtube/core/client/DummyAnalyticsClient;

    invoke-direct {v0}, Lcom/google/android/youtube/core/client/DummyAnalyticsClient;-><init>()V

    .restart local v0       #analyticsClient:Lcom/google/android/youtube/core/client/AnalyticsClient;
    goto :goto_c3
.end method

.method public final onCreate()V
    .registers 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->init()V

    .line 89
    return-void
.end method
