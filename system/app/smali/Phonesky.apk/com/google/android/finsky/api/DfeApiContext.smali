.class public Lcom/google/android/finsky/api/DfeApiContext;
.super Ljava/lang/Object;
.source "DfeApiContext.java"


# static fields
.field private static sCachedSmallestScreenWidthDp:I


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mCache:Lcom/android/volley/Cache;

.field private final mContext:Landroid/content/Context;

.field private final mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

.field private mHasPerformedInitialTokenInvalidation:Z

.field private final mHeaders:Ljava/util/Map;
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

.field private mLastAuthToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/android/volley/Cache;Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "authenticator"
    .parameter "cache"
    .parameter "appVersionString"
    .parameter "appVersionCode"
    .parameter "apiVersion"
    .parameter "locale"
    .parameter "mccmnc"
    .parameter "clientId"
    .parameter "loggingId"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 81
    iput-object p3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mCache:Lcom/android/volley/Cache;

    .line 82
    new-instance v2, Lcom/google/android/finsky/experiments/DfeExperiments;

    invoke-direct {v2}, Lcom/google/android/finsky/experiments/DfeExperiments;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

    .line 83
    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v4, "X-DFE-Device-Id"

    sget-object v2, Lcom/google/android/finsky/config/G;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "Accept-Language"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 86
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-MCCMNC"

    invoke-interface {v2, v3, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_60
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 89
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-Client-Id"

    move-object/from16 v0, p9

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_6f
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 92
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-Logging-Id"

    move-object/from16 v0, p10

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_7e
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "User-Agent"

    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/finsky/api/DfeApiContext;->makeUserAgentString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-SmallestScreenWidthDp"

    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/DfeApiContext;->getSmallestScreenWidthDp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b0

    .line 98
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/ContentLevel;->getDfeValue()I

    move-result v1

    .line 99
    .local v1, contentFilterLevel:I
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-Filter-Level"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiContext;->checkUrlRules()V

    .line 102
    .end local v1           #contentFilterLevel:I
    :cond_b0
    return-void
.end method

.method private checkUrlRules()V
    .registers 6

    .prologue
    .line 108
    sget-object v2, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, uriString:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/volley/UrlTools;->rewrite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, rewritten:Ljava/lang/String;
    if-nez v0, :cond_27

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASE_URI blocked by UrlRules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_27
    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->checkUrlIsSecure(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApiContext;
    .registers 18
    .parameter "accountName"

    .prologue
    .line 53
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    .local v2, context:Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v12

    .line 55
    .local v12, account:Landroid/accounts/Account;
    new-instance v3, Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v1, Lcom/google/android/finsky/config/G;->authTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v2, v12, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 59
    .local v3, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    :try_start_1b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 60
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 61
    .local v14, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 62
    .local v5, appVersionName:Ljava/lang/String;
    iget v6, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 63
    .local v6, appVersionCode:I
    const-string v1, "phone"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 65
    .local v16, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/google/android/finsky/api/DfeApiContext;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v4

    const/4 v7, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/android/finsky/config/G;->clientId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v10}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/finsky/config/G;->loggingId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/finsky/api/DfeApiContext;-><init>(Landroid/content/Context;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/android/volley/Cache;Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_5a} :catch_5b

    return-object v1

    .line 71
    .end local v5           #appVersionName:Ljava/lang/String;
    .end local v6           #appVersionCode:I
    .end local v14           #pi:Landroid/content/pm/PackageInfo;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_5b
    move-exception v13

    .line 72
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t find our own package"

    invoke-direct {v1, v4, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSmallestScreenWidthDp(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    .line 205
    sget v5, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    if-ne v5, v7, :cond_42

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_11
    const-string v5, "smallestScreenWidthDp"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sput v5, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_49

    .line 215
    :goto_22
    sget v5, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    if-ne v5, v7, :cond_42

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 217
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 218
    .local v4, widthDp:I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 220
    .local v2, heightDp:I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    sput v5, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    .line 223
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #heightDp:I
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #widthDp:I
    :cond_42
    sget v5, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 212
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_49
    move-exception v1

    .line 213
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "smallestScreenWidthDp does not exist, using pre-ics hack."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22
.end method

.method private makeUserAgentString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .parameter "versionString"
    .parameter "versionCode"
    .parameter "apiVersion"

    .prologue
    .line 117
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Android-Finsky/%s (api=%d,versionCode=%d,sdk=%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 133
    .local v0, currentAccount:Landroid/accounts/Account;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_7
.end method

.method public getCache()Lcom/android/volley/Cache;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getExperiments()Lcom/google/android/finsky/experiments/DfeExperiments;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

    return-object v0
.end method

.method public declared-synchronized getHeaders()Ljava/util/Map;
    .registers 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHasPerformedInitialTokenInvalidation:Z

    if-nez v1, :cond_b

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHasPerformedInitialTokenInvalidation:Z

    .line 171
    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 174
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

    invoke-virtual {v1}, Lcom/google/android/finsky/experiments/DfeExperiments;->hasEnabledExperiments()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 176
    const-string v1, "X-DFE-Enabled-Experiments"

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

    invoke-virtual {v2}, Lcom/google/android/finsky/experiments/DfeExperiments;->getEnabledExperimentsHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2f
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

    invoke-virtual {v1}, Lcom/google/android/finsky/experiments/DfeExperiments;->hasUnsupportedExperiments()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 180
    const-string v1, "X-DFE-Unsupported-Experiments"

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/DfeExperiments;

    invoke-virtual {v2}, Lcom/google/android/finsky/experiments/DfeExperiments;->getUnsupportedExperimentsHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_42
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 184
    monitor-exit p0

    return-object v0

    .line 167
    .end local v0           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public invalidateAuthToken()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 148
    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "[DfeApiContext headers={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const/4 v0, 0x1

    .line 192
    .local v0, first:Z
    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, header:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 194
    const/4 v0, 0x0

    .line 198
    :goto_24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 196
    :cond_3a
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 200
    .end local v1           #header:Ljava/lang/String;
    :cond_40
    const-string v4, "}]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
