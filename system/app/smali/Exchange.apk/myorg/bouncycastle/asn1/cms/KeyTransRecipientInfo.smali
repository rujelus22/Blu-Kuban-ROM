.class public Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyTransRecipientInfo.java"


# instance fields
.field private encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 6
    .parameter "rid"
    .parameter "keyEncryptionAlgorithm"
    .parameter "encryptedKey"

    .prologue
    .line 21
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1a

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 28
    :goto_13
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 29
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 30
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 31
    return-void

    .line 25
    :cond_1a
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_13
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 90
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 91
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 92
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 93
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 95
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
