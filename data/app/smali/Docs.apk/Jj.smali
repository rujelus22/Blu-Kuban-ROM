.class public LJj;
.super Ljava/lang/Object;
.source "RedirectHelper.java"


# direct methods
.method public static a(LIL;Ljava/lang/String;Ljava/net/URI;IZ)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 57
    if-eqz p4, :cond_a

    .line 58
    invoke-interface {p0, v0}, LIL;->a(Lorg/apache/http/HttpRequest;)V

    .line 61
    :cond_a
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p3, v1}, LJj;->a(LIL;Ljava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;ILjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static a(LIL;Ljava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;ILjava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    move v1, v2

    :goto_2
    if-gt v1, p3, :cond_41

    .line 82
    if-nez p4, :cond_3c

    invoke-interface {p0, p1, p2}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 84
    :goto_a
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 85
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_1e

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x12d

    if-ne v3, v4, :cond_49

    .line 87
    :cond_1e
    invoke-interface {p0}, LIL;->a()V

    .line 88
    invoke-interface {p0}, LIL;->b()V

    .line 89
    new-instance v3, Ljava/net/URI;

    const-string v4, "Location"

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 82
    :cond_3c
    invoke-interface {p0, p1, p2, p4}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_a

    .line 95
    :cond_41
    new-instance v0, LJk;

    const-string v1, "Excessive redirects."

    invoke-direct {v0, v1}, LJk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_49
    return-object v0
.end method
