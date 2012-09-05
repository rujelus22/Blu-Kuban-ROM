.class public Lcom/google/android/apps/plus/network/HttpOperation;
.super Ljava/lang/Object;
.source "HttpOperation.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;,
        Lcom/google/android/apps/plus/network/HttpOperation$SimpleThreadFactory;
    }
.end annotation


# static fields
.field private static final sBufferCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final sExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected static final sHandler:Landroid/os/Handler;

.field private static sSimulateException:Ljava/lang/Exception;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mAborted:Z

.field protected final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAuthTokenType:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private volatile mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

.field private mErrorCode:I

.field private mEx:Ljava/lang/Exception;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

.field private final mMethod:Ljava/lang/String;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRetriesRemaining:I

.field private mThreaded:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_18

    .line 56
    sget-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 61
    :cond_18
    sput-object v4, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sHandler:Landroid/os/Handler;

    .line 88
    new-instance v1, Lcom/google/android/apps/plus/network/HttpOperation$SimpleThreadFactory;

    invoke-direct {v1, v4}, Lcom/google/android/apps/plus/network/HttpOperation$SimpleThreadFactory;-><init>(Lcom/google/android/apps/plus/network/HttpOperation$1;)V

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 89
    sget-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "account"
    .parameter "outputStream"
    .parameter "intent"
    .parameter "listener"
    .parameter "authTokenType"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    .line 139
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mMethod:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 143
    iput-object p5, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    .line 144
    iput-object p6, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mIntent:Landroid/content/Intent;

    .line 145
    iput-object p7, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

    .line 146
    iput-object p8, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAuthTokenType:Ljava/lang/String;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/network/HttpOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static appendEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "url"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    const/16 v1, 0x3f

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 592
    :cond_25
    const/16 v1, 0x26

    goto :goto_10
.end method

.method protected static appendLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 598
    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/network/HttpOperation;->appendEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static appendSyncParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .parameter "url"
    .parameter "sync"

    .prologue
    .line 610
    const-string v1, "sync"

    if-eqz p1, :cond_b

    const-string v0, "1"

    :goto_6
    invoke-static {p0, v1, v0}, Lcom/google/android/apps/plus/network/HttpOperation;->appendEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "0"

    goto :goto_6
.end method

.method private completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 418
    iput p1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    .line 419
    iput-object p2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mReasonPhrase:Ljava/lang/String;

    .line 420
    iput-object p3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

    if-eqz v0, :cond_f

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;->onOperationComplete(Lcom/google/android/apps/plus/network/HttpOperation;)V

    .line 424
    :cond_f
    return-void
.end method

