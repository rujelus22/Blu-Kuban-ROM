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


# virtual methods
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
