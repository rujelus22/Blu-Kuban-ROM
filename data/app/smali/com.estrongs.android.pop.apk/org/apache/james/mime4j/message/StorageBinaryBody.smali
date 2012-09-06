.class Lorg/apache/james/mime4j/message/StorageBinaryBody;
.super Lorg/apache/james/mime4j/message/BinaryBody;


# instance fields
.field private storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BinaryBody;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StorageBinaryBody;->copy()Lorg/apache/james/mime4j/message/StorageBinaryBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StorageBinaryBody;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->addReference()V

    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    :cond_c
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
