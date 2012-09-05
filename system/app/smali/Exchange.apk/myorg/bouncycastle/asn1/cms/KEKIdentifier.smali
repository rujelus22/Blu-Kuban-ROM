.class public Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KEKIdentifier.java"


# instance fields
.field private date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private keyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 106
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_13

    .line 107
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 110
    :cond_13
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1c

    .line 111
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 114
    :cond_1c
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
