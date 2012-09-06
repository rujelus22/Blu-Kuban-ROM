.class final Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;


# instance fields
.field bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/storage/MemoryStorageProvider$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .registers 4

    new-instance v0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;-><init>([BI)V

    return-object v0
.end method

.method protected write0([BII)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    return-void
.end method
