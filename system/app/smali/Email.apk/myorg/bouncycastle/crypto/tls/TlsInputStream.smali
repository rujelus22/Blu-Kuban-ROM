.class public Lmyorg/bouncycastle/crypto/tls/TlsInputStream;
.super Ljava/io/InputStream;
.source "TlsInputStream.java"


# instance fields
.field private buf:[B

.field private handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->close()V

    .line 31
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_a

    .line 24
    const/4 v0, -0x1

    .line 26
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_9
.end method

.method public read([BII)I
    .registers 5
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->readApplicationData([BII)I

    move-result v0

    return v0
.end method
