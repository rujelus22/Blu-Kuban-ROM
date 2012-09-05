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


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 147
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 149
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 150
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 151
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    .line 153
    :goto_22
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 154
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObject;

    .line 161
    .local v1, o:Lmyorg/bouncycastle/asn1/DERObject;
    instance-of v3, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_6f

    move-object v2, v1

    .line 162
    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 164
    .local v2, tagged:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_76

    .line 174
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :pswitch_59
    instance-of v3, v2, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 167
    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_22

    .line 170
    :pswitch_64
    instance-of v3, v2, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 171
    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_22

    .line 177
    .end local v2           #tagged:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_6f
    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Set;

    .end local v1           #o:Lmyorg/bouncycastle/asn1/DERObject;
    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_22

    .line 180
    :cond_74
    return-void

    .line 164
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_59
        :pswitch_64
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignedData;
    .registers 4
    .parameter "o"

    .prologue
    .line 33
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_7

    .line 34
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/SignedData;

    .line 36
    .end local p0
    :goto_6
    return-object p0

    .line 35
    .restart local p0
    :cond_7
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 36
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignedData;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignedData;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_6

    .line 39
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCRLs()Lmyorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lmyorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getSignerInfos()Lmyorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

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
