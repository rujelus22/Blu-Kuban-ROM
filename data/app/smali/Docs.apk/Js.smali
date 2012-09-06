.class public LJs;
.super Ljava/lang/Object;
.source "ForwardingHttpResponse.java"

# interfaces
.implements Lorg/apache/http/HttpResponse;


# instance fields
.field protected final a:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    iput-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    .line 34
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 39
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator()Lorg/apache/http/HeaderIterator;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->removeHeader(Lorg/apache/http/Header;)V

    .line 109
    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setHeader(Lorg/apache/http/Header;)V

    .line 124
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 134
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setLocale(Ljava/util/Locale;)V

    .line 139
    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .registers 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 144
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setStatusCode(I)V
    .registers 3
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 154
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;I)V

    .line 164
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, LJs;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    .line 169
    return-void
.end method
