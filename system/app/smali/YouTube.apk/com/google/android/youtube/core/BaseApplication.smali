.class public abstract Lcom/google/android/youtube/core/BaseApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/a;
.implements Lcom/google/android/youtube/core/e;
.implements Lcom/google/android/youtube/core/player/ao;
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/youtube/core/utils/ab;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Ljava/util/concurrent/Executor;

.field private h:Lorg/apache/http/client/HttpClient;

.field private i:Lorg/apache/http/client/HttpClient;

.field private j:Lcom/google/android/youtube/core/converter/k;

.field private k:Landroid/content/SharedPreferences;

.field private l:Lcom/google/android/youtube/core/j;

.field private m:Lcom/google/android/youtube/core/player/an;

.field private n:Lcom/google/android/youtube/core/player/e;

.field private o:Lcom/google/android/youtube/core/utils/k;

.field private p:Lcom/google/android/youtube/core/d;

.field private q:Lcom/google/android/youtube/core/async/a;

.field private r:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private s:Lcom/google/android/youtube/core/Analytics;

.field private t:Lcom/google/android/youtube/core/utils/SafeSearch;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/BaseApplication;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/youtube/core/j;
    .registers 5
    .parameter

    .prologue
    .line 468
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_17

    .line 469
    const-string v0, "com.google.android.youtube.core.f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/j;

    .line 477
    :goto_16
    return-object v0

    .line 473
    :cond_17
    const-string v0, "com.google.android.youtube.coreicecream.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 476
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 477
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/j;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_16

    .line 479
    :catch_36
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create PlatformUtil object"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(III)Ljava/util/concurrent/Executor;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/youtube/core/utils/s;

    invoke-direct {v7, p2}, Lcom/google/android/youtube/core/utils/s;-><init>(I)V

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .registers 7
    .parameter

    .prologue
    const/16 v2, 0x4e20

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpClient.UserAgent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 406
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 409
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 411
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 412
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 413
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 414
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gzip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 417
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 418
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 419
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 420
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 421
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 422
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 423
    new-instance v0, Lcom/google/android/youtube/core/converter/http/az;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/az;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 424
    return-object v1
.end method

.method private d()Lcom/google/android/youtube/core/async/bf;
    .registers 3

    .prologue
    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_16

    .line 495
    :cond_10
    new-instance v0, Lcom/google/android/youtube/core/async/ad;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/ad;-><init>()V

    .line 501
    :goto_15
    return-object v0

    .line 499
    :cond_16
    :try_start_16
    const-string v0, "com.google.android.youtube.coreicecream.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bf;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    goto :goto_15

    .line 502
    :catch_23
    move-exception v0

    .line 503
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract E()Lcom/google/android/youtube/core/c;
.end method

.method public final F()Lcom/google/android/youtube/core/Analytics;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->s:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method public final G()Lcom/google/android/youtube/core/utils/ab;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->c:Lcom/google/android/youtube/core/utils/ab;

    return-object v0
.end method

.method public final H()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final I()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final J()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->g:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final K()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->h:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public final L()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->i:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public final M()Lcom/google/android/youtube/core/converter/k;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Lcom/google/android/youtube/core/converter/k;

    return-object v0
.end method

.method public final N()Lcom/google/android/youtube/core/d;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->p:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method public final O()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final P()Lcom/google/android/youtube/core/async/a;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->q:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method

.method public final Q()Lcom/google/android/youtube/core/async/UserAuthorizer;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->r:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method public final R()Lcom/google/android/youtube/core/utils/SafeSearch;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->t:Lcom/google/android/youtube/core/utils/SafeSearch;

    return-object v0
.end method

.method public final S()Lcom/google/android/youtube/core/player/an;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->m:Lcom/google/android/youtube/core/player/an;

    return-object v0
.end method

.method public final T()Lcom/google/android/youtube/core/player/e;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->n:Lcom/google/android/youtube/core/player/e;

    return-object v0
.end method

.method public final U()Lcom/google/android/youtube/core/utils/k;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/utils/k;

    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .registers 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 337
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

    .line 342
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    .line 344
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    :goto_17
    return-object v0

    .line 338
    :catch_18
    move-exception v0

    .line 339
    const-string v1, "could not retrieve application version name"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->a:Ljava/lang/String;

    goto :goto_17
.end method

.method public final W()Ljava/lang/String;
    .registers 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 351
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_1c

    move-result-object v0

    .line 356
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    .line 358
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    :goto_1b
    return-object v0

    .line 352
    :catch_1c
    move-exception v0

    .line 353
    const-string v1, "could not retrieve application version code"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->b:Ljava/lang/String;

    goto :goto_1b
.end method

.method public final X()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->u:Z

    return v0
.end method

.method public final Y()Lcom/google/android/youtube/core/j;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/j;

    return-object v0
.end method

