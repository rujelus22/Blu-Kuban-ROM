.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;
.super Ljava/lang/Object;
.source "RecommendationsStore.java"


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String;

.field private static final sWriteThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    .line 47
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->CACHE_FILE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->parseNetworkResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getBitmap(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/widget/recommendation/Recommendation;I)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "loader"
    .parameter "item"
    .parameter "maxHeight"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, urlToLoad:Ljava/lang/String;
    new-instance v9, Ljava/util/concurrent/Semaphore;

    invoke-direct {v9, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 209
    .local v9, lock:Ljava/util/concurrent/Semaphore;
    new-array v6, v10, [Landroid/graphics/Bitmap;

    .line 210
    .local v6, bitmap:[Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;

    invoke-direct {v3, v6, v9}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;-><init>([Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v7

    .line 217
    .local v7, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 218
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v6, v4

    .line 230
    :cond_25
    :goto_25
    aget-object v0, v6, v4

    return-object v0

    .line 221
    :cond_28
    :try_start_28
    sget-object v0, Lcom/google/android/finsky/config/G;->recommendationsFetchTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v2, v3, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 223
    const-string v0, "Timed out while fetching %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_47} :catch_48

    goto :goto_25

    .line 225
    :catch_48
    move-exception v8

    .line 226
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted while fetching %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public static getCacheFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 6
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "recs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->CACHE_FILE_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getRecommendations(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .registers 11
    .parameter "context"
    .parameter "dfeApi"
    .parameter "backendId"
    .parameter "library"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, recList:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    invoke-static {p0, p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 67
    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelUtils;->readFromDisk(Ljava/io/File;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #recList:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    check-cast v2, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    .line 68
    .restart local v2       #recList:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    if-eqz v2, :cond_16

    .line 69
    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->removeExpiredRecommendations()I

    .line 73
    :cond_16
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 74
    :cond_1e
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->loadDocumentsFromNetwork(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v2

    .line 76
    :try_start_22
    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/ParcelUtils;->writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 83
    :cond_25
    :goto_25
    return-object v2

    .line 77
    :catch_26
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Unable to cache recs for %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25
.end method

.method public static getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .registers 10
    .parameter "context"
    .parameter "dfeApi"
    .parameter "backendId"
    .parameter "appWidgetId"
    .parameter "library"

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, recList:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    const/4 v2, 0x0

    .line 99
    .local v2, errorString:Ljava/lang/String;
    :try_start_5
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendations(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_51
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_8} :catch_20
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_8} :catch_40

    move-result-object v3

    .line 116
    if-eqz v2, :cond_e

    .line 117
    invoke-static {p0, p3, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    .line 121
    :cond_e
    :goto_e
    return-object v3

    .line 101
    :catch_f
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 103
    const v4, 0x7f0700f7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_51

    move-result-object v2

    .line 116
    if-eqz v2, :cond_e

    .line 117
    invoke-static {p0, p3, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_e

    .line 104
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_20
    move-exception v1

    .line 105
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_21
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 106
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 107
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v4, v0, Lcom/android/volley/VolleyError;

    if-eqz v4, :cond_38

    .line 108
    check-cast v0, Lcom/android/volley/VolleyError;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_51

    move-result-object v2

    .line 116
    :goto_32
    if-eqz v2, :cond_e

    .line 117
    invoke-static {p0, p3, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_e

    .line 110
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_38
    const v4, 0x7f0700f7

    :try_start_3b
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 112
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_40
    move-exception v1

    .line 113
    .local v1, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 114
    const v4, 0x7f0700f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_51

    move-result-object v2

    .line 116
    if-eqz v2, :cond_e

    .line 117
    invoke-static {p0, p3, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_e

    .line 116
    .end local v1           #e:Ljava/util/concurrent/TimeoutException;
    :catchall_51
    move-exception v4

    if-eqz v2, :cond_57

    .line 117
    invoke-static {p0, p3, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    :cond_57
    throw v4
.end method

.method private static loadDocumentsFromNetwork(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .registers 9
    .parameter "context"
    .parameter "dfeApi"
    .parameter "backendId"
    .parameter "library"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    .line 128
    .local v0, future:Lcom/android/volley/toolbox/RequestFuture;,"Lcom/android/volley/toolbox/RequestFuture<Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;>;"
    invoke-interface {p1, p2, v0, v0}, Lcom/google/android/finsky/api/DfeApi;->getRecommendations(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 130
    sget-object v2, Lcom/google/android/finsky/config/G;->recommendationsFetchTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 132
    .local v1, response:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    invoke-static {v1, p2, p3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->parseNetworkResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v2

    return-object v2
.end method

.method private static parseNetworkResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .registers 16
    .parameter "response"
    .parameter "backendId"
    .parameter "library"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocList()Ljava/util/List;

    move-result-object v3

    .line 163
    .local v3, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 164
    const/4 v7, 0x0

    .line 194
    :cond_b
    return-object v7

    .line 167
    :cond_c
    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    .line 168
    .local v2, container:Lcom/google/android/finsky/api/model/Document;
    new-instance v7, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;-><init>(Ljava/lang/String;I)V

    .line 170
    .local v7, recList:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    .line 173
    .local v0, N:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v8

    .line 175
    .local v8, repo:Lcom/google/android/finsky/appstate/PackageStateRepository;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2f
    if-ge v5, v0, :cond_b

    .line 176
    invoke-virtual {v2, v5}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 178
    .local v4, document:Lcom/google/android/finsky/api/model/Document;
    const/4 v6, 0x0

    .line 179
    .local v6, isInstalledApp:Z
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4c

    .line 180
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    .line 181
    .local v1, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v9

    if-eqz v9, :cond_6a

    const/4 v6, 0x1

    .line 184
    .end local v1           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_4c
    :goto_4c
    invoke-static {v4, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v9

    if-nez v9, :cond_54

    if-eqz v6, :cond_6c

    .line 185
    :cond_54
    sget-boolean v9, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v9, :cond_67

    .line 186
    const-string v9, "Already own %s, skipping"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_67
    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 181
    .restart local v1       #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_6a
    const/4 v6, 0x0

    goto :goto_4c

    .line 191
    .end local v1           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_6c
    new-instance v9, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-direct {v9, v4}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v7, v9}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z

    goto :goto_67
.end method

.method public static performBackFill(Lcom/google/android/finsky/api/DfeApi;Landroid/content/Context;Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;I)V
    .registers 8
    .parameter "dfeApi"
    .parameter "context"
    .parameter "oldRecs"
    .parameter "library"
    .parameter "appWidgetId"

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->getBackendId()I

    move-result v0

    new-instance v1, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;-><init>(Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;Landroid/content/Context;I)V

    new-instance v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$2;

    invoke-direct {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$2;-><init>()V

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getRecommendations(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 158
    return-void
.end method