.method private getAuthToken()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAuthTokenType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/AuthData;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readFromStream(Ljava/io/InputStream;ILjava/io/OutputStream;)V
    .registers 11
    .parameter "inputStream"
    .parameter "contentLength"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/plus/network/NetworkException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 519
    :try_start_1
    sget-object v5, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_a} :catch_39

    .line 520
    .local v0, buffer:[B
    const/4 v1, 0x1

    .line 528
    .local v1, bufferFromCache:Z
    :goto_b
    if-ne p1, v7, :cond_40

    .line 529
    :goto_d
    const/4 v5, 0x0

    :try_start_e
    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, bytesRead:I
    if-eq v2, v7, :cond_7e

    .line 530
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_d

    .line 551
    .end local v2           #bytesRead:I
    :catch_1a
    move-exception v4

    .line 552
    .local v4, ex:Ljava/io/IOException;
    :try_start_1b
    new-instance v5, Lcom/google/android/apps/plus/network/NetworkException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_25

    .line 554
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_25
    move-exception v5

    if-eqz v1, :cond_2d

    .line 555
    sget-object v6, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_2d
    if-eqz p0, :cond_32

    .line 560
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 563
    :cond_32
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 564
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_91

    .line 566
    :goto_38
    throw v5

    .line 521
    .end local v0           #buffer:[B
    .end local v1           #bufferFromCache:Z
    :catch_39
    move-exception v4

    .line 522
    .local v4, ex:Ljava/lang/IndexOutOfBoundsException;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 523
    .restart local v0       #buffer:[B
    const/4 v1, 0x0

    .restart local v1       #bufferFromCache:Z
    goto :goto_b

    .line 533
    .end local v4           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_40
    const/4 v3, 0x0

    .line 534
    .local v3, bytesRemaining:I
    move v3, p1

    .line 535
    :cond_42
    :goto_42
    if-lez v3, :cond_71

    .line 536
    const/4 v5, 0x0

    :try_start_45
    array-length v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 538
    .restart local v2       #bytesRead:I
    if-ne v2, v7, :cond_69

    .line 539
    new-instance v5, Lcom/google/android/apps/plus/network/NetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid content length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 540
    :cond_69
    if-lez v2, :cond_42

    .line 541
    sub-int/2addr v3, v2

    .line 542
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_42

    .line 547
    .end local v2           #bytesRead:I
    :cond_71
    :goto_71
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .restart local v2       #bytesRead:I
    if-eq v2, v7, :cond_7e

    .line 548
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7d
    .catchall {:try_start_45 .. :try_end_7d} :catchall_25
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_7d} :catch_1a

    goto :goto_71

    .line 554
    .end local v3           #bytesRemaining:I
    :cond_7e
    if-eqz v1, :cond_85

    .line 555
    sget-object v5, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_85
    if-eqz p0, :cond_8a

    .line 560
    :try_start_87
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 563
    :cond_8a
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 564
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_90} :catch_93

    .line 568
    :goto_90
    return-void

    .line 565
    .end local v2           #bytesRead:I
    :catch_91
    move-exception v6

    goto :goto_38

    .restart local v2       #bytesRead:I
    :catch_93
    move-exception v5

    goto :goto_90
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAborted:Z

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    .line 226
    .local v0, httpTx:Lcom/google/android/apps/plus/network/HttpTransaction;
    if-eqz v0, :cond_a

    .line 227
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->abort()V

    .line 229
    :cond_a
    return-void
.end method

.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 472
    iget v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAborted()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAborted:Z

    return v0
.end method

.method protected isAuthenticationError(Ljava/lang/Exception;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 400
    instance-of v1, p1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_e

    move-object v0, p1

    .line 401
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    .line 402
    .local v0, ex:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 407
    .end local v0           #ex:Lorg/apache/http/client/HttpResponseException;
    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 404
    .restart local v0       #ex:Lorg/apache/http/client/HttpResponseException;
    :pswitch_10
    const/4 v1, 0x1

    goto :goto_f

    .line 402
    :pswitch_data_12
    .packed-switch 0x191
        :pswitch_10
    .end packed-switch
.end method

.method protected isImmediatelyRetryableError(Ljava/lang/Exception;)Z
    .registers 3
    .parameter "ex"

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "cookie"

    .prologue
    .line 296
    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 384
    return-void
.end method

.method public onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I)V
    .registers 6
    .parameter "inputStream"
    .parameter "contentType"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_e

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {p1, p3, v0}, Lcom/google/android/apps/plus/network/HttpOperation;->readFromStream(Ljava/io/InputStream;ILjava/io/OutputStream;)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 289
    :goto_d
    return-void

    .line 284
    :cond_e
    if-eqz p2, :cond_14

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_d

    .line 287
    :cond_14
    const-string v0, "HttpTransaction"

    const-string v1, "Content type not specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public final onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 323
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->isImmediatelyRetryableError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    if-lez v2, :cond_3a

    .line 325
    :try_start_a
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 328
    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAuthTokenType:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1d
    const-string v2, "HttpTransaction"

    const-string v3, "====> Restarting operation..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->start()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    .line 360
    :goto_2d
    return-void

    .line 337
    :catch_2e
    move-exception v0

    .line 338
    .local v0, aex:Ljava/lang/Exception;
    const-string v2, "HttpTransaction"

    const-string v3, "====> Retry failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    move-object p3, v0

    .line 344
    .end local v0           #aex:Ljava/lang/Exception;
    :cond_3a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 346
    move-object v1, p3

    .line 347
    .local v1, fex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mThreaded:Z

    if-eqz v2, :cond_4d

    .line 348
    sget-object v2, Lcom/google/android/apps/plus/network/HttpOperation;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/plus/network/HttpOperation$2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/apps/plus/network/HttpOperation$2;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    .line 358
    :cond_4d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/plus/network/HttpOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2d
.end method

.method public onHttpUploadProgress(JJ)V
    .registers 5
    .parameter "position"
    .parameter "length"

    .prologue
    .line 303
    return-void
