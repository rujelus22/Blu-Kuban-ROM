.class public Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignerIdentifier.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 20
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 21
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 25
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 15
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 16
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 17
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
    .registers 4
    .parameter "o"

    .prologue
    .line 34
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    if-eqz v0, :cond_9

    .line 35
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 47
    .end local p0
    :goto_8
    return-object p0

    .line 38
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_16

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object p0, v0

    goto :goto_8

    .line 42
    .restart local p0
    :cond_16
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_23

    .line 43
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_8

    .line 46
    .restart local p0
    :cond_23
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_30

    .line 47
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/DERObject;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_8

    .line 50
    .restart local p0
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

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
.method public isTagged()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
