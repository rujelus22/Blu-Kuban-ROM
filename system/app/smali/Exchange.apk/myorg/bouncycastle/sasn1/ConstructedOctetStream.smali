.class Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private final _aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_first:Z

    .line 17
    new-instance v0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 21
    iget-boolean v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_first:Z

    if-eqz v3, :cond_31

    .line 22
    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/sasn1/Asn1OctetString;

    .line 24
    .local v1, s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    if-nez v1, :cond_11

    move v0, v2

    .line 49
    .end local v1           #s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    :cond_10
    :goto_10
    return v0

    .line 28
    .restart local v1       #s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    :cond_11
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_first:Z

    .line 29
    invoke-interface {v1}, Lmyorg/bouncycastle/sasn1/Asn1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 34
    .end local v1           #s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    :cond_1a
    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 36
    .local v0, b:I
    if-gez v0, :cond_10

    .line 37
    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/sasn1/Asn1OctetString;

    .line 39
    .restart local v1       #s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    if-nez v1, :cond_37

    .line 40
    const/4 v3, 0x0

    iput-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v0, v2

    .line 42
    goto :goto_10

    .line 30
    .end local v0           #b:I
    .end local v1           #s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    :cond_31
    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_1a

    move v0, v2

    .line 31
    goto :goto_10

    .line 45
    .restart local v0       #b:I
    .restart local v1       #s:Lmyorg/bouncycastle/sasn1/Asn1OctetString;
    :cond_37
    invoke-interface {v1}, Lmyorg/bouncycastle/sasn1/Asn1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 47
    iget-object v2, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_10
.end method
