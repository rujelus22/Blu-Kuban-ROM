.class public abstract Lcom/google/android/apps/unveil/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"

# interfaces
.implements Lcom/google/android/apps/unveil/UnveilContext;


# static fields
.field public static final CAMERA_ARGS_REGEX:Ljava/lang/String; = "([a-zA-Z0-9]+)(\\[(.*)\\])?"

.field protected static context:Landroid/content/Context;


# instance fields
.field private authState:Lcom/google/android/apps/unveil/auth/AuthState;

.field private authenticator:Lcom/google/android/apps/unveil/auth/Authenticator;

.field private cameraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cameraType:Ljava/lang/String;

.field private clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private frontendUrl:Ljava/net/URL;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private latLngEncrypter:Lcom/google/android/apps/unveil/network/LatLngEncrypter;

.field private locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private mockLocation:Landroid/location/Location;

.field private networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

.field protected preferences:Landroid/content/SharedPreferences;

.field protected queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

.field protected queryPipeline:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

.field private searchHistoryProvider:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field private sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

.field protected settings:Lcom/google/android/apps/unveil/UnveilSettings;

.field private syntheticUserAgent:Ljava/lang/String;

.field private thumbnailCache:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

.field private traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

.field protected versionCode:I

.field private viewport:Lcom/google/android/apps/unveil/env/Viewport;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/BaseApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/BaseApplication;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getBaseUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final configureWindowFormat(Landroid/view/Window;)V
    .registers 2
    .parameter "window"

    .prologue
    .line 525
    if-eqz p0, :cond_6

    .line 526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setFormat(I)V

    .line 528
    :cond_6
    return-void
.end method

.method private getBaseUserAgent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    sget v2, Lcom/google/android/apps/unveil/R$string;->user_agent_key:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/BaseApplication;->syntheticUserAgent:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, userAgent:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 477
    invoke-direct {p0}, Lcom/google/android/apps/unveil/BaseApplication;->guessUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->syntheticUserAgent:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->syntheticUserAgent:Ljava/lang/String;

    .line 480
    .end local v0           #userAgent:Ljava/lang/String;
    :cond_18
    return-object v0
.end method

