.class final Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;


# instance fields
.field private file:Ljava/io/File;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected write0([BII)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
