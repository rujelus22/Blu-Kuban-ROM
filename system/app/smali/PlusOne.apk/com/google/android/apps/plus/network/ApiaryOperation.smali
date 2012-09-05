.class public Lcom/google/android/apps/plus/network/ApiaryOperation;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;,
        Lcom/google/android/apps/plus/network/ApiaryOperation$SimpleThreadFactory;,
        Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;,
        Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;,
        Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;,
        Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;,
        Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;
    }
.end annotation


# static fields
.field private static final sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static final sHandler:Landroid/os/Handler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private final mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mEx:Ljava/lang/Exception;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;

.field private mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRetriesRemaining:I

.field private mThreaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 353
    const-string v0, "ApiaryOperation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 354
    const-string v0, "com.google.api.client.http"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 359
    :cond_14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryOperation;->sHandler:Landroid/os/Handler;

    .line 383
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryOperation$SimpleThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/ApiaryOperation$SimpleThreadFactory;-><init>(Lcom/google/android/apps/plus/network/ApiaryOperation$1;)V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryOperation;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 384
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryOperation;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryOperation;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "info"
    .parameter "listener"
    .parameter "operation"

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mThreaded:Z

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRetriesRemaining:I

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mErrorCode:I

    .line 427
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mContext:Landroid/content/Context;

    .line 428
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 429
    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mIntent:Landroid/content/Intent;

    .line 430
    iput-object p4, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 431
    iput-object p5, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mListener:Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;

    .line 432
    iput-object p6, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    .line 433
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 62
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpRequestInitializer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(J)[B
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->longToByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([B)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->makeUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->restart()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/network/ApiaryOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/network/ApiaryOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .registers 5
    .parameter "arr"

    .prologue
    .line 501
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_30

    .line 504
    .local v0, hexChars:[C
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 505
    .local v2, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v3, p0

    if-ge v1, v3, :cond_2a

    .line 506
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 510
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 501
    nop

    :array_30
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 746
    iput p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mErrorCode:I

    .line 747
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mReasonPhrase:Ljava/lang/String;

    .line 748
    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mEx:Ljava/lang/Exception;

    .line 749
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mListener:Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;

    if-eqz v0, :cond_f

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mListener:Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;->onOperationComplete(Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    .line 752
    :cond_f
    return-void
.end method

.method private static createHttpRequestInitializer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;
    .registers 14
    .parameter "context"
    .parameter "authToken"
    .parameter "authTime"
    .parameter "containerUrl"
    .parameter "sdkVersion"
    .parameter "backendOverrideUrl"

    .prologue
    .line 527
    new-instance v7, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-direct {v7, p1, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V

    .line 530
    .local v7, authInitializer:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/ApiaryOperation$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;)V

    return-object v0
.end method

.method private createHttpTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 5

    .prologue
    .line 658
    const/16 v0, 0x8

    .line 664
    .local v0, FROYO_VERSION_CODE:I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_e

    .line 665
    new-instance v1, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    .line 669
    .local v1, transport:Lcom/google/api/client/http/HttpTransport;
    :goto_d
    return-object v1

    .line 667
    .end local v1           #transport:Lcom/google/api/client/http/HttpTransport;
    :cond_e
    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v1}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .restart local v1       #transport:Lcom/google/api/client/http/HttpTransport;
    goto :goto_d
.end method

.method public static getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;
    .registers 8
    .parameter "info"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 446
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object p0

    .line 449
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getCertificate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getCertificate()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, certHash:Ljava/lang/String;
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, clientId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, apiKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, pkg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apps.googleusercontent.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 457
    .local v1, builder:Landroid/net/Uri$Builder;
    if-eqz v3, :cond_4c

    .line 458
    const-string v5, "client_id"

    invoke-virtual {v1, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 460
    :cond_4c
    if-eqz v0, :cond_53

    .line 461
    const-string v5, "api_key"

    invoke-virtual {v1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 463
    :cond_53
    if-eqz v4, :cond_5a

    .line 464
    const-string v5, "pkg"

    invoke-virtual {v1, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 466
    :cond_5a
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 449
    .end local v0           #apiKey:Ljava/lang/String;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v2           #certHash:Ljava/lang/String;
    .end local v3           #clientId:Ljava/lang/String;
    .end local v4           #pkg:Ljava/lang/String;
    :cond_63
    const-string v2, "0"

    goto :goto_14
.end method

.method private isAuthenticationError(Ljava/lang/Exception;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 735
    instance-of v0, p1, Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;

    return v0
.end method

.method private isImmediatelyRetryableError(Ljava/lang/Exception;)Z
    .registers 3
    .parameter "ex"

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method private static longToByteArray(J)[B
    .registers 6
    .parameter "l"

    .prologue
    .line 486
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 487
    .local v0, bArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 488
    .local v1, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 489
    .local v2, lBuffer:Ljava/nio/LongBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0, p1}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 490
    return-object v0
.end method

.method private static makeUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "sdkVersion"

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/apps/plus/network/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "; G+ SDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    if-nez p1, :cond_12

    const-string p1, "1.0.0"

    .end local p1
    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 681
    invoke-direct {p0, p3}, Lcom/google/android/apps/plus/network/ApiaryOperation;->isImmediatelyRetryableError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRetriesRemaining:I

    if-lez v2, :cond_55

    .line 683
    :try_start_a
    invoke-direct {p0, p3}, Lcom/google/android/apps/plus/network/ApiaryOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v2, :cond_29

    .line 686
    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    invoke-interface {v2}, Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 689
    :cond_29
    const-string v2, "ApiaryOperation"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 690
    const-string v2, "ApiaryOperation"

    const-string v3, "====> Restarting operation..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_39
    iget v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRetriesRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRetriesRemaining:I

    .line 693
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->restart()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_43

    .line 719
    :goto_42
    return-void

    .line 697
    :catch_43
    move-exception v0

    .line 698
    .local v0, aex:Ljava/lang/Exception;
    const-string v2, "ApiaryOperation"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 699
    const-string v2, "ApiaryOperation"

    const-string v3, "====> Retry failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    :cond_54
    move-object p3, v0

    .line 705
    .end local v0           #aex:Ljava/lang/Exception;
    :cond_55
    move-object v1, p3

    .line 706
    .local v1, fex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mThreaded:Z

    if-eqz v2, :cond_65

    .line 707
    sget-object v2, Lcom/google/android/apps/plus/network/ApiaryOperation;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/plus/network/ApiaryOperation$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/apps/plus/network/ApiaryOperation$3;-><init>(Lcom/google/android/apps/plus/network/ApiaryOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 717
    :cond_65
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_42
.end method

.method private restart()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    .line 574
    :try_start_1
    const-string v3, "ApiaryOperation"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 575
    const-string v3, "ApiaryOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting op: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_22
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v3, :cond_54

    .line 579
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    invoke-interface {v3}, Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->getAuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, authToken:Ljava/lang/String;
    :goto_3c
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v4

    new-instance v5, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v5}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;->performApiaryCalls(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Lcom/google/api/client/json/JsonFactory;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 587
    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/apps/plus/network/ApiaryOperation;->onComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_56

    .line 604
    .end local v0           #authToken:Ljava/lang/String;
    :goto_53
    return-void

    .line 582
    :cond_54
    const/4 v0, 0x0

    .restart local v0       #authToken:Ljava/lang/String;
    goto :goto_3c

    .line 588
    .end local v0           #authToken:Ljava/lang/String;
    :catch_56
    move-exception v2

    .line 589
    .local v2, ex:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 590
    const-string v3, "ApiaryOperation"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 591
    const-string v3, "ApiaryOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApiaryOperation auth failure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_7d
    :goto_7d
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    invoke-interface {v3}, Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;->getErrorCode()I

    move-result v1

    .line 597
    .local v1, errorCode:I
    if-nez v1, :cond_8a

    .line 598
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_b6

    const/4 v1, -0x1

    .line 602
    :cond_8a
    :goto_8a
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    invoke-interface {v3}, Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->onComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_53

    .line 593
    .end local v1           #errorCode:I
    :cond_94
    const-string v3, "ApiaryOperation"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 594
    const-string v3, "ApiaryOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApiaryOperation failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 598
    .restart local v1       #errorCode:I
    :cond_b6
    const/4 v1, -0x2

    goto :goto_8a
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 635
    iget v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mErrorCode:I

    return v0
.end method

.method public getEx()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mEx:Ljava/lang/Exception;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOperation()Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mOperation:Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .registers 2

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mThreaded:Z

    .line 612
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->restart()V

    .line 613
    return-void
.end method

.method public startThreaded()V
    .registers 3

    .prologue
    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mThreaded:Z

    .line 621
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryOperation;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryOperation$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$2;-><init>(Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method