.method private getFrontendUrlFromPreferences()Ljava/net/URL;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 331
    iget-object v3, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    sget v5, Lcom/google/android/apps/unveil/R$string;->custom_frontend_domain_key:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, domain:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 333
    iget-object v3, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    sget v5, Lcom/google/android/apps/unveil/R$string;->frontend_domain_key:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 337
    :try_start_29
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object v2, v0

    .line 339
    .local v2, fullDomain:Ljava/lang/String;
    :goto_32
    new-instance v3, Ljava/net/URL;

    const-string v5, "http"

    const-string v6, ""

    invoke-direct {v3, v5, v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v2           #fullDomain:Ljava/lang/String;
    :goto_3b
    return-object v3

    .line 337
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".visualsearch.sandbox.google.com"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/net/MalformedURLException; {:try_start_29 .. :try_end_4e} :catch_50

    move-result-object v2

    goto :goto_32

    .line 340
    :catch_50
    move-exception v1

    .line 341
    .local v1, e:Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Could not parse URL from preferences"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    .line 342
    goto :goto_3b

    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_5d
    move-object v3, v4

    .line 345
    goto :goto_3b
.end method

.method private final guessUserAgent()Ljava/lang/String;
    .registers 11

    .prologue
    .line 428
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 429
    .local v5, locale:Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 432
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_80

    .line 433
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :goto_14
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_86

    .line 441
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 444
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    .end local v2           #country:Ljava/lang/String;
    :cond_38
    :goto_38
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_47

    const-string v8, "REL"

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 454
    :cond_47
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 455
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_57

    .line 456
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    .end local v6           #model:Ljava/lang/String;
    :cond_57
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 461
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_67

    .line 462
    const-string v8, " Build/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/android/apps/unveil/R$string;->web_user_agent:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, base:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 436
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    :cond_80
    const-string v8, "1.0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 449
    .restart local v4       #language:Ljava/lang/String;
    :cond_86
    const-string v8, "en"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38
.end method

.method private initCameraSettings(Ljava/lang/String;)V
    .registers 15
    .parameter "cameraProxy"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 550
    const-string v6, "([a-zA-Z0-9]+)(\\[(.*)\\])?"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 551
    .local v3, proxyPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 553
    .local v2, matcher:Ljava/util/regex/Matcher;
    iget-object v6, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Trying to match <%s>"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_37

    .line 556
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error opening camera proxy. Incorrect class/parameter syntax. cameraProxy string was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 560
    :cond_37
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraType:Ljava/lang/String;

    .line 561
    iget-object v6, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Camera type: %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraType:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraParameters:Ljava/util/Map;

    .line 565
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, cameraSettings:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 583
    :cond_5c
    return-void

    .line 572
    :cond_5d
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_64
    :goto_64
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 574
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, currToken:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, tokens:[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v12, :cond_64

    .line 579
    iget-object v6, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Adding parameter \'%s\' => \'%s\'"

    new-array v8, v12, [Ljava/lang/Object;

    aget-object v9, v5, v11

    aput-object v9, v8, v11

    aget-object v9, v5, v10

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-object v6, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraParameters:Ljava/util/Map;

    aget-object v7, v5, v11

    aget-object v8, v5, v10

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64
.end method

.method private makeHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 656
    invoke-static {p0}, Lcom/google/android/apps/unveil/network/HttpClientFactory;->make(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createSettings(Landroid/content/SharedPreferences;)Lcom/google/android/apps/unveil/UnveilSettings;
    .registers 3
    .parameter "preference"

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/apps/unveil/UnveilSettings;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/UnveilSettings;-><init>(Landroid/app/Application;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;
    .registers 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    if-nez v0, :cond_13

    .line 352
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthState;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getFrontendUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getProdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/auth/AuthState;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    .line 354
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    return-object v0
.end method

.method public getAuthenticator()Lcom/google/android/apps/unveil/auth/Authenticator;
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->authenticator:Lcom/google/android/apps/unveil/auth/Authenticator;

    if-nez v0, :cond_f

    .line 259
    new-instance v0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;-><init>(Landroid/content/Context;Lcom/google/android/apps/unveil/auth/AuthState;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->authenticator:Lcom/google/android/apps/unveil/auth/Authenticator;

    .line 261
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->authenticator:Lcom/google/android/apps/unveil/auth/Authenticator;

    return-object v0
.end method

.method public getCameraParams()Ljava/util/Map;
    .registers 2
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

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getCameraType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraType:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

    return-object v0
.end method

.method public getConfigurationProvider()Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Lcom/google/android/apps/unveil/BaseApplication$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/BaseApplication$5;-><init>(Lcom/google/android/apps/unveil/BaseApplication;)V

    return-object v0
.end method

.method public getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;
    .registers 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    if-nez v0, :cond_20

    .line 205
    new-instance v1, Lcom/google/android/apps/unveil/network/HttpClientConnector;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v3, Lcom/google/android/apps/unveil/BaseApplication$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/unveil/BaseApplication$3;-><init>(Lcom/google/android/apps/unveil/BaseApplication;)V

    invoke-static {p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAuthenticatedRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/apps/unveil/network/HttpClientConnector;-><init>(Lorg/apache/http/client/HttpClient;Landroid/net/ConnectivityManager;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 213
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 634
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getDefaultFrontendUrlString()Ljava/lang/String;
.end method

.method public getFrontendUrl()Ljava/net/URL;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 297
    iget-object v2, p0, Lcom/google/android/apps/unveil/BaseApplication;->frontendUrl:Ljava/net/URL;

    if-nez v2, :cond_1b

    .line 298
    invoke-direct {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getFrontendUrlFromPreferences()Ljava/net/URL;

    move-result-object v1

    .line 299
    .local v1, fromPreferences:Ljava/net/URL;
    if-eqz v1, :cond_1e

    .line 300
    iput-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->frontendUrl:Ljava/net/URL;

    .line 310
    :goto_d
    iget-object v2, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Frontend URL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/BaseApplication;->frontendUrl:Ljava/net/URL;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    .end local v1           #fromPreferences:Ljava/net/URL;
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/unveil/BaseApplication;->frontendUrl:Ljava/net/URL;

    :goto_1d
    return-object v2

    .line 303
    .restart local v1       #fromPreferences:Ljava/net/URL;
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getDefaultFrontendUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/BaseApplication;->frontendUrl:Ljava/net/URL;
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_d

    .line 304
    :catch_2a
    move-exception v0

    .line 305
    .local v0, e:Ljava/net/MalformedURLException;
    iget-object v2, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Could not parse URL from resources"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getFullUserAgent()Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lcom/google/android/apps/unveil/BaseApplication$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/BaseApplication$4;-><init>(Lcom/google/android/apps/unveil/BaseApplication;)V

    return-object v0
.end method

.method public getGroundtruthDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->cameraParameters:Ljava/util/Map;

    const-string v1, "image_sequence_directory"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 648
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_b

    .line 649
    invoke-direct {p0}, Lcom/google/android/apps/unveil/BaseApplication;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 652
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 648
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    sget v1, Lcom/google/android/apps/unveil/R$string;->installation_id_key:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 628
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLatLngEncrypter()Lcom/google/android/apps/unveil/network/LatLngEncrypter;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->latLngEncrypter:Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    return-object v0
.end method

.method public final declared-synchronized getLocationProvider()Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;
    .registers 3

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    if-nez v0, :cond_14

    .line 219
    new-instance v1, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Landroid/location/LocationManager;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    .line 222
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 218
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getMockLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->mockLocation:Landroid/location/Location;

    return-object v0
.end method

.method public declared-synchronized getNetworkInfoProvider()Lcom/google/android/apps/unveil/network/NetworkInfoProvider;
    .registers 2

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    if-nez v0, :cond_c

    .line 236
    new-instance v0, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    .line 238
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 235
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProdUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    sget v0, Lcom/google/android/apps/unveil/R$string;->prod_cookie_url:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getQueryManager()Lcom/google/android/apps/unveil/protocol/QueryManager;
    .registers 5

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    if-nez v0, :cond_28

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Creating (SingleShot)QueryManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryManager;

    new-instance v1, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getConfigurationProvider()Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/unveil/protocol/QueryManagerParams;-><init>(Lcom/google/android/apps/unveil/env/Provider;)V

    new-instance v2, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/unveil/protocol/QueryManager;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;

    .line 248
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->queryManager:Lcom/google/android/apps/unveil/protocol/QueryManager;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-object v0

    .line 243
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQueryPipeline()Lcom/google/android/apps/unveil/protocol/QueryPipeline;
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->queryPipeline:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    if-nez v0, :cond_16

    .line 593
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    new-instance v1, Lcom/google/android/apps/unveil/env/ImageSaver;

    sget-object v2, Lcom/google/android/apps/unveil/BaseApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/unveil/env/ImageSaver;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/env/ImageSaver;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->queryPipeline:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    .line 595
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->queryPipeline:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    return-object v0
.end method

.method public getSearchHistoryProvider()Lcom/google/android/apps/unveil/history/SearchHistoryProvider;
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->searchHistoryProvider:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    if-nez v0, :cond_10

    .line 267
    new-instance v0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;-><init>(Lcom/google/android/apps/unveil/UnveilContext;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->searchHistoryProvider:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    .line 269
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->searchHistoryProvider:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    return-object v0
.end method

.method public declared-synchronized getSensorProvider()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;
    .registers 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    if-nez v0, :cond_c

    .line 228
    new-instance v0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 227
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSettings()Lcom/google/android/apps/unveil/UnveilSettings;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    return-object v0
.end method

.method public getThumbnailCache()Lcom/google/android/apps/unveil/env/ThumbnailProvider;
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->thumbnailCache:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    return-object v0
.end method

.method public getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    return-object v0
.end method

.method public getUseGroundtruth()Z
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->groundtruth:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getCameraType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final getVersionCode()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->versionCode:I

    return v0
.end method

.method public getViewport()Lcom/google/android/apps/unveil/env/Viewport;
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->viewport:Lcom/google/android/apps/unveil/env/Viewport;

    return-object v0
.end method

.method public isNetworkAvailable()Z
    .registers 3

    .prologue
    .line 616
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 622
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isSearchHistoryEnabled()Z
    .registers 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/auth/AuthState;->isAuthenticated(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 143
    new-instance v0, Lcom/google/android/apps/unveil/BaseApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/BaseApplication$1;-><init>(Lcom/google/android/apps/unveil/BaseApplication;)V

    .line 150
    new-instance v0, Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/R$raw;->pub:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/env/StreamLoader;->getByteArrayForStream(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/network/LatLngEncrypter;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->latLngEncrypter:Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    .line 152
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    .line 154
    new-instance v0, Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getNetworkInfoProvider()Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;-><init>(Lcom/google/android/apps/unveil/network/NetworkInfoProvider;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    .line 156
    new-instance v0, Lcom/google/android/apps/unveil/protocol/ClickTracker;

    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->newDefaultLogConnector(Lcom/google/android/apps/unveil/network/AbstractConnector;)Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/ClickTracker;-><init>(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->clickTracker:Lcom/google/android/apps/unveil/protocol/ClickTracker;

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->createSettings(Landroid/content/SharedPreferences;)Lcom/google/android/apps/unveil/UnveilSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->setSettings(Lcom/google/android/apps/unveil/UnveilSettings;)V

    .line 159
    new-instance v0, Lcom/google/android/apps/unveil/env/Viewport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/Viewport;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->viewport:Lcom/google/android/apps/unveil/env/Viewport;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Thumbnails;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->makeDefault(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Handler;)Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->thumbnailCache:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    .line 165
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 168
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 169
    new-instance v0, Lcom/google/android/apps/unveil/BaseApplication$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/BaseApplication$2;-><init>(Lcom/google/android/apps/unveil/BaseApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 180
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/BaseApplication;->context:Landroid/content/Context;

    .line 182
    return-void
.end method

.method protected resetInstallationId()V
    .registers 6

    .prologue
    .line 680
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, installationId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Setting installationId to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/R$string;->installation_id_key:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void
.end method

.method public restoreAuthState(Lcom/google/android/apps/unveil/auth/AuthState;)V
    .registers 2
    .parameter "authState"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication;->authState:Lcom/google/android/apps/unveil/auth/AuthState;

    .line 365
    return-void
.end method

.method public setFrontendUrl(Ljava/net/URL;)V
    .registers 4
    .parameter "frontendUrl"

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 392
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication;->frontendUrl:Ljava/net/URL;

    .line 393
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getProdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/auth/AuthState;->setUrls(Ljava/net/URL;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public final setMockLocation(DD)V
    .registers 8
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 398
    new-instance v0, Landroid/location/Location;

    const-string v1, "MockProvider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->mockLocation:Landroid/location/Location;

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->mockLocation:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->mockLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->mockLocation:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->mockLocation:Landroid/location/Location;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 403
    return-void
.end method

.method public setSettings(Lcom/google/android/apps/unveil/UnveilSettings;)V
    .registers 6
    .parameter "unveilSettings"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    if-eqz v0, :cond_e

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Overwriting settings."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :cond_e
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    .line 538
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getFrontendUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getProdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->setUrls(Ljava/net/URL;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget-object v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget-object v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_3e

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget-object v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget-object v2, v2, Lcom/google/android/apps/unveil/UnveilSettings;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/unveil/BaseApplication;->setMockLocation(DD)V

    .line 544
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->previousVersion:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->setPreviousVersion(I)V

    .line 546
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->settings:Lcom/google/android/apps/unveil/UnveilSettings;

    iget-object v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->cameraProxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/BaseApplication;->initCameraSettings(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .registers 4
    .parameter "userAgent"

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getBaseUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1c

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 510
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    sget v1, Lcom/google/android/apps/unveil/R$string;->user_agent_key:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    .end local v0           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_1c
    return-void
.end method

.method public setUserWantsHistory(Z)V
    .registers 7
    .parameter "wantsHistory"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Setting userWantsHistory to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    sget v0, Lcom/google/android/apps/unveil/R$string;->user_wants_history_key:I

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/unveil/Settings;->putBoolean(Landroid/content/Context;IZ)V

    .line 420
    if-nez p1, :cond_1f

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getAuthenticator()Lcom/google/android/apps/unveil/auth/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/unveil/auth/Authenticator;->clearAuthToken()V

    .line 424
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication;->getSearchHistoryProvider()Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->getEngine()Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->invalidateXsrfToken()V

    .line 425
    return-void
.end method

.method public setViewport(Lcom/google/android/apps/unveil/env/Viewport;)V
    .registers 2
    .parameter "viewport"

    .prologue
    .line 611
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication;->viewport:Lcom/google/android/apps/unveil/env/Viewport;

    .line 612
    return-void
.end method

.method public userWantsHistory()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    sget v2, Lcom/google/android/apps/unveil/R$string;->user_wants_history_key:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 291
    .local v0, wantsHistory:Z
    iget-object v1, p0, Lcom/google/android/apps/unveil/BaseApplication;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Getting userWantsHistory = %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return v0
.end method
