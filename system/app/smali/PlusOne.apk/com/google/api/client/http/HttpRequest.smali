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
.field private connectTimeout:I

.field private content:Lcom/google/api/client/http/HttpContent;

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

.field private disableContentLogging:Z

.field private enableGZipContent:Z

.field private followRedirects:Z

.field private headers:Lcom/google/api/client/http/HttpHeaders;

.field private interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private method:Lcom/google/api/client/http/HttpMethod;

.field private numRetries:I

.field private readTimeout:I

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpMethod;)V
    .registers 5
    .parameter "transport"
    .parameter "method"

    .prologue
    const/16 v1, 0x4e20

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 81
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 88
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 114
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 120
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 139
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 140
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 141
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
    .line 708
    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 726
    .end local p4
    :cond_8
    :goto_8
    return-void

    .line 712
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

    .line 715
    .local v0, stringValue:Ljava/lang/String;
    :goto_17
    if-eqz p1, :cond_3c

    .line 716
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 718
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :goto_37
    sget-object v1, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_3c
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 712
    .end local v0           #stringValue:Ljava/lang/String;
    .restart local p4
    :cond_40
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 720
    .end local p4
    .restart local v0       #stringValue:Ljava/lang/String;
    :cond_45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method

.method private handleRedirect(Lcom/google/api/client/http/HttpResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 678
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, redirectLocation:Ljava/lang/String;
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 683
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_1d

    .line 684
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;

    .line 686
    :cond_1d
    return-void
.end method

.method private isRedirected(Lcom/google/api/client/http/HttpResponse;)Z
    .registers 5
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 693
    .local v0, statusCode:I
    packed-switch v0, :pswitch_data_16

    .line 701
    :cond_8
    :goto_8
    :pswitch_8
    return v1

    .line 699
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    .line 693
    nop

    :pswitch_data_16
    .packed-switch 0x12d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mediaType"

    .prologue
    .line 738
    if-nez p0, :cond_4

    .line 739
    const/4 p0, 0x0

    .line 742
    .end local p0
    .local v0, semicolon:I
    :cond_3
    :goto_3
    return-object p0

    .line 741
    .end local v0           #semicolon:I
    .restart local p0
    :cond_4
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 742
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
    .line 464
    invoke-interface {p1}, Lcom/google/api/client/http/HttpParser;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, contentType:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public execute()Lcom/google/api/client/http/HttpResponse;
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    const/16 v23, 0x0

    .line 520
    .local v23, requiresRetry:Z
    const/16 v26, 0x0

    .line 521
    .local v26, retrySupported:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v30, v0

    if-ltz v30, :cond_13b

    const/16 v30, 0x1

    :goto_e
    invoke-static/range {v30 .. v30}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v25, v0

    .line 523
    .local v25, retriesRemaining:I
    const/16 v24, 0x0

    .line 525
    .local v24, response:Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_2b
    if-eqz v24, :cond_30

    .line 531
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 534
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v30, v0

    if-eqz v30, :cond_45

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 538
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v27

    .line 540
    .local v27, urlString:Ljava/lang/String;
    sget-object v30, Lcom/google/api/client/http/HttpRequest$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_350

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 564
    .local v18, lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_6e
    sget-object v17, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 565
    .local v17, logger:Ljava/util/logging/Logger;
    sget-object v30, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v16

    .line 566
    .local v16, loggable:Z
    const/4 v15, 0x0

    .line 568
    .local v15, logbuf:Ljava/lang/StringBuilder;
    if-eqz v16, :cond_ae

    .line 569
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .restart local v15       #logbuf:Ljava/lang/StringBuilder;
    const-string v30, "-------------- REQUEST  --------------"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_1ad

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v30, v0

    const-string v31, "Google-HTTP-Java-Client/1.6.0-beta (gzip)"

    invoke-virtual/range {v30 .. v31}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 580
    :goto_c5
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 581
    .local v12, headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d8
    :goto_d8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1e8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 582
    .local v11, headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 583
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 584
    .local v19, lowerCase:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v30

    const-string v31, "multiple headers of the same name (headers are case insensitive): %s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v19, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    .line 587
    .local v28, value:Ljava/lang/Object;
    if-eqz v28, :cond_d8

    .line 588
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 589
    .local v29, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object/from16 v0, v28

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v30, v0

    if-nez v30, :cond_11d

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isArray()Z

    move-result v30

    if-eqz v30, :cond_1db

    .line 590
    :cond_11d
    invoke-static/range {v28 .. v28}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_125
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .line 591
    .local v22, repeatedValue:Ljava/lang/Object;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-static {v0, v15, v1, v2, v3}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_125

    .line 521
    .end local v11           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #logbuf:Ljava/lang/StringBuilder;
    .end local v16           #loggable:Z
    .end local v17           #logger:Ljava/util/logging/Logger;
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v19           #lowerCase:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v22           #repeatedValue:Ljava/lang/Object;
    .end local v24           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v25           #retriesRemaining:I
    .end local v27           #urlString:Ljava/lang/String;
    .end local v28           #value:Ljava/lang/Object;
    .end local v29           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_13b
    const/16 v30, 0x0

    goto/16 :goto_e

    .line 542
    .restart local v24       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v25       #retriesRemaining:I
    .restart local v27       #urlString:Ljava/lang/String;
    :pswitch_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 543
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 548
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v30

    const-string v31, "HTTP transport doesn\'t support HEAD"

    invoke-static/range {v30 .. v31}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 551
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 553
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v30

    const-string v31, "HTTP transport doesn\'t support PATCH"

    invoke-static/range {v30 .. v31}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 556
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 558
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .line 559
    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 561
    .end local v18           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v18

    .restart local v18       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 577
    .restart local v15       #logbuf:Ljava/lang/StringBuilder;
    .restart local v16       #loggable:Z
    .restart local v17       #logger:Ljava/util/logging/Logger;
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Google-HTTP-Java-Client/1.6.0-beta (gzip)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_c5

    .line 594
    .restart local v11       #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12       #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19       #lowerCase:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v28       #value:Ljava/lang/Object;
    .restart local v29       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1db
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v28

    invoke-static {v0, v15, v1, v2, v3}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d8

    .line 599
    .end local v11           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #lowerCase:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v28           #value:Ljava/lang/Object;
    .end local v29           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 600
    .local v5, content:Lcom/google/api/client/http/HttpContent;
    if-eqz v5, :cond_34d

    .line 603
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, contentEncoding:Ljava/lang/String;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    .line 605
    .local v8, contentLength:J
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, contentType:Ljava/lang/String;
    const-wide/16 v30, 0x0

    cmp-long v30, v8, v30

    if-eqz v30, :cond_34a

    if-nez v7, :cond_34a

    invoke-static {v6}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_34a

    if-eqz v16, :cond_212

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->disableContentLogging:Z

    move/from16 v30, v0

    if-eqz v30, :cond_21e

    :cond_212
    sget-object v30, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v30

    if-eqz v30, :cond_34a

    .line 610
    :cond_21e
    new-instance v4, Lcom/google/api/client/http/LogContent;

    invoke-direct/range {v4 .. v9}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;J)V

    .line 613
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .local v4, content:Lcom/google/api/client/http/HttpContent;
    :goto_223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    move/from16 v30, v0

    if-eqz v30, :cond_239

    .line 614
    new-instance v5, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v5, v4, v6}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 615
    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 616
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    move-object v4, v5

    .line 619
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    :cond_239
    if-eqz v16, :cond_2a5

    .line 620
    if-eqz v6, :cond_25d

    .line 621
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Type: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_25d
    if-eqz v7, :cond_27f

    .line 624
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Encoding: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_27f
    const-wide/16 v30, 0x0

    cmp-long v30, v8, v30

    if-ltz v30, :cond_2a5

    .line 627
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Length: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_2a5
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 633
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #contentEncoding:Ljava/lang/String;
    .end local v8           #contentLength:J
    :goto_2aa
    if-eqz v16, :cond_2b7

    .line 634
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 638
    :cond_2b7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    move/from16 v31, v0

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 639
    new-instance v24, Lcom/google/api/client/http/HttpResponse;

    .end local v24           #response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V

    .line 643
    .restart local v24       #response:Lcom/google/api/client/http/HttpResponse;
    if-lez v25, :cond_343

    if-eqz v4, :cond_2e5

    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v30

    if-eqz v30, :cond_343

    :cond_2e5
    const/16 v26, 0x1

    .line 644
    :goto_2e7
    const/16 v23, 0x0

    .line 646
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v30

    if-nez v30, :cond_32f

    .line 647
    const/4 v10, 0x0

    .line 648
    .local v10, errorHandled:Z
    const/16 v21, 0x0

    .line 649
    .local v21, redirectRequest:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v30, v0

    if-eqz v30, :cond_30c

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v10

    .line 655
    :cond_30c
    if-nez v10, :cond_327

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpRequest;->getFollowRedirects()Z

    move-result v30

    if-eqz v30, :cond_327

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpRequest;->isRedirected(Lcom/google/api/client/http/HttpResponse;)Z

    move-result v30

    if-eqz v30, :cond_327

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(Lcom/google/api/client/http/HttpResponse;)V

    .line 658
    const/16 v21, 0x1

    .line 661
    :cond_327
    if-nez v10, :cond_32b

    if-eqz v21, :cond_346

    :cond_32b
    const/16 v23, 0x1

    .line 664
    :goto_32d
    add-int/lit8 v25, v25, -0x1

    .line 666
    .end local v10           #errorHandled:Z
    .end local v21           #redirectRequest:Z
    :cond_32f
    if-eqz v23, :cond_333

    if-nez v26, :cond_2b

    .line 668
    :cond_333
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v30

    if-nez v30, :cond_349

    .line 669
    new-instance v30, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v30

    .line 643
    :cond_343
    const/16 v26, 0x0

    goto :goto_2e7

    .line 661
    .restart local v10       #errorHandled:Z
    .restart local v21       #redirectRequest:Z
    :cond_346
    const/16 v23, 0x0

    goto :goto_32d

    .line 671
    .end local v10           #errorHandled:Z
    .end local v21           #redirectRequest:Z
    :cond_349
    return-object v24

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v7       #contentEncoding:Ljava/lang/String;
    .restart local v8       #contentLength:J
    :cond_34a
    move-object v4, v5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_223

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #contentEncoding:Ljava/lang/String;
    .end local v8           #contentLength:J
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    :cond_34d
    move-object v4, v5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_2aa

    .line 540
    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_14f
        :pswitch_16e
        :pswitch_18d
        :pswitch_19d
    .end packed-switch
.end method

.method public getContent()Lcom/google/api/client/http/HttpContent;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Lcom/google/api/client/http/HttpMethod;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;
    .registers 3
    .parameter "contentType"

    .prologue
    .line 477
    invoke-static {p1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 478
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpParser;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUrl()Lcom/google/api/client/http/GenericUrl;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "content"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 206
    return-object p0
.end method

.method public setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "enableGZipContent"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    .line 244
    return-object p0
.end method

.method public setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "interceptor"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 403
    return-object p0
.end method

.method public setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .parameter "method"

    .prologue
    .line 167
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 168
    return-object p0
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "unsuccessfulResponseHandler"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 423
    return-object p0
.end method

.method public setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .parameter "url"

    .prologue
    .line 186
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 187
    return-object p0
.end method
