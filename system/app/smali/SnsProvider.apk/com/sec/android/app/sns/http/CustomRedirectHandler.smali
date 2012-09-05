.class abstract Lcom/sec/android/app/sns/http/CustomRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "SnsHttpMgr.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 490
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .registers 8
    .parameter "response"
    .parameter "context"

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, url:Ljava/net/URI;
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 496
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_32

    .line 498
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/http/CustomRedirectHandler;->getRedirectURL(Ljava/net/URI;)V

    .line 500
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 501
    const-string v2, "SNS_HTTPMGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomRedirectHandler : getLocationURI() : redirect URL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_32
    :goto_32
    return-object v1

    .line 504
    :cond_33
    const-string v2, "SNS_HTTPMGR"

    const-string v3, "CustomRedirectHandler : getLocationURI() : redirect URL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lorg/apache/http/ProtocolException; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_32

    .line 509
    :catch_3b
    move-exception v0

    .line 510
    .local v0, e:Lorg/apache/http/ProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/ProtocolException;->printStackTrace()V

    goto :goto_32
.end method

.method public abstract getRedirectURL(Ljava/net/URI;)V
.end method
