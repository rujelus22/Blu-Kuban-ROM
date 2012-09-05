.class public abstract Lcom/google/android/youtube/core/BaseApplication;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/youtube/core/utils/q;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Ljava/util/concurrent/Executor;

.field private h:Lorg/apache/http/client/HttpClient;

.field private i:Lcom/google/android/youtube/core/converter/k;

.field private j:Landroid/content/SharedPreferences;

.field private k:Lcom/google/android/youtube/core/j;

.field private l:Lcom/google/android/youtube/core/utils/i;

.field private m:Lcom/google/android/youtube/core/e;

.field private n:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private o:Lcom/google/android/youtube/core/Analytics;

.field private p:Lcom/google/android/youtube/core/utils/SafeSearch;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 458
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/BaseApplication;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(III)Ljava/util/concurrent/Executor;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/youtube/core/b;

    invoke-direct {v7, p2}, Lcom/google/android/youtube/core/b;-><init>(I)V

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private d()Lcom/google/android/youtube/core/j;
    .registers 4

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_17

    .line 387
    const-string v0, "com.google.android.youtube.core.f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 393
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/j;

    return-object v0

    .line 390
    :cond_17
    const-string v0, "com.google.android.youtube.coreicecream.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_10

    .line 394
    :catch_1e
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create PlatformUtil object"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f()Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 5

    .prologue
    const/16 v1, 0xe

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_1a

    .line 401
    :cond_e
    new-instance v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V

    .line 409
    :goto_19
    return-object v0

    .line 405
    :cond_1a
    :try_start_1a
    const-string v0, "com.google.android.youtube.coreicecream.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 407
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

    .line 409
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_47

    goto :goto_19

    .line 410
    :catch_47
    move-exception v0

    .line 411
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final A()Lcom/google/android/youtube/core/converter/k;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->i:Lcom/google/android/youtube/core/converter/k;

    return-object v0
.end method

.method public final B()Lcom/google/android/youtube/core/e;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->m:Lcom/google/android/youtube/core/e;

    return-object v0
.end method

.method public final C()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final D()Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method public final E()Lcom/google/android/youtube/core/utils/SafeSearch;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->p:Lcom/google/android/youtube/core/utils/SafeSearch;

    return-object v0
.end method

.method public final F()Lcom/google/android/youtube/core/utils/i;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/utils/i;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 274
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_18

    move-result-object v0

    .line 279
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    .line 281
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    :goto_17
    return-object v0

    .line 275
    :catch_18
    move-exception v0

    .line 276
    const-string v1, "could not retrieve application version name"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    goto :goto_17
.end method

.method public final H()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->q:Z

    return v0
.end method

.method public final I()Ljava/lang/String;
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 307
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    .line 310
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Lcom/google/android/youtube/core/Analytics;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method public final K()Lcom/google/android/youtube/core/j;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Lcom/google/android/youtube/core/j;

    return-object v0
.end method

.method protected a()V
    .registers 10

    .prologue
    const/16 v5, 0x4e20

    const/16 v4, 0x3c

    const/16 v6, 0x10

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    .line 110
    const-string v0, "youtube"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    const-string v2, "version"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->G()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21f

    move v0, v8

    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->q:Z

    .line 114
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->q:Z

    if-eqz v0, :cond_4c

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "device_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "device_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    :cond_4c
    new-instance v0, Lcom/google/android/youtube/core/utils/q;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->c:Lcom/google/android/youtube/core/utils/q;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->d:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/google/android/youtube/core/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/a;-><init>(Lcom/google/android/youtube/core/BaseApplication;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->e:Ljava/util/concurrent/Executor;

    .line 125
    invoke-static {v6, v4, v8}, Lcom/google/android/youtube/core/BaseApplication;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    .line 126
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v4, v2}, Lcom/google/android/youtube/core/BaseApplication;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->g:Ljava/util/concurrent/Executor;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(Linux; U; Android "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c3

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d3

    const-string v3, " Build/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d3
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->u()Lcom/google/android/youtube/core/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ee

    const-string v3, " Experiment/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ee
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpClient.UserAgent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v8}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v1, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lcom/google/android/youtube/core/converter/http/al;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/al;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->h:Lorg/apache/http/client/HttpClient;

    .line 128
    invoke-static {}, Lcom/google/android/youtube/core/converter/k;->a()Lcom/google/android/youtube/core/converter/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->i:Lcom/google/android/youtube/core/converter/k;

    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->f()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->n:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 132
    new-instance v0, Lcom/google/android/youtube/core/utils/SafeSearch;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/utils/SafeSearch;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->p:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->p:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->u()Lcom/google/android/youtube/core/d;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->l()Z

    move-result v0

    if-eqz v0, :cond_23d

    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23d

    .line 138
    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->p()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_222

    const-string v0, ""

    :goto_1b9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    new-instance v0, Lcom/google/android/youtube/core/client/j;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/youtube/core/d;->m()I

    move-result v6

    const/16 v7, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/client/j;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v1, v0

    .line 153
    :goto_1d8
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->d()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Lcom/google/android/youtube/core/j;

    .line 154
    new-instance v2, Lcom/google/android/youtube/core/utils/e;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/utils/e;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/utils/i;

    .line 156
    new-instance v0, Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/utils/i;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;-><init>(Lcom/google/android/youtube/core/client/c;Lcom/google/android/youtube/core/utils/i;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/Analytics;

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->e()Z

    move-result v0

    if-eqz v0, :cond_215

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.youtube.ManageNetworkUsageActivity"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v8, :cond_215

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-virtual {v1, v0, v8, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 160
    :cond_215
    new-instance v0, Lcom/google/android/youtube/core/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/utils/i;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/e;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/i;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->m:Lcom/google/android/youtube/core/e;

    .line 161
    return-void

    :cond_21f
    move v0, v1

    .line 113
    goto/16 :goto_2b

    .line 139
    :cond_222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b9

    .line 150
    :cond_23d
    new-instance v0, Lcom/google/android/youtube/core/client/ac;

    invoke-direct {v0}, Lcom/google/android/youtube/core/client/ac;-><init>()V

    move-object v1, v0

    goto :goto_1d8
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    const-string v0, "?"

    return-object v0
.end method

.method public final onCreate()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 93
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->r:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->r:Z

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->a()V

    .line 94
    :cond_d
    return-void
.end method

.method public abstract u()Lcom/google/android/youtube/core/d;
.end method

.method public final v()Lcom/google/android/youtube/core/utils/q;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->c:Lcom/google/android/youtube/core/utils/q;

    return-object v0
.end method

.method public final w()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final x()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final y()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->g:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final z()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->h:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method
