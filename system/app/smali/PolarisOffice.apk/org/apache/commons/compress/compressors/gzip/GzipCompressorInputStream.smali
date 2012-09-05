.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"


# instance fields
.field private final in:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 43
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    .line 44
    return-void
.end method

.method public static matches([BI)Z
    .registers 6
    .parameter "signature"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    const/4 v2, 0x2

    if-ge p1, v2, :cond_6

    .line 100
    :cond_5
    :goto_5
    return v0

    .line 92
    :cond_6
    aget-byte v2, p0, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_5

    .line 96
    aget-byte v2, p0, v1

    const/16 v3, -0x75

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 100
    goto :goto_5
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v0

    .line 49
    .local v0, read:I
    if-gez v0, :cond_d

    const/4 v1, -0x1

    :goto_9
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 50
    return v0

    .line 49
    :cond_d
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v0

    .line 60
    .local v0, read:I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 61
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "from"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v0

    .line 71
    .local v0, read:I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 72
    return v0
.end method
