.class public Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientInfo.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field info:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 26
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 20
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 22
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 16
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 18
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 28
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 30
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
