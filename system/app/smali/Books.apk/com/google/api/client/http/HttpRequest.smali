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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public content:Lcom/google/api/client/http/HttpContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public enableGZipContent:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public headers:Lcom/google/api/client/http/HttpHeaders;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public method:Lcom/google/api/client/http/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public numRetries:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public readTimeout:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public responseHeaders:Lcom/google/api/client/http/HttpHeaders;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final transport:Lcom/google/api/client/http/HttpTransport;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public url:Lcom/google/api/client/http/GenericUrl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpMethod;)V
    .registers 5
    .parameter "transport"
    .parameter "method"

    .prologue
    const/16 v1, 0x4e20

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 95
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 167
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 181
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    .line 212
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 213
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 214
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
    .line 716
    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 734
    .end local p4
    :cond_8
    :goto_8
    return-void

    .line 720
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

    .line 723
    .local v0, stringValue:Ljava/lang/String;
    :goto_17
    if-eqz p1, :cond_3c

    .line 724
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 726
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :goto_37
    sget-object v1, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_3c
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 720
    .end local v0           #stringValue:Ljava/lang/String;
    .restart local p4
    :cond_40
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 728
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
    .line 746
    if-nez p0, :cond_4

    .line 747
    const/4 p0, 0x0

    .line 750
    .end local p0
    .local v0, semicolon:I
    :cond_3
    :goto_3
    return-object p0

    .line 749
    .end local v0           #semicolon:I
    .restart local p0
    :cond_4
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 750
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
    .line 537
    invoke-interface {p1}, Lcom/google/api/client/http/HttpParser;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, contentType:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-void
.end method

