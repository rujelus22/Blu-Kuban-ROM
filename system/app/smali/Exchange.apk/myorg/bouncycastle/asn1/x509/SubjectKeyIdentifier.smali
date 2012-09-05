.class public Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 3
    .parameter "spki"

    .prologue
    .line 61
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 62
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 63
    return-void
.end method

.method private static getDigest(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 6
    .parameter "spki"

    .prologue
    const/4 v4, 0x0

    .line 114
    new-instance v1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 115
    .local v1, digest:Lmyorg/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 117
    .local v2, resBuf:[B
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 118
    .local v0, bytes:[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 119
    invoke-interface {v1, v2, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 120
    return-object v2
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method