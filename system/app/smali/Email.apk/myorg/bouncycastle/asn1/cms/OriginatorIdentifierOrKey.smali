.class public Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OriginatorIdentifierOrKey.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 38
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 40
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 16
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 18
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 31
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 32
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 33
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 28
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .registers 4
    .parameter "o"

    .prologue
    .line 66
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    if-eqz v0, :cond_9

    .line 67
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 84
    .end local p0
    :goto_8
    return-object p0

    .line 70
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_16

    .line 71
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object p0, v0

    goto :goto_8

    .line 74
    .restart local p0
    :cond_16
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_23

    .line 75
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V

    move-object p0, v0

    goto :goto_8

    .line 78
    .restart local p0
    :cond_23
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    if-eqz v0, :cond_30

    .line 79
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V

    move-object p0, v0

    goto :goto_8

    .line 82
    .restart local p0
    :cond_30
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3d

    .line 84
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_8

    .line 87
    .restart local p0
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorIdentifierOrKey: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .registers 4
    .parameter "o"
    .parameter "explicit"

    .prologue
    .line 52
    if-nez p1, :cond_a

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIssuerAndSerialNumber()Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 100
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOriginatorKey()Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 113
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    .line 116
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getSubjectKeyIdentifier()Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_1a

    .line 105
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    .line 108
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
