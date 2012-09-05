.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpRequest$1;
    }
.end annotation


# instance fields
.field public connectTimeout:I

.field public content:Lcom/google/api/client/http/HttpContent;

.field private final contentTypeToParserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpParser;",
            ">;"
        }
    .end annotation
.end field

.field public disableContentLogging:Z

.field public enableGZipContent:Z

.field public headers:Lcom/google/api/client/http/HttpHeaders;

.field public interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field public method:Lcom/google/api/client/http/HttpMethod;

.field public numRetries:I

.field public readTimeout:I

.field public responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field public final transport:Lcom/google/api/client/http/HttpTransport;

.field public unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field public url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpMethod;)V
    .registers 5
    .parameter "transport"
    .parameter "method"

    .prologue
    const/16 v1, 0x4e20

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 129
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 140
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 176
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 177
    iget-object v0, p1, Lcom/google/api/client/http/HttpTransport;->defaultHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 178
    iget-object v0, p1, Lcom/google/api/client/http/HttpTransport;->defaultHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 179
    iget-object v0, p1, Lcom/google/api/client/http/HttpTransport;->contentTypeToParserMap:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v0}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    .line 180
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 181
    return-void
.end method

.method private static addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter "logger"
    .parameter "logbuf"
    .parameter "lowLevelHttpRequest"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 388
    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 406
    .end local p4
    :cond_8
    :goto_8
    return-void

    .line 392
    .restart local p4
    :cond_9
    instance-of v1, p4, Ljava/lang/Enum;

    if-eqz v1, :cond_40

    check-cast p4, Ljava/lang/Enum;

    .end local p4
    invoke-static {p4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, stringValue:Ljava/lang/String;
    :goto_17
    if-eqz p1, :cond_3c

    .line 396
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 398
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_37
    sget-object v1, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_3c
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 392
    .end local v0           #stringValue:Ljava/lang/String;
    .restart local p4
    :cond_40
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 400
    .end local p4
    .restart local v0       #stringValue:Ljava/lang/String;
    :cond_45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method

.method public static normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mediaType"

    .prologue
    .line 418
    if-nez p0, :cond_4

    .line 419
    const/4 p0, 0x0

    .line 422
    .end local p0
    .local v0, semicolon:I
    :cond_3
    :goto_3
    return-object p0

    .line 421
    .end local v0           #semicolon:I
    .restart local p0
    :cond_4
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 422
    .restart local v0       #semicolon:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method


# virtual methods
.method public addParser(Lcom/google/api/client/http/HttpParser;)V
    .registers 4
    .parameter "parser"

    .prologue
    .line 203
    invoke-interface {p1}, Lcom/google/api/client/http/HttpParser;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, contentType:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public execute()Lcom/google/api/client/http/HttpResponse;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/16 v22, 0x0

    .line 237
    .local v22, requiresRetry:Z
    const/16 v25, 0x0

    .line 238
    .local v25, retrySupported:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v29, v0

    if-ltz v29, :cond_67

    const/16 v29, 0x1

    :goto_e
    invoke-static/range {v29 .. v29}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v24, v0

    .line 240
    .local v24, retriesRemaining:I
    const/16 v23, 0x0

    .line 242
    .local v23, response:Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2b
    if-eqz v23, :cond_30

    .line 248
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 251
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v29, v0

    if-eqz v29, :cond_45

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 255
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/api/client/http/HttpTransport;->intercepters:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_55
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/api/client/http/HttpExecuteIntercepter;

    .line 256
    .local v14, intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/google/api/client/http/HttpExecuteIntercepter;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    goto :goto_55

    .line 238
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    .end local v23           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v24           #retriesRemaining:I
    :cond_67
    const/16 v29, 0x0

    goto :goto_e

    .line 259
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v23       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v24       #retriesRemaining:I
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v26

    .line 261
    .local v26, urlString:Ljava/lang/String;
    sget-object v29, Lcom/google/api/client/http/HttpRequest$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_354

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 285
    .local v18, lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_93
    sget-object v17, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 286
    .local v17, logger:Ljava/util/logging/Logger;
    sget-object v29, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v16

    .line 287
    .local v16, loggable:Z
    const/4 v15, 0x0

    .line 289
    .local v15, logbuf:Ljava/lang/StringBuilder;
    if-eqz v16, :cond_d3

    .line 290
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .restart local v15       #logbuf:Ljava/lang/StringBuilder;
    const-string v29, "-------------- REQUEST  --------------"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x20

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_1d3

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v29, v0

    const-string v30, "Google-API-Java-Client/1.5.0-beta"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 301
    :goto_ef
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 302
    .local v11, headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12           #i$:Ljava/util/Iterator;
    :cond_102
    :goto_102
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_20f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 303
    .local v10, headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 304
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 305
    .local v19, lowerCase:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v29

    const-string v30, "multiple headers of the same name (headers are case insensitive): %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v19, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    .line 308
    .local v27, value:Ljava/lang/Object;
    if-eqz v27, :cond_102

    .line 309
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    .line 310
    .local v28, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v29, v0

    if-nez v29, :cond_147

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->isArray()Z

    move-result v29

    if-eqz v29, :cond_202

    .line 311
    :cond_147
    invoke-static/range {v27 .. v27}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_14f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_102

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 312
    .local v21, repeatedValue:Ljava/lang/Object;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v15, v1, v2, v3}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14f

    .line 263
    .end local v10           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11           #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #logbuf:Ljava/lang/StringBuilder;
    .end local v16           #loggable:Z
    .end local v17           #logger:Ljava/util/logging/Logger;
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v19           #lowerCase:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #repeatedValue:Ljava/lang/Object;
    .end local v27           #value:Ljava/lang/Object;
    .end local v28           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    :pswitch_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 264
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_93

    .line 269
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v29

    const-string v30, "HTTP transport doesn\'t support HEAD"

    invoke-static/range {v29 .. v30}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 272
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_93

    .line 274
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v29

    const-string v30, "HTTP transport doesn\'t support PATCH"

    invoke-static/range {v29 .. v30}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 277
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_93

    .line 279
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 280
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_93

    .line 282
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_93

    .line 298
    .restart local v15       #logbuf:Ljava/lang/StringBuilder;
    .restart local v16       #loggable:Z
    .restart local v17       #logger:Ljava/util/logging/Logger;
    :cond_1d3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Google-API-Java-Client/1.5.0-beta"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    goto/16 :goto_ef

    .line 315
    .end local v12           #i$:Ljava/util/Iterator;
    .restart local v10       #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11       #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19       #lowerCase:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v27       #value:Ljava/lang/Object;
    .restart local v28       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_202
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-static {v0, v15, v1, v2, v3}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_102

    .line 320
    .end local v10           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #lowerCase:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v27           #value:Ljava/lang/Object;
    .end local v28           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_20f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 321
    .local v5, content:Lcom/google/api/client/http/HttpContent;
    if-eqz v5, :cond_351

    .line 324
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, contentEncoding:Ljava/lang/String;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    .line 326
    .local v8, contentLength:J
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, contentType:Ljava/lang/String;
    const-wide/16 v29, 0x0

    cmp-long v29, v8, v29

    if-eqz v29, :cond_34e

    if-nez v7, :cond_34e

    invoke-static {v6}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_34e

    if-eqz v16, :cond_239

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->disableContentLogging:Z

    move/from16 v29, v0

    if-eqz v29, :cond_245

    :cond_239
    sget-object v29, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v29

    if-eqz v29, :cond_34e

    .line 331
    :cond_245
    new-instance v4, Lcom/google/api/client/http/LogContent;

    invoke-direct/range {v4 .. v9}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;J)V

    .line 335
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .local v4, content:Lcom/google/api/client/http/HttpContent;
    :goto_24a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    move/from16 v29, v0

    if-eqz v29, :cond_260

    .line 336
    new-instance v5, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v5, v4, v6}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 337
    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    move-object v4, v5

    .line 341
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    :cond_260
    if-eqz v16, :cond_2cc

    .line 342
    if-eqz v6, :cond_284

    .line 343
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_284
    if-eqz v7, :cond_2a6

    .line 346
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Encoding: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2a6
    const-wide/16 v29, 0x0

    cmp-long v29, v8, v29

    if-ltz v29, :cond_2cc

    .line 349
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Length: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_2cc
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 355
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #contentEncoding:Ljava/lang/String;
    .end local v8           #contentLength:J
    :goto_2d1
    if-eqz v16, :cond_2de

    .line 356
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 360
    :cond_2de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    move/from16 v30, v0

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 361
    new-instance v23, Lcom/google/api/client/http/HttpResponse;

    .end local v23           #response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V

    .line 365
    .restart local v23       #response:Lcom/google/api/client/http/HttpResponse;
    if-lez v24, :cond_34a

    if-eqz v4, :cond_30c

    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v29

    if-eqz v29, :cond_34a

    :cond_30c
    const/16 v25, 0x1

    .line 366
    :goto_30e
    const/16 v22, 0x0

    .line 371
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    move/from16 v29, v0

    if-nez v29, :cond_332

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v29, v0

    if-eqz v29, :cond_332

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v22

    .line 376
    :cond_332
    add-int/lit8 v24, v24, -0x1

    .line 377
    if-eqz v22, :cond_338

    if-nez v25, :cond_2b

    .line 379
    :cond_338
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    move/from16 v29, v0

    if-nez v29, :cond_34d

    .line 380
    new-instance v29, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v29

    .line 365
    :cond_34a
    const/16 v25, 0x0

    goto :goto_30e

    .line 382
    :cond_34d
    return-object v23

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v7       #contentEncoding:Ljava/lang/String;
    .restart local v8       #contentLength:J
    :cond_34e
    move-object v4, v5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_24a

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #contentEncoding:Ljava/lang/String;
    .end local v8           #contentLength:J
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    :cond_351
    move-object v4, v5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_2d1

    .line 261
    :pswitch_data_354
    .packed-switch 0x1
        :pswitch_165
        :pswitch_175
        :pswitch_194
        :pswitch_1b3
        :pswitch_1c3
    .end packed-switch
.end method

.method public final getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;
    .registers 3
    .parameter "contentType"

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpParser;

    return-object v0
.end method
