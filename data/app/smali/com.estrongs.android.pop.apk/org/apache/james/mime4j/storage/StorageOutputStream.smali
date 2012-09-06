.class public abstract Lorg/apache/james/mime4j/storage/StorageOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private closed:Z

.field private singleByte:[B

.field private usedUp:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    return-void
.end method

.method public final toStorage()Lorg/apache/james/mime4j/storage/Storage;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->usedUp:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "toStorage may be invoked only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->usedUp:Z

    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage0()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    return-object v0
.end method

.method protected abstract toStorage0()Lorg/apache/james/mime4j/storage/Storage;
.end method

.method public final write(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "StorageOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    if-nez v0, :cond_16

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    :cond_16
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "StorageOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_14
    array-length v0, p1

    if-nez v0, :cond_18

    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    goto :goto_17
.end method

.method public final write([BII)V
    .registers 6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "StorageOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_14
    if-ltz p2, :cond_1d

    if-ltz p3, :cond_1d

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_23

    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_23
    if-nez p3, :cond_26

    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    goto :goto_25
.end method

.method protected abstract write0([BII)V
.end method
