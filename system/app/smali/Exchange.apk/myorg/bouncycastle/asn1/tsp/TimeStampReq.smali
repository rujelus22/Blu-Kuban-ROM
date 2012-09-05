.class public Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TimeStampReq.java"


# instance fields
.field certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

.field extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field messageImprint:Lmyorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lmyorg/bouncycastle/asn1/DERInteger;

.field tsaPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 131
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 132
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lmyorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 134
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_19

    .line 135
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 138
    :cond_19
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_22

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 142
    :cond_22
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 143
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 146
    :cond_33
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_41

    .line 147
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 150
    :cond_41
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
