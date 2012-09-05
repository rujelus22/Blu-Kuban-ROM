.class public Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
.super Lcom/vlingo/client/core/http/HttpRequest;
.source "VLHttpServiceRequest.java"


# static fields
.field public static final RESPONSE_ENCODING_JSON:Ljava/lang/String; = "application/json"

.field public static final RESPONSE_ENCODING_XML:Ljava/lang/String; = "text/xml"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V
    .registers 5
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpRequest;-><init>()V

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->init(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    .line 51
    return-void
.end method

.method public static createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 7
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "request"

    .prologue
    .line 33
    new-instance v0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    iget-object v1, p2, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    invoke-static {p3}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;[B)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 6
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "request"

    .prologue
    .line 45
    new-instance v0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    iget-object v1, p2, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 5
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"

    .prologue
    .line 29
    new-instance v0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 6
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "request"

    .prologue
    .line 37
    new-instance v0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    invoke-static {p3}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 5
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "request"

    .prologue
    .line 41
    new-instance v0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public fetchResponse()Lcom/vlingo/client/core/http/HttpResponse;
    .registers 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->extraHeaders:Ljava/util/Hashtable;

    if-nez v1, :cond_b

    .line 67
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->extraHeaders:Ljava/util/Hashtable;

    .line 68
    :cond_b
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->cookies:Ljava/util/Hashtable;

    if-nez v1, :cond_16

    .line 69
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->cookies:Ljava/util/Hashtable;

    .line 72
    :cond_16
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->extraHeaders:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->client:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->software:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addStandardVlingoHttpHeaders(Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 75
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->cookies:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/vlingo/client/core/http/HttpUtil;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/vlingo/client/core/http/HttpUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addVLServiceCookies(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->cookies:Ljava/util/Hashtable;

    .line 77
    invoke-super {p0}, Lcom/vlingo/client/core/http/HttpRequest;->fetchResponse()Lcom/vlingo/client/core/http/HttpResponse;

    move-result-object v0

    .line 79
    .local v0, response:Lcom/vlingo/client/core/http/HttpResponse;
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpResponse;->getCookies()Lcom/vlingo/client/core/http/cookies/CookieJar;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->handleResponseCookies(Lcom/vlingo/client/core/http/cookies/CookieJar;)V

    .line 81
    return-object v0
.end method

.method public setResponseEncoding(Ljava/lang/String;)V
    .registers 3
    .parameter "responseEncoding"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->extraHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->extraHeaders:Ljava/util/Hashtable;

    .line 56
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->extraHeaders:Ljava/util/Hashtable;

    invoke-static {v0, p1}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->setProtocolHeader(Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 57
    return-void
.end method
