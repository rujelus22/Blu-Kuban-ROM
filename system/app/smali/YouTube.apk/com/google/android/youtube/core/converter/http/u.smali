.class public final Lcom/google/android/youtube/core/converter/http/u;
.super Lcom/google/android/youtube/core/converter/http/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/ao;-><init>()V

    return-void
.end method

.method private d(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;
    .registers 5
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/u;->c(Lorg/apache/http/HttpResponse;)V

    .line 38
    const-string v0, "Content-Range"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 39
    if-nez v0, :cond_13

    .line 40
    new-instance v0, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v1, "Missing content range header"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_13
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 44
    if-lez v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 46
    :try_start_27
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_32} :catch_34

    move-result-object v0

    return-object v0

    .line 47
    :catch_34
    move-exception v0

    .line 48
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :cond_3b
    new-instance v0, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v1, "Invalid content range header"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 23
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "Range"

    const-string v2, "bytes=0-1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/u;->d(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 23
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/u;->d(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
