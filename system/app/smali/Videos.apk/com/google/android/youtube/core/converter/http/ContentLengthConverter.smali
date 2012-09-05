.class public Lcom/google/android/youtube/core/converter/http/ContentLengthConverter;
.super Ljava/lang/Object;
.source "ContentLengthConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Landroid/net/Uri;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/ContentLengthConverter;->convertRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 5
    .parameter "request"

    .prologue
    .line 29
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 31
    .local v0, httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v1, "Range"

    const-string v2, "bytes=0-1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;
    .registers 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v4, "Content-Range"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 37
    .local v2, rangeHeader:Lorg/apache/http/Header;
    if-nez v2, :cond_10

    .line 38
    new-instance v4, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v5, "Missing content range header"

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_10
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, range:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 42
    .local v3, sizeIndex:I
    if-lez v3, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 44
    :try_start_24
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2f} :catch_31

    move-result-object v4

    return-object v4

    .line 45
    :catch_31
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v4, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 50
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_38
    new-instance v4, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v5, "Invalid content range header"

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/ContentLengthConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
