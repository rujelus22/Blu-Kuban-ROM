.class final Llibcore/net/http/ChunkedInputStream;
.super Llibcore/net/http/AbstractHttpInputStream;
.source "ChunkedInputStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final MIN_LAST_CHUNK_LENGTH:I = 0x0

.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "\r\n0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Llibcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V
    .registers 5
    .parameter "is"
    .parameter "cacheRequest"
    .parameter "httpEngine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p3, p2}, Llibcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Llibcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 37
    return-void
.end method

.method private readChunkSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 76
    iget v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eq v3, v4, :cond_b

    .line 77
    iget-object v3, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 79
    :cond_b
    iget-object v3, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, chunkSizeString:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, index:I
    if-eq v2, v4, :cond_1d

    .line 82
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_29} :catch_39

    .line 89
    iget v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v3, :cond_38

    .line 90
    iput-boolean v5, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 91
    iget-object v3, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v3}, Llibcore/net/http/HttpEngine;->readTrailers()V

    .line 92
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Llibcore/net/http/ChunkedInputStream;->endOfInput(Z)V

    .line 94
    :cond_38
    return-void

    .line 86
    :catch_39
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a hex chunk size, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->checkNotClosed()V

    .line 98
    iget-boolean v0, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_c

    iget v0, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 99
    :cond_c
    const/4 v0, 0x0

    .line 101
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_d
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 113
    :cond_4
    :goto_4
    return-void

    .line 109
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    .line 110
    iget-boolean v0, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

    goto :goto_4
.end method

.method public read([BII)I
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 40
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 41
    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->checkNotClosed()V

    .line 43
    iget-boolean v2, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v2, :cond_e

    move v0, v1

    .line 71
    :cond_d
    :goto_d
    return v0

    .line 46
    :cond_e
    iget v2, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eqz v2, :cond_16

    iget v2, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-ne v2, v1, :cond_1f

    .line 47
    :cond_16
    invoke-direct {p0}, Llibcore/net/http/ChunkedInputStream;->readChunkSize()V

    .line 48
    iget-boolean v2, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v2, :cond_1f

    move v0, v1

    .line 49
    goto :goto_d

    .line 52
    :cond_1f
    iget-object v2, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    .local v0, read:I
    if-ne v0, v1, :cond_38

    .line 54
    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

    .line 55
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_38
    iget v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    sub-int/2addr v1, v0

    iput v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Llibcore/net/http/ChunkedInputStream;->cacheWrite([BII)V

    .line 67
    iget v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v1, :cond_d

    iget-object v1, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    sget v2, Llibcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    if-lt v1, v2, :cond_d

    .line 68
    invoke-direct {p0}, Llibcore/net/http/ChunkedInputStream;->readChunkSize()V

    goto :goto_d
.end method
