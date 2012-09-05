.class public abstract Lcom/google/android/apps/books/app/BooksApplication;
.super Landroid/app/Application;
.source "BooksApplication.java"

# interfaces
.implements Lcom/google/android/apps/books/common/BooksContext;


# instance fields
.field private mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mDeveloperKeySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;

.field private mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

.field private mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mPlusOneControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/plus1/PlusOneController;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private mVolumeCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 104
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mPlusOneControllers:Ljava/util/Map;

    .line 264
    new-instance v0, Lcom/google/android/apps/books/app/BooksApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BooksApplication$1;-><init>(Lcom/google/android/apps/books/app/BooksApplication;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mDeveloperKeySupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static getAccountsWithPlusOneData(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 293
    .local v3, filesDir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v8, "p1s"

    invoke-direct {v6, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v6, plusOnesDir:Ljava/io/File;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 295
    .local v7, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, contents:[Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 297
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_18
    if-ge v4, v5, :cond_22

    aget-object v2, v0, v4

    .line 298
    .local v2, filename:Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 301
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_22
    return-object v7
.end method

.method public static getApiaryClient(Landroid/content/Context;)Lcom/google/android/apps/books/api/ApiaryClient;
    .registers 2
    .parameter "context"

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getApiaryClient()Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v0

    return-object v0
.end method

.method public static getBooksApplication(Landroid/content/Context;)Lcom/google/android/apps/books/app/BooksApplication;
    .registers 2
    .parameter "context"

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    return-object v0
.end method

.method public static getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;
    .registers 2
    .parameter "context"

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig()Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 8

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_78

    .line 184
    :goto_7
    monitor-exit p0

    return-object v3

    .line 155
    :cond_9
    :try_start_9
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 157
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x4e20

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 158
    const/16 v3, 0x4e20

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 159
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 161
    const/4 v3, 0x5

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    invoke-static {p0}, Lcom/google/android/apps/books/net/HttpUtils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, agent:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 166
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 167
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 169
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 172
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 177
    new-instance v3, Lcom/google/android/apps/books/net/BooksHttpClient;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lcom/google/android/apps/books/net/BooksHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Ljava/io/File;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;

    .line 181
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;

    new-instance v4, Lcom/google/android/apps/books/net/CurlInterceptor;

    invoke-direct {v4}, Lcom/google/android/apps/books/net/CurlInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/net/BooksHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 182
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;

    new-instance v4, Lcom/google/android/apps/books/net/GoogleRedirectHandler;

    invoke-direct {v4}, Lcom/google/android/apps/books/net/GoogleRedirectHandler;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/net/BooksHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 184
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lcom/google/android/apps/books/net/BooksHttpClient;
    :try_end_77
    .catchall {:try_start_9 .. :try_end_77} :catchall_78

    goto :goto_7

    .line 153
    .end local v0           #agent:Ljava/lang/String;
    .end local v1           #params:Lorg/apache/http/params/HttpParams;
    .end local v2           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_78
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static getPlusOnePathForAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/books/app/BooksApplication;->getRelativePlusOnePathForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRelativePlusOnePathForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "accountName"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p1s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResponseGetter(Landroid/content/Context;)Lcom/google/android/apps/books/net/ResponseGetter;
    .registers 2
    .parameter "context"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionKeyFactory(Landroid/content/Context;)Lcom/google/android/apps/books/util/SessionKeyFactory;
    .registers 2
    .parameter "context"

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 347
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getBooksApplication(Landroid/content/Context;)Lcom/google/android/apps/books/app/BooksApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/books/app/BooksApplication;->isAccessibilityEnabled_(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isScreenReaderActive(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 354
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getBooksApplication(Landroid/content/Context;)Lcom/google/android/apps/books/app/BooksApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/books/app/BooksApplication;->isScreenReaderActive_(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static runningOnIcsOrLater()Z
    .registers 2

    .prologue
    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public declared-synchronized getApiaryClient()Lcom/google/android/apps/books/api/ApiaryClient;
    .registers 7

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2c

    .line 211
    :goto_7
    monitor-exit p0

    return-object v3

    .line 205
    :cond_9
    :try_start_9
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 206
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/app/BooksApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 208
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/google/android/apps/books/net/HttpHelper;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/books/net/HttpHelper;-><init>(Landroid/net/ConnectivityManager;Landroid/accounts/AccountManager;)V

    .line 209
    .local v2, httpHelper:Lcom/google/android/apps/books/net/HttpHelper;
    new-instance v3, Lcom/google/android/apps/books/api/ApiaryClient;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->getDeveloperKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/apps/books/api/ApiaryClient;-><init>(Lcom/google/android/apps/books/net/HttpHelper;Lcom/google/android/apps/books/util/SessionKeyFactory;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 211
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_2c

    goto :goto_7

    .line 204
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #httpHelper:Lcom/google/android/apps/books/net/HttpHelper;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getConfig()Lcom/google/android/apps/books/util/Config;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mConfig:Lcom/google/android/apps/books/util/Config;

    return-object v0
.end method

.method public declared-synchronized getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;
    .registers 2

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageManager()Lcom/google/android/apps/books/common/ImageManager;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

    return-object v0
.end method

.method public getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;
    .registers 11
    .parameter "accountName"

    .prologue
    .line 308
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksApplication;->mPlusOneControllers:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/PlusOneController;

    .line 309
    .local v4, result:Lcom/google/android/plus1/PlusOneController;
    if-nez v4, :cond_37

    .line 310
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 311
    .local v0, accountManager:Landroid/accounts/AccountManager;
    new-instance v1, Lcom/google/android/plus1/ApiaryPlusOneApi;

    new-instance v7, Landroid/accounts/Account;

    const-string v8, "com.google"

    invoke-direct {v7, p1, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/google/android/apps/books/app/BooksApplication;->mDeveloperKeySupplier:Lcom/google/common/base/Supplier;

    invoke-direct {v1, v0, v7, v8}, Lcom/google/android/plus1/ApiaryPlusOneApi;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/Supplier;)V

    .line 315
    .local v1, api:Lcom/google/android/plus1/PlusOneModel;
    invoke-static {p1}, Lcom/google/android/apps/books/app/BooksApplication;->getRelativePlusOnePathForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, relativePath:Ljava/lang/String;
    new-instance v5, Lcom/google/android/plus1/PlusOneProtoStore;

    invoke-direct {v5, p0, v3}, Lcom/google/android/plus1/PlusOneProtoStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    .local v5, store:Lcom/google/android/plus1/PlusOneStore;
    invoke-static {}, Lcom/google/android/apps/books/util/HandlerExecutor;->getUiThreadExecutor()Lcom/google/android/apps/books/util/HandlerExecutor;

    move-result-object v6

    .line 320
    .local v6, uiThreadExecutor:Ljava/util/concurrent/Executor;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 321
    .local v2, backgroundExecutor:Ljava/util/concurrent/Executor;
    new-instance v4, Lcom/google/android/plus1/PlusOneController;

    .end local v4           #result:Lcom/google/android/plus1/PlusOneController;
    invoke-direct {v4, v1, v5, v6, v2}, Lcom/google/android/plus1/PlusOneController;-><init>(Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 322
    .restart local v4       #result:Lcom/google/android/plus1/PlusOneController;
    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksApplication;->mPlusOneControllers:Ljava/util/Map;

    invoke-interface {v7, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #api:Lcom/google/android/plus1/PlusOneModel;
    .end local v2           #backgroundExecutor:Ljava/util/concurrent/Executor;
    .end local v3           #relativePath:Ljava/lang/String;
    .end local v5           #store:Lcom/google/android/plus1/PlusOneStore;
    .end local v6           #uiThreadExecutor:Ljava/util/concurrent/Executor;
    :cond_37
    return-object v4
.end method

.method public declared-synchronized getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;
    .registers 6

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    .line 196
    :goto_7
    monitor-exit p0

    return-object v3

    .line 190
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 191
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 192
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/app/BooksApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 194
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    new-instance v3, Lcom/google/android/apps/books/net/ResponseGetter;

    new-instance v4, Lcom/google/android/apps/books/net/HttpHelper;

    invoke-direct {v4, v1, v0}, Lcom/google/android/apps/books/net/HttpHelper;-><init>(Landroid/net/ConnectivityManager;Landroid/accounts/AccountManager;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/apps/books/net/ResponseGetter;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/apps/books/net/HttpHelper;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 196
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    goto :goto_7

    .line 189
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;
    .registers 6

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksApplication;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksApplication;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    .line 223
    :goto_7
    monitor-exit p0

    return-object v2

    .line 220
    :cond_9
    move-object v1, p0

    .line 221
    .local v1, context:Landroid/content/Context;
    :try_start_a
    invoke-static {v1}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateAppInfo(Landroid/content/Context;)[B

    move-result-object v0

    .line 222
    .local v0, appInfo:[B
    new-instance v2, Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/apps/books/util/SessionKeyFactory;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;[B)V

    iput-object v2, p0, Lcom/google/android/apps/books/app/BooksApplication;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksApplication;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    goto :goto_7

    .line 219
    .end local v0           #appInfo:[B
    .end local v1           #context:Landroid/content/Context;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;
.end method

.method public getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mVolumeCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    return-object v0
.end method

.method protected isAccessibilityEnabled_(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/apps/books/util/AccessibilityUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isScreenReaderActive_(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 370
    invoke-static {p1}, Lcom/google/android/apps/books/util/AccessibilityUtils;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 110
    new-instance v0, Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/common/FileStorageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/books/service/SetSyncableService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    new-instance v0, Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/app/BooksImageManager;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

    .line 122
    invoke-static {p0}, Lcom/google/android/apps/books/util/Config;->buildFrom(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 124
    new-instance v6, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig()Lcom/google/android/apps/books/util/Config;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v6, v0}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    iput-object v6, p0, Lcom/google/android/apps/books/app/BooksApplication;->mVolumeCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 127
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksImageManager;->onLowMemory()V

    .line 145
    return-void
.end method

.method public onTerminate()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 137
    :cond_9
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 138
    return-void
.end method
