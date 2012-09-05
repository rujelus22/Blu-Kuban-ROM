.class Lcom/android/exchange/utility/HttpRedirect$1CustomRedirectHanlder;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "HttpRedirect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/utility/HttpRedirect;->getRedirectURI(Ljava/net/URI;)Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomRedirectHanlder"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 6
    .parameter "response"
    .parameter "context"

    .prologue
    .line 37
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 39
    .local v1, statusCode:I
    const/16 v2, 0x12e

    if-eq v1, v2, :cond_18

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_18

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_18

    const/16 v2, 0x133

    if-ne v1, v2, :cond_2b

    .line 47
    :cond_18
    const-string v2, "location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 49
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_2b

    .line 51
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/utility/HttpRedirect;->access$002(Ljava/net/URI;)Ljava/net/URI;

    .line 59
    .end local v0           #header:Lorg/apache/http/Header;
    :cond_2b
    const/4 v2, 0x0

    return v2
.end method
