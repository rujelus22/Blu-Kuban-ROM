.class public Lmyorg/bouncycastle/asn1/cms/EnvelopedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EnvelopedData.java"


# instance fields
.field private encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

.field private originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_19

    .line 140
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 143
    :cond_19
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 144
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 146
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_32

    .line 147
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 150
    :cond_32
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
