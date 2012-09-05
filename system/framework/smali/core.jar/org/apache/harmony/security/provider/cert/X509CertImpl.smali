.class public final Lorg/apache/harmony/security/provider/cert/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x293f8c78c6c7611aL


# instance fields
.field private final certificate:Lorg/apache/harmony/security/x509/Certificate;

.field private volatile encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private volatile issuer:Ljavax/security/auth/x500/X500Principal;

.field private volatile notAfter:J

.field private volatile notBefore:J

.field private volatile nullSigAlgParams:Z

.field private volatile publicKey:Ljava/security/PublicKey;

.field private volatile serialNumber:Ljava/math/BigInteger;

.field private volatile sigAlgName:Ljava/lang/String;

.field private volatile sigAlgOID:Ljava/lang/String;

.field private volatile sigAlgParams:[B

.field private volatile signature:[B

.field private volatile subject:Ljavax/security/auth/x500/X500Principal;

.field private final tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

.field private volatile tbsCertificate:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    .line 99
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 76
    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 77
    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 102
    :try_start_9
    sget-object v1, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/Certificate;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 104
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 105
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_24

    .line 109
    return-void

    .line 106
    :catch_24
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/Certificate;)V
    .registers 4
    .parameter "certificate"

    .prologue
    const-wide/16 v0, -0x1

    .line 115
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 76
    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 77
    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 118
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 120
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 130
    return-void
.end method

.method private checkValidity(J)V
    .registers 8
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_39

    .line 145
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", validation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_39
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_72

    .line 149
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiration time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_72
    return-void
.end method

.method private getEncodedInternal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    .line 351
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    if-nez v1, :cond_e

    .line 352
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    .line 354
    :cond_e
    return-object v0
.end method

.method private getNotAfterInternal()J
    .registers 5

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 210
    .local v0, result:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 211
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 213
    :cond_18
    return-wide v0
.end method

.method private getNotBeforeInternal()J
    .registers 5

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 198
    .local v0, result:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 199
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 201
    :cond_18
    return-wide v0
.end method

.method private getSignatureInternal()[B
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    .line 234
    .local v0, result:[B
    if-nez v0, :cond_c

    .line 235
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    .line 237
    :cond_c
    return-object v0
.end method

.method private getTbsCertificateInternal()[B
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 222
    .local v0, result:[B
    if-nez v0, :cond_c

    .line 223
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 225
    :cond_c
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->checkValidity(J)V

    .line 135
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 4
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->checkValidity(J)V

    .line 140
    return-void
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_8

    .line 309
    const v0, 0x7fffffff

    .line 311
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfBasicConstrains()I

    move-result v0

    goto :goto_7
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 423
    const/4 v0, 0x0

    .line 426
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 298
    const/4 v1, 0x0

    .line 301
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfExtendedKeyUsage()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 302
    :catch_d
    move-exception v0

    .line 303
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_6

    .line 435
    :cond_5
    :goto_5
    return-object v1

    .line 434
    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 435
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_5
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 334
    const/4 v1, 0x0

    .line 340
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfIssuerAlternativeName()Ljava/util/Collection;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 341
    :catch_d
    move-exception v0

    .line 342
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 172
    .local v0, result:Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_10

    .line 174
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 176
    :cond_10
    return-object v0
.end method

.method public getKeyUsage()[Z
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfKeyUsage()[Z

    move-result-object v0

    goto :goto_5
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 4

    .prologue
    .line 205
    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 4

    .prologue
    .line 193
    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 359
    .local v0, result:Ljava/security/PublicKey;
    if-nez v0, :cond_10

    .line 360
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 362
    :cond_10
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 160
    .local v0, result:Ljava/math/BigInteger;
    if-nez v0, :cond_c

    .line 161
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 163
    :cond_c
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 242
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 243
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, sigAlgOIDLocal:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    if-nez v0, :cond_f

    .line 248
    move-object v0, v1

    .line 250
    :cond_f
    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 252
    .end local v1           #sigAlgOIDLocal:Ljava/lang/String;
    :cond_11
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 257
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 259
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 261
    :cond_10
    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-boolean v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    if-eqz v2, :cond_7

    move-object v0, v1

    .line 277
    :cond_6
    :goto_6
    return-object v0

    .line 268
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    .line 269
    .local v0, result:[B
    if-nez v0, :cond_6

    .line 270
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v0

    .line 271
    if-nez v0, :cond_1c

    .line 272
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    move-object v0, v1

    .line 273
    goto :goto_6

    .line 275
    :cond_1c
    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    goto :goto_6
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSignatureInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 316
    const/4 v1, 0x0

    .line 322
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfSubjectAlternativeName()Ljava/util/Collection;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 323
    :catch_d
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 185
    .local v0, result:Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_10

    .line 187
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 189
    :cond_10
    return-object v0
.end method

.method public getTBSCertificate()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 440
    const/4 v0, 0x0

    .line 443
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_28

    move-result-object v1

    .line 379
    .local v1, signature:Ljava/security/Signature;
    :goto_8
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 381
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v2

    .line 383
    .local v2, tbsCertificateLocal:[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    .line 384
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_32

    .line 385
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature was not verified"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    .end local v1           #signature:Ljava/security/Signature;
    .end local v2           #tbsCertificateLocal:[B
    :catch_28
    move-exception v0

    .line 377
    .local v0, ignored:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1       #signature:Ljava/security/Signature;
    goto :goto_8

    .line 387
    .end local v0           #ignored:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #tbsCertificateLocal:[B
    :cond_32
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 395
    if-nez p2, :cond_2a

    .line 396
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_9} :catch_33

    move-result-object v1

    .line 403
    .local v1, signature:Ljava/security/Signature;
    :goto_a
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 405
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v2

    .line 407
    .local v2, tbsCertificateLocal:[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    .line 408
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 409
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature was not verified"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    .end local v1           #signature:Ljava/security/Signature;
    .end local v2           #tbsCertificateLocal:[B
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_31} :catch_33

    move-result-object v1

    .restart local v1       #signature:Ljava/security/Signature;
    goto :goto_a

    .line 400
    .end local v1           #signature:Ljava/security/Signature;
    :catch_33
    move-exception v0

    .line 401
    .local v0, ignored:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1       #signature:Ljava/security/Signature;
    goto :goto_a

    .line 411
    .end local v0           #ignored:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #tbsCertificateLocal:[B
    :cond_3d
    return-void
.end method
