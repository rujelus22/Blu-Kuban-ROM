.class public Lmyorg/bouncycastle/asn1/cms/SignedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignedData.java"


# instance fields
.field private certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private certsBer:Z

.field private contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

.field private crls:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private crlsBer:Z

.field private digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 223
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 224
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 225
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 227
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_28

    .line 228
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_45

    .line 229
    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 235
    :cond_28
    :goto_28
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3a

    .line 236
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    if-eqz v1, :cond_50

    .line 237
    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v4, v2}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 243
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 245
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1

    .line 231
    :cond_45
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_28

    .line 239
    :cond_50
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_3a
.end method
