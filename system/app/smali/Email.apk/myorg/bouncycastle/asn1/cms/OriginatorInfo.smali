.class public Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OriginatorInfo.java"


# instance fields
.field private certs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private crls:Lmyorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_66

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "OriginatorInfo too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :pswitch_13
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 28
    .local v0, o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad tag in OriginatorInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :pswitch_3d
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->certs:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 47
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_43
    :pswitch_43
    return-void

    .line 33
    .restart local v0       #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_44
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_43

    .line 41
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_4b
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->certs:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_43

    .line 23
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_43
        :pswitch_13
        :pswitch_4b
    .end packed-switch

    .line 28
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_44
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 69
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz v0, :cond_9

    .line 70
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 74
    .end local p0
    :goto_8
    return-object p0

    .line 73
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 74
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_8

    .line 77
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorInfo: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->certs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_14

    .line 102
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->certs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 105
    :cond_14
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_23

    .line 106
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 109
    :cond_23
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