.method protected a()V
    .registers 10

    .prologue
    const/16 v4, 0x3c

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    .line 129
    const-string v1, "youtube"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Landroid/content/SharedPreferences;

    .line 130
    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Landroid/content/SharedPreferences;

    const-string v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->V()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    move v0, v8

    :cond_27
    iput-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->u:Z

    .line 133
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->u:Z

    if-eqz v0, :cond_48

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 140
    :cond_48
    new-instance v0, Lcom/google/android/youtube/core/utils/ab;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->c:Lcom/google/android/youtube/core/utils/ab;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->d:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/google/android/youtube/core/b;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/b;-><init>(Lcom/google/android/youtube/core/BaseApplication;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->e:Ljava/util/concurrent/Executor;

    .line 143
    const/16 v0, 0x10

    invoke-static {v0, v4, v8}, Lcom/google/android/youtube/core/BaseApplication;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    .line 144
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v4, v1}, Lcom/google/android/youtube/core/BaseApplication;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->g:Ljava/util/concurrent/Executor;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.youtube"

    const-string v3, "com.google.android.youtube"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c9

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c9
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d9

    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d9
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->E()Lcom/google/android/youtube/core/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f4

    const-string v2, " Experiment/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/google/android/youtube/core/BaseApplication;->a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->h:Lorg/apache/http/client/HttpClient;

    .line 147
    new-instance v1, Lcom/google/android/youtube/core/utils/ad;

    invoke-direct {v1}, Lcom/google/android/youtube/core/utils/ad;-><init>()V

    const-string v2, "redirectHandler cannot be null"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/youtube/core/BaseApplication;->a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->i:Lorg/apache/http/client/HttpClient;

    .line 148
    invoke-static {}, Lcom/google/android/youtube/core/converter/k;->a()Lcom/google/android/youtube/core/converter/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->j:Lcom/google/android/youtube/core/converter/k;

    .line 150
    new-instance v0, Lcom/google/android/youtube/core/async/a;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/async/a;-><init>(Landroid/accounts/AccountManager;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->q:Lcom/google/android/youtube/core/async/a;

    .line 151
    new-instance v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->q:Lcom/google/android/youtube/core/async/a;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;->d()Lcom/google/android/youtube/core/async/bf;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Lcom/google/android/youtube/core/async/a;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/bf;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->r:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 154
    new-instance v0, Lcom/google/android/youtube/core/utils/SafeSearch;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->k:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/utils/SafeSearch;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->t:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->t:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->E()Lcom/google/android/youtube/core/c;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1f8

    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f8

    .line 160
    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->r()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->V()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e1

    const-string v0, ""

    :goto_16c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v0, Lcom/google/android/youtube/core/b/h;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->f:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/youtube/core/c;->o()I

    move-result v6

    const/16 v7, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/b/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v1, v0

    .line 175
    :goto_18b
    invoke-static {p0}, Lcom/google/android/youtube/core/BaseApplication;->a(Landroid/content/Context;)Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/j;

    .line 176
    new-instance v2, Lcom/google/android/youtube/core/utils/g;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/utils/g;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/utils/k;

    .line 178
    new-instance v0, Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/utils/k;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;-><init>(Lcom/google/android/youtube/core/b/b;Lcom/google/android/youtube/core/utils/k;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->s:Lcom/google/android/youtube/core/Analytics;

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1c8

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.youtube.ManageNetworkUsageActivity"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v8, :cond_1c8

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-virtual {v1, v0, v8, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 182
    :cond_1c8
    new-instance v0, Lcom/google/android/youtube/core/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/utils/k;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/d;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/k;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->p:Lcom/google/android/youtube/core/d;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->b()Lcom/google/android/youtube/core/player/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->m:Lcom/google/android/youtube/core/player/an;

    .line 184
    new-instance v0, Lcom/google/android/youtube/core/player/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->c:Lcom/google/android/youtube/core/utils/ab;

    invoke-direct {v0, v1, v8}, Lcom/google/android/youtube/core/player/e;-><init>(Lcom/google/android/youtube/core/utils/d;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->n:Lcom/google/android/youtube/core/player/e;

    .line 185
    return-void

    .line 161
    :cond_1e1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16c

    .line 172
    :cond_1f8
    new-instance v0, Lcom/google/android/youtube/core/b/ad;

    invoke-direct {v0}, Lcom/google/android/youtube/core/b/ad;-><init>()V

    move-object v1, v0

    goto :goto_18b
.end method

.method protected b()Lcom/google/android/youtube/core/player/an;
    .registers 6

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/youtube/core/player/r;

    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->o:Lcom/google/android/youtube/core/utils/k;

    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->l:Lcom/google/android/youtube/core/j;

    invoke-interface {v2, p0}, Lcom/google/android/youtube/core/j;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->E()Lcom/google/android/youtube/core/c;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/youtube/core/c;->s()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/player/r;-><init>(Lcom/google/android/youtube/core/utils/k;ZZZ)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    const-string v0, "?"

    return-object v0
.end method

.method public final onCreate()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 112
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->v:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->v:Z

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->a()V

    .line 113
    :cond_d
    return-void
.end method
