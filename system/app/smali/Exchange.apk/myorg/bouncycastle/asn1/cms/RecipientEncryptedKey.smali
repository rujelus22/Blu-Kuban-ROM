.class public Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientEncryptedKey.java"


# instance fields
.field private encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .parameter "id"
    .parameter "encryptedKey"

    .prologue
    .line 53
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    .line 55
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 56
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->identifier:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 82
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