.method public execute()Lcom/google/api/client/http/HttpResponse;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    const/16 v21, 0x0

    .line 570
    .local v21, requiresRetry:Z
    const/16 v24, 0x0

    .line 571
    .local v24, retrySupported:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v28, v0

    if-ltz v28, :cond_13b

    const/16 v28, 0x1

    :goto_e
    invoke-static/range {v28 .. v28}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v23, v0

    .line 573
    .local v23, retriesRemaining:I
    const/16 v22, 0x0

    .line 575
    .local v22, response:Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_2b
    if-eqz v22, :cond_30

    .line 581
    invoke-virtual/range {v22 .. v22}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 584
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_45

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 588
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v25

    .line 590
    .local v25, urlString:Ljava/lang/String;
    sget-object v28, Lcom/google/api/client/http/HttpRequest$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_328

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v17

    .line 614
    .local v17, lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_6e
    sget-object v16, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 615
    .local v16, logger:Ljava/util/logging/Logger;
    sget-object v28, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v15

    .line 616
    .local v15, loggable:Z
    const/4 v14, 0x0

    .line 618
    .local v14, logbuf:Ljava/lang/StringBuilder;
    if-eqz v15, :cond_ae

    .line 619
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .restart local v14       #logbuf:Ljava/lang/StringBuilder;
    const-string v28, "-------------- REQUEST  --------------"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x20

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_1ad

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v28, v0

    const-string v29, "Google-HTTP-Java-Client/1.5.0-beta-SNAPSHOT (gzip)"

    invoke-virtual/range {v28 .. v29}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 630
    :goto_c5
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 631
    .local v11, headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d8
    :goto_d8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1e8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 632
    .local v10, headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 633
    .local v19, name:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 634
    .local v18, lowerCase:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    const-string v29, "multiple headers of the same name (headers are case insensitive): %s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v18, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    .line 637
    .local v26, value:Ljava/lang/Object;
    if-eqz v26, :cond_d8

    .line 638
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    .line 639
    .local v27, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v28, v0

    if-nez v28, :cond_11d

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isArray()Z

    move-result v28

    if-eqz v28, :cond_1db

    .line 640
    :cond_11d
    invoke-static/range {v26 .. v26}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_125
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 641
    .local v20, repeatedValue:Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v14, v1, v2, v3}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_125

    .line 571
    .end local v10           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11           #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #logbuf:Ljava/lang/StringBuilder;
    .end local v15           #loggable:Z
    .end local v16           #logger:Ljava/util/logging/Logger;
    .end local v17           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v18           #lowerCase:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #repeatedValue:Ljava/lang/Object;
    .end local v22           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v23           #retriesRemaining:I
    .end local v25           #urlString:Ljava/lang/String;
    .end local v26           #value:Ljava/lang/Object;
    .end local v27           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_13b
    const/16 v28, 0x0

    goto/16 :goto_e

    .line 592
    .restart local v22       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v23       #retriesRemaining:I
    .restart local v25       #urlString:Ljava/lang/String;
    :pswitch_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v17

    .line 593
    .restart local v17       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 598
    .end local v17           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v28

    const-string v29, "HTTP transport doesn\'t support HEAD"

    invoke-static/range {v28 .. v29}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v17

    .line 601
    .restart local v17       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 603
    .end local v17           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v28

    const-string v29, "HTTP transport doesn\'t support PATCH"

    invoke-static/range {v28 .. v29}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v17

    .line 606
    .restart local v17       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 608
    .end local v17           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v17

    .line 609
    .restart local v17       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 611
    .end local v17           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v17

    .restart local v17       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_6e

    .line 627
    .restart local v14       #logbuf:Ljava/lang/StringBuilder;
    .restart local v15       #loggable:Z
    .restart local v16       #logger:Ljava/util/logging/Logger;
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Google-HTTP-Java-Client/1.5.0-beta-SNAPSHOT (gzip)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_c5

    .line 644
    .restart local v10       #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11       #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #lowerCase:Ljava/lang/String;
    .restart local v19       #name:Ljava/lang/String;
    .restart local v26       #value:Ljava/lang/Object;
    .restart local v27       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1db
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-static {v0, v14, v1, v2, v3}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d8

    .line 649
    .end local v10           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18           #lowerCase:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    .end local v26           #value:Ljava/lang/Object;
    .end local v27           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 650
    .local v5, content:Lcom/google/api/client/http/HttpContent;
    if-eqz v5, :cond_326

    .line 653
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 654
    .local v7, contentEncoding:Ljava/lang/String;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    .line 655
    .local v8, contentLength:J
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, contentType:Ljava/lang/String;
    const-wide/16 v28, 0x0

    cmp-long v28, v8, v28

    if-eqz v28, :cond_323

    if-nez v7, :cond_323

    invoke-static {v6}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_323

    if-eqz v15, :cond_212

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->disableContentLogging:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21e

    :cond_212
    sget-object v28, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v28

    if-eqz v28, :cond_323

    .line 660
    :cond_21e
    new-instance v4, Lcom/google/api/client/http/LogContent;

    invoke-direct/range {v4 .. v9}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;J)V

    .line 663
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .local v4, content:Lcom/google/api/client/http/HttpContent;
    :goto_223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_239

    .line 664
    new-instance v5, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v5, v4, v6}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 665
    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 666
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    move-object v4, v5

    .line 669
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    :cond_239
    if-eqz v15, :cond_2a5

    .line 670
    if-eqz v6, :cond_25d

    .line 671
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Content-Type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_25d
    if-eqz v7, :cond_27f

    .line 674
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Content-Encoding: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_27f
    const-wide/16 v28, 0x0

    cmp-long v28, v8, v28

    if-ltz v28, :cond_2a5

    .line 677
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Content-Length: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_2a5
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 683
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #contentEncoding:Ljava/lang/String;
    .end local v8           #contentLength:J
    :goto_2aa
    if-eqz v15, :cond_2b7

    .line 684
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 688
    :cond_2b7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 689
    new-instance v22, Lcom/google/api/client/http/HttpResponse;

    .end local v22           #response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V

    .line 693
    .restart local v22       #response:Lcom/google/api/client/http/HttpResponse;
    if-lez v23, :cond_31f

    if-eqz v4, :cond_2e5

    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v28

    if-eqz v28, :cond_31f

    :cond_2e5
    const/16 v24, 0x1

    .line 694
    :goto_2e7
    const/16 v21, 0x0

    .line 699
    invoke-virtual/range {v22 .. v22}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v28

    if-nez v28, :cond_309

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v28, v0

    if-eqz v28, :cond_309

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v21

    .line 704
    :cond_309
    add-int/lit8 v23, v23, -0x1

    .line 705
    if-eqz v21, :cond_30f

    if-nez v24, :cond_2b

    .line 707
    :cond_30f
    invoke-virtual/range {v22 .. v22}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v28

    if-nez v28, :cond_322

    .line 708
    new-instance v28, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v28

    .line 693
    :cond_31f
    const/16 v24, 0x0

    goto :goto_2e7

    .line 710
    :cond_322
    return-object v22

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v7       #contentEncoding:Ljava/lang/String;
    .restart local v8       #contentLength:J
    :cond_323
    move-object v4, v5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_223

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #contentEncoding:Ljava/lang/String;
    .end local v8           #contentLength:J
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    :cond_326
    move-object v4, v5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    goto :goto_2aa

    .line 590
    :pswitch_data_328
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
    .line 269
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Lcom/google/api/client/http/HttpMethod;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;
    .registers 3
    .parameter "contentType"

    .prologue
    .line 550
    invoke-static {p1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 551
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpParser;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUrl()Lcom/google/api/client/http/GenericUrl;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "content"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 279
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .parameter "headers"

    .prologue
    .line 417
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 418
    return-object p0
.end method

.method public setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "interceptor"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 476
    return-object p0
.end method

.method public setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .parameter "method"

    .prologue
    .line 240
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 241
    return-object p0
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .parameter "unsuccessfulResponseHandler"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 496
    return-object p0
.end method

.method public setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .parameter "url"

    .prologue
    .line 259
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 260
    return-object p0
.end method
