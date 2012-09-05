.class public Lmyorg/bouncycastle/cms/CMSUtils;
.super Ljava/lang/Object;
.source "CMSUtils.java"


# static fields
.field private static final RUNTIME:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSUtils;->RUNTIME:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;
    .registers 6
    .parameter "s"
    .parameter "tagNo"
    .parameter "isExplicit"
    .parameter "bufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {v0, p0, p1, p2}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 125
    .local v0, octGen:Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;
    if-eqz p3, :cond_e

    .line 126
    new-array v1, p3, [B

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v1

    .line 129
    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_d
.end method

.method static createBerSetFromList(Ljava/util/List;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .registers 4
    .parameter "derObjects"

    .prologue
    .line 102
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v1, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_9

    .line 108
    :cond_19
    new-instance v2, Lmyorg/bouncycastle/asn1/BERSet;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/BERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method

.method static getCRLsFromStore(Ljava/security/cert/CertStore;)Ljava/util/List;
    .registers 7
    .parameter "certStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, crls:Ljava/util/List;
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {p0, v4}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 88
    .local v0, c:Ljava/security/cert/X509CRL;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_33
    .catch Ljava/security/cert/CRLException; {:try_start_6 .. :try_end_29} :catch_3c

    goto :goto_e

    .line 92
    .end local v0           #c:Ljava/security/cert/X509CRL;
    .end local v3           #it:Ljava/util/Iterator;
    :catch_2a
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing crls"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 94
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_33
    move-exception v2

    .line 95
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing crls"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 96
    .end local v2           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v2

    .line 97
    .local v2, e:Ljava/security/cert/CRLException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error encoding crls"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 91
    .end local v2           #e:Ljava/security/cert/CRLException;
    .restart local v3       #it:Ljava/util/Iterator;
    :cond_45
    return-object v1
.end method

.method static getCertificatesFromStore(Ljava/security/cert/CertStore;)Ljava/util/List;
    .registers 7
    .parameter "certStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, certs:Ljava/util/List;
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {p0, v4}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 67
    .local v0, c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_33
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_29} :catch_3c

    goto :goto_e

    .line 72
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v3           #it:Ljava/util/Iterator;
    :catch_2a
    move-exception v2

    .line 73
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing certs"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 74
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_33
    move-exception v2

    .line 75
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing certs"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v2

    .line 77
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error encoding certs"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 71
    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v3       #it:Ljava/util/Iterator;
    :cond_45
    return-object v1
.end method

.method static getTBSCertificateStructure(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 4
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 137
    :catch_d
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
