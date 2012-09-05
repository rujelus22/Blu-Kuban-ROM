.class public Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KEKIdentifier.java"


# instance fields
.field private date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private keyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 28
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid KEKIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_1c
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_2d

    .line 33
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 45
    :goto_2c
    :pswitch_2c
    return-void

    .line 35
    :cond_2d
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_2c

    .line 39
    :pswitch_38
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lmyorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_2c

    .line 28
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1c
        :pswitch_38
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;
    .registers 4
    .parameter "obj"

    .prologue
    .line 67
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;

    if-eqz v0, :cond_9

    .line 68
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;

    .line 72
    .end local p0
    :goto_8
    return-object p0

    .line 71
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_8

    .line 75
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KEKIdentifier: "

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
.method public getKeyIdentifier()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

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
