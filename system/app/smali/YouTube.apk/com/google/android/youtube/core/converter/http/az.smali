.class public final Lcom/google/android/youtube/core/converter/http/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 25
    if-nez v0, :cond_7

    .line 44
    :cond_6
    :goto_6
    return-void

    .line 28
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_6

    const-string v2, "gzip"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    new-instance v1, Lcom/google/android/youtube/core/converter/http/ba;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/converter/http/ba;-><init>(Lcom/google/android/youtube/core/converter/http/az;Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6
.end method
