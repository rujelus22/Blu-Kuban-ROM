.class public Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyAgreeRecipientIdentifier.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

.field private rKeyID:Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .registers 3
    .parameter "issuerSerial"

    .prologue
    .line 52
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    .line 55
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V
    .registers 3
    .parameter "rKeyID"

    .prologue
    .line 57
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 59
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    .line 60
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .registers 4
    .parameter "obj"

    .prologue
    .line 35
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    if-eqz v0, :cond_9

    .line 36
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    .line 44
    .end local p0
    :goto_8
    return-object p0

    .line 39
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_18

    .line 40
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object p0, v0

    goto :goto_8

    .line 43
    :cond_18
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_33

    move-object v0, p0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_33

    .line 44
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V

    move-object p0, v0

    goto :goto_8

    .line 48
    .restart local p0
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyAgreeRecipientIdentifier: "

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
.method public getIssuerAndSerialNumber()Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    return-object v0
.end method

.method public getRKeyID()Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 85
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    invoke-direct {v0, v2, v2, v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_b
.end method
