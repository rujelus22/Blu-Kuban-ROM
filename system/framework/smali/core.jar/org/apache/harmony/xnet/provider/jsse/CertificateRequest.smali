.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateRequest.java"


# instance fields
.field final certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

.field final certificate_types:[B

.field private encoded_principals:[[B

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 9
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v2

    .line 91
    .local v2, size:I
    new-array v4, v2, [B

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    .line 92
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    invoke-static {p1, v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v2

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, totalPrincipalsLength:I
    const/4 v0, 0x0

    .line 96
    .local v0, principalLength:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, principals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    :goto_1b
    if-ge v3, v2, :cond_2d

    .line 98
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 99
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v4, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x2

    .line 101
    add-int/2addr v3, v0

    goto :goto_1b

    .line 103
    :cond_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavax/security/auth/x500/X500Principal;

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 104
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 105
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v4, p2, :cond_4e

    .line 106
    const/16 v4, 0x32

    const-string v5, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 108
    :cond_4e
    return-void
.end method

.method public constructor <init>([B[Ljava/security/cert/X509Certificate;)V
    .registers 7
    .parameter "certificate_types"
    .parameter "accepted"

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 64
    if-nez p2, :cond_c

    .line 65
    const/16 v2, 0x50

    const-string v3, "CertificateRequest: array of certificate authority certificates is null"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 68
    :cond_c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, totalPrincipalsLength:I
    array-length v2, p2

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 72
    array-length v2, p2

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    array-length v2, p2

    if-ge v0, v2, :cond_3e

    .line 74
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    aput-object v3, v2, v0

    .line 75
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 76
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 79
    :cond_3e
    array-length v2, p1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 80
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 140
    const/16 v0, 0xd

    return v0
.end method

.method public getTypesAsString()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 147
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    if-nez v2, :cond_29

    .line 148
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_29

    .line 150
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_22

    .line 152
    const/16 v2, 0x32

    const-string v3, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 155
    :cond_22
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 158
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_29
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    return-object v2
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 118
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 119
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 120
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 122
    :cond_17
    const/4 v0, 0x0

    .line 123
    .local v0, authoritiesLength:I
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 124
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 126
    :cond_29
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 127
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    .line 128
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 129
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 131
    :cond_46
    return-void
.end method