.end method

.method public onStartResultProcessing()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->onStartResultProcessing()V

    .line 215
    :cond_9
    return-void
.end method

.method protected prepareHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 3
    .parameter "metrics"

    .prologue
    .line 240
    if-eqz p1, :cond_d

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    .line 243
    :cond_d
    return-void
.end method

.method public final start()V
    .registers 4

    .prologue
    .line 153
    const-string v1, "HttpTransaction"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 154
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    .line 155
    .local v0, metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/HttpOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 156
    const-string v1, "HttpTransaction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0           #metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    :goto_18
    return-void

    .line 158
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/network/HttpOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    goto :goto_18
.end method

.method public start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 19
    .parameter "metrics"

    .prologue
    .line 167
    :try_start_0
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 168
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting op: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, authToken:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/network/HttpOperation;->createPostData()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 174
    .local v7, postData:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/network/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, userAgent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/network/ClientVersion;->from(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, clientVersion:Ljava/lang/String;
    if-eqz v7, :cond_6b

    .line 177
    new-instance v1, Lcom/google/android/apps/plus/network/HttpTransaction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/plus/network/HttpTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V

    .line 184
    .local v1, httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    :goto_52
    sget-object v2, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    if-nez v2, :cond_c0

    .line 185
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/plus/network/HttpOperation;->prepareHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->setHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 187
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_8e

    .line 189
    :try_start_62
    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/HttpTransaction;->execute()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_7f

    .line 197
    const/4 v2, 0x0

    :try_start_66
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    .line 209
    .end local v1           #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .end local v4           #authToken:Ljava/lang/String;
    .end local v5           #userAgent:Ljava/lang/String;
    .end local v6           #clientVersion:Ljava/lang/String;
    .end local v7           #postData:Lorg/apache/http/HttpEntity;
    :goto_6a
    return-void

    .line 180
    .restart local v4       #authToken:Ljava/lang/String;
    .restart local v5       #userAgent:Ljava/lang/String;
    .restart local v6       #clientVersion:Ljava/lang/String;
    .restart local v7       #postData:Lorg/apache/http/HttpEntity;
    :cond_6b
    new-instance v1, Lcom/google/android/apps/plus/network/HttpTransaction;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    move-object v8, v1

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v14, p0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/apps/plus/network/HttpTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7e} :catch_8e

    .restart local v1       #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    goto :goto_52

    .line 190
    :catch_7f
    move-exception v16

    .line 193
    .local v16, t:Ljava/lang/Exception;
    :try_start_80
    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/HttpTransaction;->isAborted()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 194
    throw v16
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_87

    .line 197
    .end local v16           #t:Ljava/lang/Exception;
    :catchall_87
    move-exception v2

    const/4 v3, 0x0

    :try_start_89
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    throw v2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_8e

    .line 202
    .end local v1           #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .end local v4           #authToken:Ljava/lang/String;
    .end local v5           #userAgent:Ljava/lang/String;
    .end local v6           #clientVersion:Ljava/lang/String;
    .end local v7           #postData:Lorg/apache/http/HttpEntity;
    :catch_8e
    move-exception v15

    .line 203
    .local v15, ex:Ljava/lang/Exception;
    const-string v2, "HttpTransaction"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 204
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HttpOperation failed "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_b2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v15}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6a

    .line 197
    .end local v15           #ex:Ljava/lang/Exception;
    .restart local v1       #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .restart local v4       #authToken:Ljava/lang/String;
    .restart local v5       #userAgent:Ljava/lang/String;
    .restart local v6       #clientVersion:Ljava/lang/String;
    .restart local v7       #postData:Lorg/apache/http/HttpEntity;
    .restart local v16       #t:Ljava/lang/Exception;
    :cond_ba
    const/4 v2, 0x0

    :try_start_bb
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    goto :goto_6a

    .line 200
    .end local v16           #t:Ljava/lang/Exception;
    :cond_c0
    sget-object v2, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    throw v2
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c3} :catch_8e
.end method

.method public startThreaded()V
    .registers 3

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mThreaded:Z

    .line 255
    sget-object v0, Lcom/google/android/apps/plus/network/HttpOperation;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/apps/plus/network/HttpOperation$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/network/HttpOperation$1;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method
