.class Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;
.super Ljava/io/InputStream;
.source "CMSTypedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSTypedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullReaderStream"
.end annotation


# instance fields
.field _stream:Ljava/io/InputStream;


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 73
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, rd:I
    const/4 v1, 0x0

    .line 58
    .local v1, total:I
    :goto_2
    if-eqz p3, :cond_10

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_10

    .line 59
    add-int/2addr p2, v0

    .line 60
    sub-int/2addr p3, v0

    .line 61
    add-int/2addr v1, v0

    goto :goto_2

    .line 64
    :cond_10
    if-lez v1, :cond_13

    .line 67
    .end local v1           #total:I
    :goto_12
    return v1

    .restart local v1       #total:I
    :cond_13
    const/4 v1, -0x1

    goto :goto_12
.end method
