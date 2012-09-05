.class public Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "MQVuserKeyingMaterial.java"


# instance fields
.field private addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private ephemeralPublicKey:Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    .line 86
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1a

    .line 90
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 93
    :cond_1a
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
