.class public final Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;
.super Ljava/lang/Object;
.source "ResponseContentTransferrer.java"


# static fields
.field private static final DEFAULT_OUTPUT_BUFFER_SIZE_BYTES:I = 0x1000

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final outputBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x1000

    iput v0, p0, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->outputBufferSize:I

    .line 39
    return-void
.end method

.method private transferEntity(Lorg/apache/http/HttpResponse;Lorg/apache/http/message/BasicHttpResponse;)V
    .registers 8
    .parameter "response"
    .parameter "consumed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/RequestFailedException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 74
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_7

    .line 87
    :goto_6
    return-void

    .line 78
    :cond_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->outputBufferSize:I

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 81
    .local v2, output:Ljava/io/ByteArrayOutputStream;
    :try_start_e
    invoke-interface {v1, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_21

    .line 86
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p2, v3}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6

    .line 83
    :catch_21
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/apps/unveil/network/RequestFailedException;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/network/RequestFailedException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private transferHeaders(Lorg/apache/http/HttpResponse;Lorg/apache/http/message/BasicHttpResponse;)V
    .registers 7
    .parameter "original"
    .parameter "consumed"

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_10

    aget-object v1, v0, v2

    .line 67
    .local v1, h:Lorg/apache/http/Header;
    invoke-virtual {p2, v1}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 69
    .end local v1           #h:Lorg/apache/http/Header;
    :cond_10
    return-void
.end method


# virtual methods
.method public consumeAndRelease(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter "original"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/RequestFailedException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 52
    .local v0, consumed:Lorg/apache/http/message/BasicHttpResponse;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->transferHeaders(Lorg/apache/http/HttpResponse;Lorg/apache/http/message/BasicHttpResponse;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->transferEntity(Lorg/apache/http/HttpResponse;Lorg/apache/http/message/BasicHttpResponse;)V

    .line 56
    :try_start_f
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 57
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 62
    :cond_1c
    :goto_1c
    return-object v0

    .line 59
    :catch_1d
    move-exception v1

    .line 60
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "It\'s not possible to keep connection alive"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c
.end method
