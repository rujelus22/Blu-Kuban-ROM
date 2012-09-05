.class public abstract Lorg/cups4j/operations/IppOperation;
.super Ljava/lang/Object;
.source "IppOperation.java"


# static fields
.field private static final IPP_MIME_TYPE:Ljava/lang/String; = "application/ipp"


# instance fields
.field protected bufferSize:S

.field httpStatusLine:Ljava/lang/String;

.field protected ippPort:I

.field protected operationID:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 48
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 49
    const/16 v0, 0x277

    iput v0, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cups4j/operations/IppOperation;->httpStatusLine:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private sendRequest(Ljava/net/URL;Ljava/nio/ByteBuffer;)Lch/ethz/vppserver/ippclient/IppResult;
    .registers 4
    .parameter "url"
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cups4j/operations/IppOperation;->sendRequest(Ljava/net/URL;Ljava/nio/ByteBuffer;Ljava/io/InputStream;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(Ljava/net/URL;Ljava/nio/ByteBuffer;Ljava/io/InputStream;)Lch/ethz/vppserver/ippclient/IppResult;
    .registers 19
    .parameter "url"
    .parameter "ippBuf"
    .parameter "documentStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v8, 0x0

    .line 148
    .local v8, ippResult:Lch/ethz/vppserver/ippclient/IppResult;
    if-nez p2, :cond_5

    .line 149
    const/4 v11, 0x0

    .line 214
    :goto_4
    return-object v11

    .line 152
    :cond_5
    if-nez p1, :cond_9

    .line 153
    const/4 v11, 0x0

    goto :goto_4

    .line 156
    :cond_9
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 159
    .local v2, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.protocol.version"

    sget-object v13, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 160
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.socket.timeout"

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0x2710

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 161
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.connection.timeout"

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0x2710

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 162
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.protocol.content-charset"

    const-string v13, "UTF-8"

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 163
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.method.response.buffer.warnlimit"

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0x1f9c

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 166
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.protocol.expect-continue"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 168
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/net/URI;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "http://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.socket.timeout"

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0x2710

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    new-array v1, v11, [B

    .line 173
    .local v1, bytes:[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 175
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 178
    .local v4, headerStream:Ljava/io/ByteArrayInputStream;
    move-object v6, v4

    .line 179
    .local v6, inputStream:Ljava/io/InputStream;
    if-eqz p3, :cond_ca

    .line 180
    new-instance v6, Ljava/io/SequenceInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    move-object/from16 v0, p3

    invoke-direct {v6, v4, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 184
    .restart local v6       #inputStream:Ljava/io/InputStream;
    :cond_ca
    new-instance v9, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v11, -0x1

    invoke-direct {v9, v6, v11, v12}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 186
    .local v9, requestEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v11, "application/ipp"

    invoke-virtual {v9, v11}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v5, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 189
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/cups4j/operations/IppOperation;->httpStatusLine:Ljava/lang/String;

    .line 191
    new-instance v3, Lorg/cups4j/operations/IppOperation$1;

    invoke-direct {v3, p0}, Lorg/cups4j/operations/IppOperation$1;-><init>(Lorg/cups4j/operations/IppOperation;)V

    .line 203
    .local v3, handler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<[B>;"
    invoke-interface {v2, v5, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 205
    .local v10, result:[B
    new-instance v7, Lch/ethz/vppserver/ippclient/IppResponse;

    invoke-direct {v7}, Lch/ethz/vppserver/ippclient/IppResponse;-><init>()V

    .line 206
    .local v7, ippResponse:Lch/ethz/vppserver/ippclient/IppResponse;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 208
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lch/ethz/vppserver/ippclient/IppResponse;->getResponse(Ljava/nio/ByteBuffer;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v8

    .line 209
    iget-object v11, p0, Lorg/cups4j/operations/IppOperation;->httpStatusLine:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lch/ethz/vppserver/ippclient/IppResult;->setHttpStatusResponse(Ljava/lang/String;)V

    .line 213
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v11, v8

    .line 214
    goto/16 :goto_4
.end method


# virtual methods
.method protected getAttributeValue(Lch/ethz/vppserver/schema/ippclient/Attribute;)Ljava/lang/String;
    .registers 4
    .parameter "attr"

    .prologue
    .line 233
    invoke-virtual {p1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIppHeader(Ljava/net/URL;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cups4j/operations/IppOperation;->getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .registers 11
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 84
    if-nez p1, :cond_c

    .line 85
    const-string v5, "cups4j"

    const-string v7, "IppGetJObsOperation.getIppHeader(): uri is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 119
    :goto_b
    return-object v1

    .line 89
    :cond_c
    iget-short v5, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    .local v1, ippBuf:Ljava/nio/ByteBuffer;
    iget-short v5, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    invoke-static {v1, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getOperation(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 91
    const-string v5, "printer-uri"

    invoke-virtual {p0, p1}, Lorg/cups4j/operations/IppOperation;->stripPortNumber(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v5, v7}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 93
    if-nez p2, :cond_2c

    .line 94
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_b

    .line 99
    :cond_2c
    const-string v7, "requesting-user-name"

    const-string v5, "requesting-user-name"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v7, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    const-string v5, "limit"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 102
    const-string v5, "limit"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 103
    .local v4, value:I
    const-string v5, "limit"

    invoke-static {v1, v5, v4}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 106
    .end local v4           #value:I
    :cond_54
    const-string v5, "requested-attributes"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 107
    const-string v5, "requested-attributes"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, sta:[Ljava/lang/String;
    if-eqz v3, :cond_79

    .line 109
    const-string v5, "requested-attributes"

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v1, v5, v7}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 110
    array-length v2, v3

    .line 111
    .local v2, l:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_77
    if-lt v0, v2, :cond_81

    .line 117
    .end local v0           #i:I
    .end local v2           #l:I
    .end local v3           #sta:[Ljava/lang/String;
    :cond_79
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_b

    .line 112
    .restart local v0       #i:I
    .restart local v2       #l:I
    .restart local v3       #sta:[Ljava/lang/String;
    :cond_81
    aget-object v5, v3, v0

    invoke-static {v1, v6, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_77
.end method

.method public request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lch/ethz/vppserver/ippclient/IppResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lorg/cups4j/operations/IppOperation;->getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/cups4j/operations/IppOperation;->sendRequest(Ljava/net/URL;Ljava/nio/ByteBuffer;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/net/URL;Ljava/util/Map;Ljava/io/InputStream;)Lch/ethz/vppserver/ippclient/IppResult;
    .registers 5
    .parameter "url"
    .parameter
    .parameter "document"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Lch/ethz/vppserver/ippclient/IppResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lorg/cups4j/operations/IppOperation;->getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/cups4j/operations/IppOperation;->sendRequest(Ljava/net/URL;Ljava/nio/ByteBuffer;Ljava/io/InputStream;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v0

    return-object v0
.end method

.method protected stripPortNumber(Ljava/net/URL;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, protocol:Ljava/lang/String;
    const-string v1, "ipp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 226
    const-string v0, "http"

    .line 229
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
