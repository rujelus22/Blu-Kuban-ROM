.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateVerify.java"


# instance fields
.field signedHash:[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 6
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x32

    .line 56
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 57
    if-nez p2, :cond_f

    .line 58
    const-string v0, "DECODE ERROR: incorrect CertificateVerify"

    invoke-virtual {p0, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->fatalAlert(BLjava/lang/String;)V

    .line 67
    :goto_c
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 68
    return-void

    .line 61
    :cond_f
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    add-int/lit8 v1, p2, -0x2

    if-eq v0, v1, :cond_1c

    .line 62
    const-string v0, "DECODE ERROR: incorrect CertificateVerify"

    invoke-virtual {p0, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->fatalAlert(BLjava/lang/String;)V

    .line 65
    :cond_1c
    add-int/lit8 v0, p2, -0x2

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    goto :goto_c
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "hash"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 40
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_f

    .line 41
    :cond_8
    const/16 v0, 0x50

    const-string v1, "INTERNAL ERROR: incorrect certificate verify hash"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->fatalAlert(BLjava/lang/String;)V

    .line 44
    :cond_f
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    .line 45
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 46
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 90
    const/16 v0, 0xf

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    array-length v0, v0

    if-eqz v0, :cond_11

    .line 78
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 81
    :cond_11
    return-void
.end method
