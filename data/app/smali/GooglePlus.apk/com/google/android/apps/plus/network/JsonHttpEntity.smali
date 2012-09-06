.class public Lcom/google/android/apps/plus/network/JsonHttpEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "JsonHttpEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        ">",
        "Lorg/apache/http/entity/AbstractHttpEntity;"
    }
.end annotation


# instance fields
.field private final mJsonGenerator:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;"
        }
    .end annotation
.end field

.field private final mRequest:Lcom/google/android/apps/plus/json/GenericJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;TRequest;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/apps/plus/network/JsonHttpEntity;,"Lcom/google/android/apps/plus/network/JsonHttpEntity<TRequest;>;"
    .local p1, jsonGenerator:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TRequest;>;"
    .local p2, request:Lcom/google/android/apps/plus/json/GenericJson;,"TRequest;"
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mJsonGenerator:Lcom/google/android/apps/plus/json/EsJson;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mRequest:Lcom/google/android/apps/plus/json/GenericJson;

    .line 30
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/JsonHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 31
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/JsonHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/apps/plus/network/JsonHttpEntity;,"Lcom/google/android/apps/plus/network/JsonHttpEntity<TRequest;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mJsonGenerator:Lcom/google/android/apps/plus/json/EsJson;

    if-nez v0, :cond_d

    .line 37
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mJsonGenerator:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mRequest:Lcom/google/android/apps/plus/json/GenericJson;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/json/EsJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_c
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/apps/plus/network/JsonHttpEntity;,"Lcom/google/android/apps/plus/network/JsonHttpEntity<TRequest;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 52
    .local p0, this:Lcom/google/android/apps/plus/network/JsonHttpEntity;,"Lcom/google/android/apps/plus/network/JsonHttpEntity<TRequest;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/apps/plus/network/JsonHttpEntity;,"Lcom/google/android/apps/plus/network/JsonHttpEntity<TRequest;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/apps/plus/network/JsonHttpEntity;,"Lcom/google/android/apps/plus/network/JsonHttpEntity<TRequest;>;"
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v0, gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    iget-object v1, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mJsonGenerator:Lcom/google/android/apps/plus/json/EsJson;

    if-eqz v1, :cond_15

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mJsonGenerator:Lcom/google/android/apps/plus/json/EsJson;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/JsonHttpEntity;->mRequest:Lcom/google/android/apps/plus/json/GenericJson;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/plus/json/EsJson;->writeToStream(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 69
    :cond_15
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 70
    return-void
.end method
