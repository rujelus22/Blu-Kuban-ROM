.class final Lcom/google/android/youtube/core/converter/http/am;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/al;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/al;Lorg/apache/http/HttpEntity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/am;->a:Lcom/google/android/youtube/core/converter/http/al;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/am;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final getContentLength()J
    .registers 3

    .prologue
    .line 40
    const-wide/16 v0, -0x1

    return-wide v0
.end method
