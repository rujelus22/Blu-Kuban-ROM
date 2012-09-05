.class public Lmyorg/bouncycastle/ocsp/OCSPReq;
.super Ljava/lang/Object;
.source "OCSPReq.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private req:Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;


# direct methods
.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .parameter "critical"

    .prologue
    .line 291
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 292
    .local v4, set:Ljava/util/Set;
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/OCSPReq;->getRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 294
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_2d

    .line 295
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 297
    .local v0, e:Ljava/util/Enumeration;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 298
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 299
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 301
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_f

    .line 302
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 307
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2d
    return-object v4
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/ocsp/OCSPReq;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 319
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/OCSPReq;->getRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 321
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3a

    .line 322
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 324
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_3a

    .line 326
    :try_start_11
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1c

    move-result-object v3

    .line 333
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_1b
    return-object v3

    .line 327
    .restart local v1       #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :catch_1c
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :cond_3a
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/ocsp/OCSPReq;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lmyorg/bouncycastle/ocsp/OCSPReq;->req:Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lmyorg/bouncycastle/ocsp/OCSPReq;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 283
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 284
    const/4 v1, 0x1

    .line 287
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method