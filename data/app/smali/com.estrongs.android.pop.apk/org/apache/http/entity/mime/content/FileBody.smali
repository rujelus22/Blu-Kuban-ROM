.class public Lorg/apache/http/entity/mime/content/FileBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;


# annotations
.annotation runtime Lnet/jcip/annotations/NotThreadSafe;
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    goto :goto_15

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_21

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/entity/mime/content/FileBody;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
