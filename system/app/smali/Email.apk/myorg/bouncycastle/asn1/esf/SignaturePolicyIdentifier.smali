.class public Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignaturePolicyIdentifier.java"


# instance fields
.field private isSignaturePolicyImplied:Z

.field private signaturePolicyId:Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    .line 26
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    if-eqz v0, :cond_a

    .line 52
    new-instance v0, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    .line 54
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/esf/SignaturePolicyId;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    goto :goto_9
.end method
