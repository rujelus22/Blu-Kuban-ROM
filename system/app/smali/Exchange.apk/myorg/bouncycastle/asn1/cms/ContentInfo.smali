.class public Lmyorg/bouncycastle/asn1/cms/ContentInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ContentInfo.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;


# instance fields
.field private content:Lmyorg/bouncycastle/asn1/DEREncodable;

.field private contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 64
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->content:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_19

    .line 69
    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->content:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    :cond_19
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
