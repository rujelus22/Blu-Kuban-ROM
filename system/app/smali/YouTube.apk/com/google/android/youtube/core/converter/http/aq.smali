.class public final Lcom/google/android/youtube/core/converter/http/aq;
.super Lcom/google/android/youtube/core/converter/http/bo;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

.field public final b:Lcom/google/android/youtube/core/utils/ae;

.field public final c:Lcom/google/android/youtube/core/async/GDataRequest$Version;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/ae;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/bo;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    .line 27
    const-string v0, "deviceAuthorizer can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->a:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 29
    const-string v0, "uriRewriter can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->b:Lcom/google/android/youtube/core/utils/ae;

    .line 30
    const-string v0, "gdataVersion can\'t be empty"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->c:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/ae;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/converter/http/bo;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;)V

    .line 37
    const-string v0, "deviceAuthProvider can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->a:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 39
    const-string v0, "uriRewriter can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->b:Lcom/google/android/youtube/core/utils/ae;

    .line 40
    const-string v0, "gdataVersion can\'t be empty"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->c:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 6
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/converter/http/bo;->a(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 47
    const-string v1, "GData-Version"

    iget-object v2, p0, Lcom/google/android/youtube/core/converter/http/aq;->c:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/GDataRequest$Version;->headerValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_14
    const-string v1, "X-GData-Device"

    iget-object v2, p0, Lcom/google/android/youtube/core/converter/http/aq;->a:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException; {:try_start_14 .. :try_end_21} :catch_22

    .line 56
    return-object v0

    .line 52
    :catch_22
    move-exception v0

    .line 53
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final b(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 5
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/aq;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/aq;->b:Lcom/google/android/youtube/core/utils/ae;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/utils/ae;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
