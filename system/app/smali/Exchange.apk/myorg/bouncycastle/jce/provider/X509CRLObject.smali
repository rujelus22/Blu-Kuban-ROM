.class public Lmyorg/bouncycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source "X509CRLObject.java"


# instance fields
.field private c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

.field private isIndirect:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgParams:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/CertificateList;)V
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 58
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    .line 61
    :try_start_5
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 64
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getDEREncoded()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    .line 70
    :goto_29
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL()Z

    move-result v1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    .line 74
    return-void

    .line 67
    :cond_30
    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_29

    .line 71
    :catch_34
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 9
    .parameter "critical"

    .prologue
    .line 94
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 95
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 97
    .local v2, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3a

    .line 98
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    .local v0, e:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 103
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 105
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_1c

    .line 106
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 114
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #set:Ljava/util/Set;
    :cond_3a
    const/4 v4, 0x0

    :cond_3b
    return-object v4
.end method

.method private isIndirectCRL()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 402
    sget-object v3, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 403
    .local v1, idp:[B
    const/4 v2, 0x0

    .line 405
    .local v2, isIndirect:Z
    if-eqz v1, :cond_19

    .line 406
    :try_start_d
    invoke-static {v1}, Lmyorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a

    move-result v2

    .line 413
    :cond_19
    return v2

    .line 409
    :catch_1a
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lmyorg/bouncycastle/jce/provider/ExtCRLException;

    const-string v4, "Exception reading IssuingDistributionPoint"

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private loadCRLEntries()Ljava/util/Set;
    .registers 7

    .prologue
    .line 207
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v3, entrySet:Ljava/util/Set;
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 210
    .local v0, certs:Ljava/util/Enumeration;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 211
    .local v4, previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 212
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 213
    .local v2, entry:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v1, v2, v5, v4}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V

    .line 215
    .local v1, crlEntry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 217
    goto :goto_f

    .line 219
    .end local v1           #crlEntry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #entry:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_2a
    return-object v3
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 146
    :catch_9
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 126
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 128
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3e

    .line 129
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 131
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_3e

    .line 133
    :try_start_17
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v3

    .line 140
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :goto_1f
    return-object v3

    .line 134
    .restart local v1       #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :catch_20
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Lmyorg/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/X509Principal;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 188
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 189
    .end local v0           #aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v2

    .line 190
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 200
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 203
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 7
    .parameter "serialNumber"

    .prologue
    .line 223
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 225
    .local v0, certs:Ljava/util/Enumeration;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 226
    .local v3, previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 227
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 228
    .local v2, entry:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v4, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v1, v2, v4, v3}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V

    .line 231
    .local v1, crlEntry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 238
    .end local v1           #crlEntry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #entry:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :goto_2b
    return-object v1

    .line 235
    .restart local v1       #crlEntry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .restart local v2       #entry:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_2c
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 236
    goto :goto_a

    .line 238
    .end local v1           #crlEntry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #entry:Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_31
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .registers 3

    .prologue
    .line 242
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->loadCRLEntries()Ljava/util/Set;

    move-result-object v0

    .line 244
    .local v0, entrySet:Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 245
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 248
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    if-eqz v1, :cond_11

    .line 273
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 275
    .local v0, tmp:[B
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    .end local v0           #tmp:[B
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getSignature()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getEncoded(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 254
    :catch_d
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 83
    .local v0, extns:Ljava/util/Set;
    if-nez v0, :cond_8

    .line 90
    :cond_7
    :goto_7
    return v1

    .line 87
    :cond_8
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 7
    .parameter "cert"

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X.509"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 383
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    :cond_14
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificates()[Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    .line 388
    .local v0, certs:[Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    if-eqz v0, :cond_3b

    .line 389
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 391
    .local v2, serial:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_3b

    .line 392
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 393
    const/4 v3, 0x1

    .line 398
    .end local v1           #i:I
    .end local v2           #serial:Ljava/math/BigInteger;
    :goto_37
    return v3

    .line 391
    .restart local v1       #i:I
    .restart local v2       #serial:Ljava/math/BigInteger;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 398
    .end local v1           #i:I
    .end local v2           #serial:Ljava/math/BigInteger;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public toString()Ljava/lang/String;
    .registers 20

    .prologue
    .line 289
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v2, buf:Ljava/lang/StringBuffer;
    const-string v15, "line.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, nl:Ljava/lang/String;
    const-string v15, "              Version: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v15, "             IssuerDN: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v15, "          This update: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v15, "          Next update: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v15, "  Signature Algorithm: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v14

    .line 300
    .local v14, sig:[B
    const-string v15, "            Signature: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const/16 v8, 0x14

    .local v8, i:I
    :goto_84
    array-length v15, v14

    if-ge v8, v15, :cond_c7

    .line 302
    array-length v15, v14

    add-int/lit8 v15, v15, -0x14

    if-ge v8, v15, :cond_a9

    .line 303
    const-string v15, "                       "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x14

    move/from16 v0, v17

    invoke-static {v14, v8, v0}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :goto_a6
    add-int/lit8 v8, v8, 0x14

    goto :goto_84

    .line 306
    :cond_a9
    const-string v15, "                       "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    array-length v0, v14

    move/from16 v17, v0

    sub-int v17, v17, v8

    move/from16 v0, v17

    invoke-static {v14, v8, v0}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a6

    .line 311
    :cond_c7
    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v15}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v7

    .line 313
    .local v7, extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v7, :cond_20f

    .line 314
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 316
    .local v4, e:Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_e8

    .line 317
    const-string v15, "           Extensions: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    :cond_e8
    :goto_e8
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_20f

    .line 321
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 322
    .local v12, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v7, v12}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v6

    .line 324
    .local v6, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v15

    if-eqz v15, :cond_20a

    .line 325
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 326
    .local v11, octs:[B
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v11}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 327
    .local v3, dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    const-string v15, "                       critical("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ") "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :try_start_11e
    sget-object v15, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v15}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_157

    .line 331
    new-instance v15, Lmyorg/bouncycastle/asn1/x509/CRLNumber;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lmyorg/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_13e} :catch_13f

    goto :goto_e8

    .line 355
    :catch_13f
    move-exception v5

    .line 356
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v15, " value = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "*****"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e8

    .line 334
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_157
    :try_start_157
    sget-object v15, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v15}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18c

    .line 335
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Base CRL: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Lmyorg/bouncycastle/asn1/x509/CRLNumber;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lmyorg/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e8

    .line 340
    :cond_18c
    sget-object v15, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v15}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ac

    .line 341
    new-instance v16, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e8

    .line 344
    :cond_1ac
    sget-object v15, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v15}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1cc

    .line 345
    new-instance v16, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e8

    .line 347
    :cond_1cc
    sget-object v15, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v15}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ec

    .line 348
    new-instance v16, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e8

    .line 351
    :cond_1ec
    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const-string v15, " value = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_208} :catch_13f

    goto/16 :goto_e8

    .line 360
    .end local v3           #dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v11           #octs:[B
    :cond_20a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e8

    .line 364
    .end local v4           #e:Ljava/util/Enumeration;
    .end local v6           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v12           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_20f
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v13

    .line 365
    .local v13, set:Ljava/util/Set;
    if-eqz v13, :cond_22a

    .line 366
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 367
    .local v9, it:Ljava/util/Iterator;
    :goto_219
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_22a

    .line 368
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_219

    .line 372
    .end local v9           #it:Ljava/util/Iterator;
    :cond_22a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "myBC"

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->c:Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 160
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1e
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 166
    .local v0, sig:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 167
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 168
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_42

    .line 169
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "CRL does not verify with supplied public key."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_42
    return-void
.end method
