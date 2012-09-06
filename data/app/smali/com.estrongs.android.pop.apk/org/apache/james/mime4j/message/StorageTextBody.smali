.class Lorg/apache/james/mime4j/message/StorageTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/TextBody;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StorageTextBody;->copy()Lorg/apache/james/mime4j/message/StorageTextBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StorageTextBody;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->addReference()V

    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    :cond_c
    return-void
.end method

.method public getMimeCharset()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
