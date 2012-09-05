.class public Lmyorg/bouncycastle/asn1/x509/UserNotice;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "UserNotice.java"


# instance fields
.field private explicitText:Lmyorg/bouncycastle/asn1/x509/DisplayText;

.field private noticeRef:Lmyorg/bouncycastle/asn1/x509/NoticeReference;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    .local v0, av:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lmyorg/bouncycastle/asn1/x509/NoticeReference;

    if-eqz v1, :cond_e

    .line 87
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lmyorg/bouncycastle/asn1/x509/NoticeReference;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 90
    :cond_e
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lmyorg/bouncycastle/asn1/x509/DisplayText;

    if-eqz v1, :cond_17

    .line 91
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lmyorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 94
    :cond_17
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
