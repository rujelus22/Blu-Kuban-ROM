.class public Lmyorg/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;

.field private sid:Lmyorg/bouncycastle/cms/SignerId;


# virtual methods
.method public getDigestAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSID()Lmyorg/bouncycastle/cms/SignerId;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->sid:Lmyorg/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public toSignerInfo()Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method
