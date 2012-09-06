.class public abstract Lcom/google/android/youtube/core/converter/http/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/youtube/core/converter/http/bc;
    .registers 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/youtube/core/converter/http/bd;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/bd;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 53
    if-nez p1, :cond_a

    .line 54
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty response body"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/converter/http/bc;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bc;->c(Lorg/apache/http/HttpResponse;)V

    .line 43
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/converter/http/bc;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 33
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bc;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;
    .registers 5
    .parameter

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 82
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method protected final c(Lorg/apache/http/HttpResponse;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_16

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bc;->b(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    throw v0

    .line 69
    :cond_14
    const/4 v0, 0x0

    goto :goto_d

    .line 72
    :cond_16
    return-void
.end method
