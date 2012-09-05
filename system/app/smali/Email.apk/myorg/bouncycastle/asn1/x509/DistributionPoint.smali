.class public Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "DistributionPoint.java"


# instance fields
.field cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

.field reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_38

    .line 47
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 48
    .local v1, t:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 46
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 50
    :pswitch_1d
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    goto :goto_1a

    .line 53
    :pswitch_25
    new-instance v2, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lmyorg/bouncycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    goto :goto_1a

    .line 56
    :pswitch_31
    invoke-static {v1, v4}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1a

    .line 59
    .end local v1           #t:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_38
    return-void

    .line 48
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_31
    .end packed-switch
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/DistributionPointName;Lmyorg/bouncycastle/asn1/x509/ReasonFlags;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 4
    .parameter "distributionPoint"
    .parameter "reasons"
    .parameter "cRLIssuer"

    .prologue
    .line 62
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 63
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    .line 64
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    .line 65
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    .line 66
    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "buf"
    .parameter "sep"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 121
    const-string v0, "    "

    .line 123
    .local v0, indent:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .registers 4
    .parameter "obj"

    .prologue
    .line 34
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    if-eqz v0, :cond_9

    .line 35
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    .line 39
    .end local p0
    :goto_8
    return-object p0

    .line 38
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_8

    .line 42
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

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
.method public getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 83
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v1, :cond_14

    .line 87
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-direct {v1, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 90
    :cond_14
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_23

    .line 91
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 94
    :cond_23
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_32

    .line 95
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 98
    :cond_32
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 102
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, sep:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "DistributionPoint: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_22

    .line 107
    const-string v2, "distributionPoint"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_22
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_31

    .line 110
    const-string v2, "reasons"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_31
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v2, :cond_40

    .line 113
    const-string v2, "cRLIssuer"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_40
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
