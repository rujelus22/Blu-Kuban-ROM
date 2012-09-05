.class public Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
.super Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "KeyDerivationFunc.java"


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .parameter "seq"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 12
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "id"
    .parameter "params"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 16
    return-void
.end method
