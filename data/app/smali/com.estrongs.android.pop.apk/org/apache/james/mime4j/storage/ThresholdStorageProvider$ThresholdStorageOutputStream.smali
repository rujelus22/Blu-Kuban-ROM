.class final Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;


# instance fields
.field private final head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

.field final synthetic this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    #getter for: Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->thresholdSize:I
    invoke-static {p1}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->access$000(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    :cond_c
    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-nez v0, :cond_16

    new-instance v0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;-><init>([BI)V

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;-><init>([BILorg/apache/james/mime4j/storage/Storage;)V

    goto :goto_15
.end method

.method protected write0([BII)V
    .registers 6

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    #getter for: Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->thresholdSize:I
    invoke-static {v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->access$000(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1a

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_1a
    if-lez p3, :cond_31

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    #getter for: Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;
    invoke-static {v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->access$100(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/StorageProvider;->createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    :cond_2c
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write([BII)V

    :cond_31
    return-void
.end method
