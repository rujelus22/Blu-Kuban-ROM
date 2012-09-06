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

.field protected final mContext:Landroid/content/Context;

.field private volatile mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

.field private mErrorCode:I

.field private mEx:Ljava/lang/Exception;

.field private final mHttpRequestConfig:Lcom/google/android/apps/plus/network/HttpRequestConfiguration;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

.field private final mMethod:Ljava/lang/String;

.field private mOutputStream:Ljava/io/OutputStream;

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

    .line 55
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_18

    .line 58
    sget-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 63
    :cond_18
    sput-object v4, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sHandler:Landroid/os/Handler;

    .line 90
    new-instance v1, Lcom/google/android/apps/plus/network/HttpOperation$SimpleThreadFactory;

    invoke-direct {v1, v4}, Lcom/google/android/apps/plus/network/HttpOperation$SimpleThreadFactory;-><init>(Lcom/google/android/apps/plus/network/HttpOperation$1;)V

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 91
    sget-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "account"
    .parameter "outputStream"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 139
    new-instance v4, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;

    invoke-direct {v4, p1, p4}, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 10
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "config"
    .parameter "account"
    .parameter "outputStream"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    .line 158
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mMethod:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mHttpRequestConfig:Lcom/google/android/apps/plus/network/HttpRequestConfiguration;

    .line 162
    iput-object p5, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 163
    iput-object p6, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    .line 164
    iput-object p7, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mIntent:Landroid/content/Intent;

    .line 165
    iput-object p8, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

    .line 166
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/network/HttpOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static appendEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "url"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    const/16 v1, 0x3f

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 696
    :cond_25
    const/16 v1, 0x26

    goto :goto_10
.end method

.method protected static appendLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 702
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
    .line 714
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
    .line 449
    iput p1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    .line 450
    iput-object p2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mReasonPhrase:Ljava/lang/String;

    .line 451
    iput-object p3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

    if-eqz v0, :cond_f

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mListener:Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;->onOperationComplete(Lcom/google/android/apps/plus/network/HttpOperation;)V

    .line 455
    :cond_f
    return-void
.end method

.method public static isConnectionError(Ljava/lang/Exception;)Z
    .registers 3
    .parameter "ex"

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p0, :cond_4

    .line 561
    :cond_3
    :goto_3
    return v0

    .line 556
    :cond_4
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 558
    instance-of v1, p0, Lorg/apache/http/client/HttpResponseException;

    if-nez v1, :cond_3

    .line 561
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static readFromStream(Ljava/io/InputStream;ILjava/io/OutputStream;)V
    .registers 11
    .parameter "inputStream"
    .parameter "contentLength"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/plus/network/NetworkException;,
            Lcom/google/android/apps/plus/network/MemoryException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 621
    :try_start_1
    sget-object v5, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_a} :catch_39

    .line 622
    .local v0, buffer:[B
    const/4 v1, 0x1

    .line 630
    .local v1, bufferFromCache:Z
    :goto_b
    if-ne p1, v7, :cond_40

    .line 631
    :goto_d
    const/4 v5, 0x0

    :try_start_e
    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, bytesRead:I
    if-eq v2, v7, :cond_89

    .line 632
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_19} :catch_69

    goto :goto_d

    .line 653
    .end local v2           #bytesRead:I
    :catch_1a
    move-exception v4

    .line 654
    .local v4, ex:Ljava/io/IOException;
    :try_start_1b
    new-instance v5, Lcom/google/android/apps/plus/network/NetworkException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_25

    .line 658
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_25
    move-exception v5

    if-eqz v1, :cond_2d

    .line 659
    sget-object v6, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_2d
    if-eqz p0, :cond_32

    .line 664
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 667
    :cond_32
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 668
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_9c

    .line 670
    :goto_38
    throw v5

    .line 623
    .end local v0           #buffer:[B
    .end local v1           #bufferFromCache:Z
    :catch_39
    move-exception v4

    .line 624
    .local v4, ex:Ljava/lang/IndexOutOfBoundsException;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 625
    .restart local v0       #buffer:[B
    const/4 v1, 0x0

    .restart local v1       #bufferFromCache:Z
    goto :goto_b

    .line 635
    .end local v4           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_40
    const/4 v3, 0x0

    .line 636
    .local v3, bytesRemaining:I
    move v3, p1

    .line 637
    :cond_42
    :goto_42
    if-lez v3, :cond_7c

    .line 638
    const/4 v5, 0x0

    :try_start_45
    array-length v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 640
    .restart local v2       #bytesRead:I
    if-ne v2, v7, :cond_74

    .line 641
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
    :try_end_69
    .catchall {:try_start_45 .. :try_end_69} :catchall_25
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_69} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_69} :catch_69

    .line 655
    .end local v2           #bytesRead:I
    .end local v3           #bytesRemaining:I
    :catch_69
    move-exception v4

    .line 656
    .local v4, ex:Ljava/lang/OutOfMemoryError;
    :try_start_6a
    new-instance v5, Lcom/google/android/apps/plus/network/MemoryException;

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/network/MemoryException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_25

    .line 642
    .end local v4           #ex:Ljava/lang/OutOfMemoryError;
    .restart local v2       #bytesRead:I
    .restart local v3       #bytesRemaining:I
    :cond_74
    if-lez v2, :cond_42

    .line 643
    sub-int/2addr v3, v2

    .line 644
    const/4 v5, 0x0

    :try_start_78
    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_42

    .line 649
    .end local v2           #bytesRead:I
    :cond_7c
    :goto_7c
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .restart local v2       #bytesRead:I
    if-eq v2, v7, :cond_89

    .line 650
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_25
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_88} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_78 .. :try_end_88} :catch_69

    goto :goto_7c

    .line 658
    .end local v3           #bytesRemaining:I
    :cond_89
    if-eqz v1, :cond_90

    .line 659
    sget-object v5, Lcom/google/android/apps/plus/network/HttpOperation;->sBufferCache:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_90
    if-eqz p0, :cond_95

    .line 664
    :try_start_92
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 667
    :cond_95
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 668
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9b} :catch_9e

    .line 672
    :goto_9b
    return-void

    .line 669
    .end local v2           #bytesRead:I
    :catch_9c
    move-exception v6

    goto :goto_38

    .restart local v2       #bytesRead:I
    :catch_9e
    move-exception v5

    goto :goto_9b
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAborted:Z

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    .line 255
    .local v0, httpTx:Lcom/google/android/apps/plus/network/HttpTransaction;
    if-eqz v0, :cond_a

    .line 256
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->abort()V

    .line 258
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
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 489
    iget v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 510
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
    .line 261
    iget-boolean v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAborted:Z

    return v0
