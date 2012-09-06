.class public Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;
.super Ljava/lang/Object;
.source "HttpProtoResponseHandler.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lcom/google/android/apps/unveil/network/UnveilResponse",
        "<TResponseType;>;>;"
    }
.end annotation


# static fields
.field public static final X_DEBUG_HEADER:Ljava/lang/String; = "X-Goggles-Debug"

.field private static extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 63
    invoke-static {}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->createExtensionRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;,"Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler<TResponseType;>;"
    .local p1, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->responseClass:Ljava/lang/Class;

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private static createExtensionRegistry()Lcom/google/protobuf/ExtensionRegistryLite;
    .registers 2

    .prologue
    .line 66
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 67
    .local v0, extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 68
    sget-object v1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->annotationResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 69
    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 70
    return-object v0
.end method

.method private static getDebugHeaderValue(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 10
    .parameter "response"

    .prologue
    .line 150
    const-string v7, "X-Goggles-Debug"

    invoke-interface {p0, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 151
    .local v1, debugHeaders:[Lorg/apache/http/Header;
    array-length v3, v1

    .line 153
    .local v3, headerCount:I
    if-nez v3, :cond_c

    .line 154
    const-string v7, ""

    .line 165
    :goto_b
    return-object v7

    .line 157
    :cond_c
    const/4 v7, 0x1

    if-ne v3, v7, :cond_17

    .line 158
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 161
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v6, s:Ljava/lang/StringBuilder;
    move-object v0, v1

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1f
    if-ge v4, v5, :cond_40

    aget-object v2, v0, v4

    .line 163
    .local v2, h:Lorg/apache/http/Header;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 165
    .end local v2           #h:Lorg/apache/http/Header;
    :cond_40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b
.end method

.method private static getTruncatedResponseSize(Lorg/apache/http/HttpEntity;)I
    .registers 6
    .parameter "httpEntity"

    .prologue
    .line 40
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 41
    .local v0, responseSize:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_c

    long-to-int v2, v0

    .line 43
    .local v2, responseSizeTruncated:I
    :goto_b
    return v2

    .line 41
    .end local v2           #responseSizeTruncated:I
    :cond_c
    const/4 v2, -0x1

    goto :goto_b
.end method

.method private static isGzipped(Lorg/apache/http/HttpMessage;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 58
    const-string v1, "Content-Encoding"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 59
    .local v0, encodingHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_16

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static releaseHttpEntity(Lorg/apache/http/HttpEntity;)V
    .registers 5
    .parameter "entity"

    .prologue
    .line 47
    if-nez p0, :cond_3

    .line 55
    :goto_2
    return-void

    .line 51
    :cond_3
    :try_start_3
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 52
    :catch_7
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Error releasing HTTP entity: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public asRunnable(Lorg/apache/http/HttpResponse;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;
    .registers 4
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;,"Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler<TResponseType;>;"
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;-><init>(Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;Lorg/apache/http/HttpResponse;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 16
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;,"Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler<TResponseType;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 93
    .local v6, responseReceivedTimestamp:J
    if-nez p1, :cond_e

    .line 94
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Null response."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 97
    :cond_e
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 99
    .local v3, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 100
    .local v9, statusCode:I
    const/16 v10, 0xc8

    if-eq v9, v10, :cond_46

    .line 101
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->releaseHttpEntity(Lorg/apache/http/HttpEntity;)V

    .line 104
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->getDebugHeaderValue(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, debugHeaderValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3e

    .line 106
    sget-object v10, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "Frontend Exception: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v10, v9, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 110
    :cond_3e
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    const-string v11, "Error code returned from remote host."

    invoke-direct {v10, v9, v11}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 113
    .end local v1           #debugHeaderValue:Ljava/lang/String;
    :cond_46
    if-eqz v3, :cond_52

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_64

    .line 114
    :cond_52
    sget-object v10, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "There was no response content, but the server returned success."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->releaseHttpEntity(Lorg/apache/http/HttpEntity;)V

    .line 116
    invoke-static {v6, v7}, Lcom/google/android/apps/unveil/network/UnveilResponse;->get(J)Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v10

    .line 146
    :goto_63
    return-object v10

    .line 119
    :cond_64
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->isGzipped(Lorg/apache/http/HttpMessage;)Z

    move-result v4

    .line 121
    .local v4, isGzipped:Z
    if-nez v4, :cond_74

    .line 122
    sget-object v10, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "Server response wasn\'t gzipped."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_74
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->getTruncatedResponseSize(Lorg/apache/http/HttpEntity;)I

    move-result v8

    .line 128
    .local v8, responseSizeTruncated:I
    const/4 v5, 0x0

    .line 129
    .local v5, parsedResponse:Lcom/google/protobuf/GeneratedMessageLite;,"TResponseType;"
    const/4 v0, 0x0

    .line 131
    .local v0, contentStream:Ljava/io/InputStream;
    :try_start_7a
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 132
    iget-object v11, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->responseClass:Ljava/lang/Class;

    if-eqz v4, :cond_9a

    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_87
    sget-object v12, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v11, v10, v12}, Lcom/google/android/apps/unveil/network/ProtoBuilder;->build(Ljava/lang/Class;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_a8

    move-result-object v5

    .line 136
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->releaseHttpEntity(Lorg/apache/http/HttpEntity;)V

    .line 138
    if-eqz v0, :cond_95

    .line 139
    :try_start_92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_9c

    .line 146
    :cond_95
    :goto_95
    invoke-static {v5, v8, v6, v7}, Lcom/google/android/apps/unveil/network/UnveilResponse;->get(Lcom/google/protobuf/GeneratedMessageLite;IJ)Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v10

    goto :goto_63

    :cond_9a
    move-object v10, v0

    .line 132
    goto :goto_87

    .line 141
    :catch_9c
    move-exception v2

    .line 142
    .local v2, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v11, "Error releasing input streams: "

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v2, v11, v12}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_95

    .line 136
    .end local v2           #e:Ljava/io/IOException;
    :catchall_a8
    move-exception v10

    invoke-static {v3}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->releaseHttpEntity(Lorg/apache/http/HttpEntity;)V

    .line 138
    if-eqz v0, :cond_b1

    .line 139
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    .line 143
    :cond_b1
    :goto_b1
    throw v10

    .line 141
    :catch_b2
    move-exception v2

    .line 142
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v11, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v12, "Error releasing input streams: "

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v2, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b1
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;,"Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler<TResponseType;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v0

    return-object v0
.end method
