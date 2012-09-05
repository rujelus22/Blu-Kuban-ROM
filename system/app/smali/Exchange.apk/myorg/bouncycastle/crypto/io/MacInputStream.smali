.class public Lmyorg/bouncycastle/crypto/io/MacInputStream;
.super Ljava/io/FilterInputStream;
.source "MacInputStream.java"


# instance fields
.field protected mac:Lmyorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Mac;)V
    .registers 3
    .parameter "stream"
    .parameter "mac"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/io/MacInputStream;->mac:Lmyorg/bouncycastle/crypto/Mac;

    .line 16
    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 21
    .local v0, b:I
    if-ltz v0, :cond_e

    .line 22
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/MacInputStream;->mac:Lmyorg/bouncycastle/crypto/Mac;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 24
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 29
    .local v0, n:I
    if-ltz v0, :cond_d

    .line 30
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/MacInputStream;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, p1, p2, v0}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 32
    :cond_d
    return v0
.end method
