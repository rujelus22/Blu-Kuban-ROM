.class public Lcom/google/android/apps/unveil/env/StreamLoader;
.super Ljava/lang/Object;
.source "StreamLoader.java"


# static fields
.field private static final LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field private static final STREAM_BUFFER_SIZE_BYTES:I = 0x10000


# instance fields
.field private final buffer:[B

.field private final outStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/StreamLoader;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->buffer:[B

    .line 23
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->outStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 60
    const/high16 v2, 0x1

    new-array v0, v2, [B

    .line 61
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 62
    .local v1, bytesRead:I
    :goto_6
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 63
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 65
    :cond_12
    return-void
.end method

.method public static getByteArrayForStream(Ljava/io/InputStream;)[B
    .registers 2
    .parameter "input"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/Check;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/google/android/apps/unveil/env/StreamLoader;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/StreamLoader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/env/StreamLoader;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)[B
    .registers 8
    .parameter "input"

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, nRead:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->buffer:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 39
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->outStream:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_1

    .line 41
    :catch_13
    move-exception v0

    .line 42
    .local v0, e:Ljava/io/IOException;
    :try_start_14
    sget-object v2, Lcom/google/android/apps/unveil/env/StreamLoader;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Error reading input: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2f

    .line 44
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/ResourceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 47
    .end local v0           #e:Ljava/io/IOException;
    :goto_24
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->outStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 44
    :cond_2b
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/ResourceUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_24

    :catchall_2f
    move-exception v2

    invoke-static {p1}, Lcom/google/android/apps/unveil/env/ResourceUtils;->closeStream(Ljava/io/Closeable;)V

    throw v2
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/StreamLoader;->outStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 30
    return-void
.end method