.end method

.method protected isAuthenticationError(Ljava/lang/Exception;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 431
    instance-of v1, p1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_e

    move-object v0, p1

    .line 432
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    .line 433
    .local v0, ex:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 438
    .end local v0           #ex:Lorg/apache/http/client/HttpResponseException;
    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 435
    .restart local v0       #ex:Lorg/apache/http/client/HttpResponseException;
    :pswitch_10
    const/4 v1, 0x1

    goto :goto_f

    .line 433
    :pswitch_data_12
    .packed-switch 0x191
        :pswitch_10
    .end packed-switch
.end method

.method protected isImmediatelyRetryableError(Ljava/lang/Exception;)Z
    .registers 3
    .parameter "ex"

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public logAndThrowExceptionIfFailed(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 604
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->logError(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->throwExceptionIfFailed()V

    .line 607
    :cond_c
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    if-eqz v0, :cond_2d

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] failed due to exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    :cond_2c
    :goto_2c
    return-void

    .line 571
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 572
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] failed due to error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "cookie"

    .prologue
    .line 329
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
    .line 348
    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 415
    return-void
.end method

.method public onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"
    .parameter "contentLength"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    .line 314
    .local v0, out:Ljava/io/OutputStream;
    if-eqz v0, :cond_c

    .line 315
    invoke-static {p1, p3, v0}, Lcom/google/android/apps/plus/network/HttpOperation;->readFromStream(Ljava/io/InputStream;ILjava/io/OutputStream;)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 322
    :goto_b
    return-void

    .line 317
    :cond_c
    if-eqz p2, :cond_12

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_b

    .line 320
    :cond_12
    const-string v1, "HttpTransaction"

    const-string v2, "Content type not specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public final onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 356
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->isImmediatelyRetryableError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    if-lez v2, :cond_32

    .line 358
    :try_start_a
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 359
    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mHttpRequestConfig:Lcom/google/android/apps/plus/network/HttpRequestConfiguration;

    invoke-interface {v2}, Lcom/google/android/apps/plus/network/HttpRequestConfiguration;->invalidateAuthToken()V

    .line 362
    :cond_15
    const-string v2, "HttpTransaction"

    const-string v3, "====> Restarting operation..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mRetriesRemaining:I

    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->start()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_26

    .line 391
    :goto_25
    return-void

    .line 368
    :catch_26
    move-exception v0

    .line 369
    .local v0, aex:Ljava/lang/Exception;
    const-string v2, "HttpTransaction"

    const-string v3, "====> Retry failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    move-object p3, v0

    .line 375
    .end local v0           #aex:Ljava/lang/Exception;
    :cond_32
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 377
    move-object v1, p3

    .line 378
    .local v1, fex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mThreaded:Z

    if-eqz v2, :cond_45

    .line 379
    sget-object v2, Lcom/google/android/apps/plus/network/HttpOperation;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/plus/network/HttpOperation$2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/apps/plus/network/HttpOperation$2;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 389
    :cond_45
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/plus/network/HttpOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_25
.end method

.method public onHttpUploadProgress(JJ)V
    .registers 5
    .parameter "position"
    .parameter "length"

    .prologue
    .line 336
    return-void
.end method

.method public onStartResultProcessing()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->onStartResultProcessing()V

    .line 244
    :cond_9
    return-void
.end method

.method protected prepareHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 3
    .parameter "metrics"

    .prologue
    .line 276
    if-eqz p1, :cond_9

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    .line 279
    :cond_9
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "outputStream"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    .line 469
    return-void
.end method

.method public final start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 172
    sget-boolean v1, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v1, :cond_15

    .line 173
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    .line 174
    .local v0, metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/network/HttpOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 175
    const-string v1, "HttpTransaction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0           #metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    :goto_14
    return-void

    .line 177
    :cond_15
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/network/HttpOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    goto :goto_14
.end method

.method public start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 12
    .parameter "syncState"
    .parameter "metrics"

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->isAborted()Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_99

    move-result v1

    if-eqz v1, :cond_12

    .line 234
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 235
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->accumulateFrom(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 238
    :cond_11
    :goto_11
    return-void

    .line 190
    :cond_12
    :try_start_12
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 191
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting op: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->createPostData()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 196
    .local v4, postData:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_79

    .line 197
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransaction;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mHttpRequestConfig:Lcom/google/android/apps/plus/network/HttpRequestConfiguration;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/network/HttpTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V

    .line 202
    .local v0, httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    :goto_47
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 203
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->printHeaders()V

    .line 206
    :cond_53
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/network/HttpOperation;->prepareHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 207
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/network/HttpTransaction;->setHttpTransactionMetrics(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 209
    sget-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    if-nez v1, :cond_de

    .line 210
    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5f} :catch_99

    .line 212
    :try_start_5f
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->execute()Ljava/lang/Exception;

    move-result-object v7

    .line 213
    .local v7, retEx:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, p2, v7}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_85

    .line 221
    const/4 v1, 0x0

    :try_start_6b
    iput-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6d} :catch_99

    .line 234
    .end local v7           #retEx:Ljava/lang/Exception;
    :goto_6d
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 235
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->accumulateFrom(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    goto :goto_11

    .line 199
    .end local v0           #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    :cond_79
    :try_start_79
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransaction;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mHttpRequestConfig:Lcom/google/android/apps/plus/network/HttpRequestConfiguration;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/apps/plus/network/HttpTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;)V
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_84} :catch_99

    .restart local v0       #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    goto :goto_47

    .line 214
    :catch_85
    move-exception v8

    .line 215
    .local v8, t:Ljava/lang/Exception;
    :try_start_86
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, p2, v8}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    .line 217
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->isAborted()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 218
    throw v8
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_94

    .line 221
    .end local v8           #t:Ljava/lang/Exception;
    :catchall_94
    move-exception v1

    const/4 v2, 0x0

    :try_start_96
    iput-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    throw v1
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_99

    .line 227
    .end local v0           #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .end local v4           #postData:Lorg/apache/http/HttpEntity;
    :catch_99
    move-exception v6

    .line 228
    .local v6, ex:Ljava/lang/Exception;
    :try_start_9a
    const-string v1, "HttpTransaction"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 229
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpOperation failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :cond_bb
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_c0
    .catchall {:try_start_9a .. :try_end_c0} :catchall_d1

    .line 234
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 235
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->accumulateFrom(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    goto/16 :goto_11

    .line 221
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v0       #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .restart local v4       #postData:Lorg/apache/http/HttpEntity;
    .restart local v8       #t:Ljava/lang/Exception;
    :cond_cd
    const/4 v1, 0x0

    :try_start_ce
    iput-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mCurrentTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d0} :catch_99

    goto :goto_6d

    .line 234
    .end local v0           #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .end local v4           #postData:Lorg/apache/http/HttpEntity;
    .end local v8           #t:Ljava/lang/Exception;
    :catchall_d1
    move-exception v1

    if-eqz p1, :cond_dd

    if-eqz p2, :cond_dd

    .line 235
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->accumulateFrom(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    :cond_dd
    throw v1

    .line 224
    .restart local v0       #httpOp:Lcom/google/android/apps/plus/network/HttpTransaction;
    .restart local v4       #postData:Lorg/apache/http/HttpEntity;
    :cond_de
    :try_start_de
    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    invoke-static {v1, v2, p2, v3}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    .line 225
    sget-object v1, Lcom/google/android/apps/plus/network/HttpOperation;->sSimulateException:Ljava/lang/Exception;

    throw v1
    :try_end_ea
    .catchall {:try_start_de .. :try_end_ea} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ea} :catch_99
.end method

.method public startThreaded()V
    .registers 3

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mThreaded:Z

    .line 286
    sget-object v0, Lcom/google/android/apps/plus/network/HttpOperation;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/apps/plus/network/HttpOperation$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/network/HttpOperation$1;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public throwExceptionIfFailed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->hasError()Z

    move-result v0

    if-nez v0, :cond_7

    .line 597
    :cond_6
    return-void

    .line 587
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    if-eqz v0, :cond_57

    .line 588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_38

    .line 589
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operation failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_38
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operation failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mEx:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 593
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpOperation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operation failed, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/network/HttpOperation;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
