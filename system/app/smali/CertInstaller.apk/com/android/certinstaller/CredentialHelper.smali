.class Lcom/android/certinstaller/CredentialHelper;
.super Ljava/lang/Object;
.source "CredentialHelper.java"


# instance fields
.field private mBundle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mWapiAsCert:[B

.field private mWapiUserCert:[B


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 66
    const-string v5, ""

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1c

    .line 96
    :goto_1b
    return-void

    .line 83
    :cond_1c
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, name:Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 85
    if-eqz v4, :cond_2b

    .line 86
    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 89
    :cond_2b
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# extras: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 92
    .local v1, bytes:[B
    const-string v6, "CredentialHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_8a

    const/4 v5, -0x1

    :goto_79
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 92
    :cond_8a
    array-length v5, v1

    goto :goto_79

    .line 95
    .end local v1           #bytes:[B
    .end local v3           #key:Ljava/lang/String;
    :cond_8c
    const-string v5, "CERT"

    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/certinstaller/CredentialHelper;->parseCert([B)V

    goto :goto_1b
.end method

.method private extractPkcs12Internal(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 379
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 380
    .local v3, keystore:Ljava/security/KeyStore;
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 381
    .local v4, passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "PKCS12"

    invoke-virtual {p0, v6}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 384
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 385
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 386
    const/4 v5, 0x0

    .line 399
    :goto_2c
    return v5

    .line 389
    :cond_2d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 390
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    .line 392
    .local v2, entry:Ljava/security/KeyStore$Entry;
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extracted alias = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    instance-of v5, v2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v5, :cond_2d

    .line 395
    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 396
    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v2           #entry:Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CredentialHelper;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z

    move-result v5

    goto :goto_2c

    .line 399
    .end local v0           #alias:Ljava/lang/String;
    :cond_70
    const/4 v5, 0x1

    goto :goto_2c
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .registers 12
    .parameter "entry"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v7

    iput-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    .line 404
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 406
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 407
    .local v4, certs:[Ljava/security/cert/Certificate;
    const-string v7, "CredentialHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# certs extracted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 409
    move-object v1, v4

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_37
    if-ge v5, v6, :cond_4d

    aget-object v2, v1, v5

    .line 410
    .local v2, c:Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 411
    .local v3, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v3}, Lcom/android/certinstaller/CredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 412
    iget-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 415
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    :cond_4d
    const-string v7, "CredentialHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# ca certs extracted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_6e

    .line 417
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    .line 403
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_6e
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .parameter "cert"

    .prologue
    const/4 v5, 0x0

    .line 208
    :try_start_1
    const-string v6, "2.5.29.19"

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    .local v0, asn1EncodedBytes:[B
    if-nez v0, :cond_a

    .line 219
    .end local v0           #asn1EncodedBytes:[B
    :goto_9
    return v5

    .line 212
    .restart local v0       #asn1EncodedBytes:[B
    :cond_a
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 214
    .local v1, derOctetString:Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 215
    .local v3, octets:[B
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 217
    .local v4, sequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2e

    move-result v5

    goto :goto_9

    .line 218
    .end local v0           #asn1EncodedBytes:[B
    .end local v1           #derOctetString:Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3           #octets:[B
    .end local v4           #sequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2e
    move-exception v2

    .line 219
    .local v2, e:Ljava/io/IOException;
    goto :goto_9
.end method

.method private isWapiAs(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    .line 176
    :try_start_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1.2.156.11235."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 178
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, issuerName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, subjectName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    move-result v4

    if-eqz v4, :cond_24

    .line 181
    const/4 v3, 0x1

    .line 186
    .end local v1           #issuerName:Ljava/lang/String;
    .end local v2           #subjectName:Ljava/lang/String;
    :cond_24
    :goto_24
    return v3

    .line 185
    :catch_25
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    goto :goto_24
.end method

.method private isWapiUser(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    .line 192
    :try_start_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1.2.156.11235."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 194
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, issuerName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, subjectName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    move-result v4

    if-nez v4, :cond_24

    .line 197
    const/4 v3, 0x1

    .line 202
    .end local v1           #issuerName:Ljava/lang/String;
    .end local v2           #subjectName:Ljava/lang/String;
    :cond_24
    :goto_24
    return v3

    .line 201
    :catch_25
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    goto :goto_24
.end method

.method private parseCert([B)V
    .registers 8
    .parameter "bytes"

    .prologue
    .line 145
    if-nez p1, :cond_3

    .line 172
    :goto_2
    return-void

    .line 150
    :cond_3
    :try_start_3
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 151
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 155
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isWapiAs(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 156
    const-string v3, "CredentialHelper"

    const-string v4, "got a WAPI AS cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B
    :try_end_23
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_2

    .line 169
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_24
    move-exception v2

    .line 170
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v3, "CredentialHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseCert(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 158
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_3e
    :try_start_3e
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isWapiUser(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 159
    const-string v3, "CredentialHelper"

    const-string v4, "got a WAPI user cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    goto :goto_2

    .line 162
    :cond_4e
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 163
    const-string v3, "CredentialHelper"

    const-string v4, "got a CA cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    :cond_61
    const-string v3, "CredentialHelper"

    const-string v4, "got a user cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_6a
    .catch Ljava/security/cert/CertificateException; {:try_start_3e .. :try_end_6a} :catch_24

    goto :goto_2
.end method


# virtual methods
.method containsAnyRawData()Z
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method createSystemInstallIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    .line 312
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.credentials.INSTALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.CredentialStorage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :try_start_e
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_36

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 321
    :cond_36
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5e

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 325
    :cond_5e
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_92

    .line 326
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 328
    .local v0, caCerts:[Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 332
    .end local v0           #caCerts:[Ljava/lang/Object;
    :cond_92
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v3, :cond_b0

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAPIAS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 336
    :cond_b0
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v3, :cond_ce

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAPIUSR_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_ce} :catch_cf

    .line 341
    :cond_ce
    return-object v2

    .line 342
    :catch_cf
    move-exception v1

    .line 343
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method extractPkcs12(Ljava/lang/String;)Z
    .registers 6
    .parameter "password"

    .prologue
    .line 369
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CredentialHelper;->extractPkcs12Internal(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 372
    :goto_4
    return v1

    .line 370
    :catch_5
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CredentialHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractPkcs12(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const/4 v1, 0x0

    goto :goto_4
.end method

.method getData(Ljava/lang/String;)[B
    .registers 3
    .parameter "key"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v1, "<br>"

    .line 280
    .local v1, newline:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v3, :cond_1a

    .line 281
    const v3, 0x7f06000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1a
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v3, :cond_2c

    .line 284
    const v3, 0x7f06000f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_2c
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_3e

    .line 287
    const v3, 0x7f06000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3e
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_50

    .line 290
    const v3, 0x7f06000b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_50
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 293
    .local v0, n:I
    if-lez v0, :cond_64

    .line 294
    if-ne v0, v4, :cond_6d

    .line 295
    const v3, 0x7f06000c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_64
    :goto_64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 297
    :cond_6d
    const v3, 0x7f06000d

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getUserCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method hasAnyForSystemInstall()Z
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiAsCertificate()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiUserCertificate()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasCaCerts()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method hasCaCerts()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hasKeyPair()Z
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method hasPkcs12KeyStore()Z
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKCS12"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasUserCertificate()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasWapiAsCertificate()Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasWapiUserCertificate()Z
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method installCaCertsToKeyChain(Landroid/security/IKeyChainService;)Z
    .registers 9
    .parameter "keyChainService"

    .prologue
    .line 348
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 349
    .local v1, caCert:Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 351
    .local v0, bytes:[B
    :try_start_13
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_16
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_13 .. :try_end_16} :catch_38

    move-result-object v0

    .line 355
    if-eqz v0, :cond_6

    .line 357
    :try_start_19
    invoke-interface {p1, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 358
    :catch_1d
    move-exception v2

    .line 359
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "CredentialHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installCaCertsToKeyChain(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v4, 0x0

    .line 364
    .end local v0           #bytes:[B
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #e:Landroid/os/RemoteException;
    :goto_37
    return v4

    .line 352
    .restart local v0       #bytes:[B
    .restart local v1       #caCert:Ljava/security/cert/X509Certificate;
    :catch_38
    move-exception v2

    .line 353
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 364
    .end local v0           #bytes:[B
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_3f
    const/4 v4, 0x1

    goto :goto_37
.end method

.method onRestoreStates(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedStates"

    .prologue
    .line 127
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 128
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 129
    const-string v4, "USRPKEY_"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 130
    .local v0, bytes:[B
    if-eqz v0, :cond_1d

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 134
    :cond_1d
    const-string v4, "crts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 135
    .local v2, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 136
    .local v1, cert:[B
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CredentialHelper;->parseCert([B)V

    goto :goto_2d

    .line 138
    .end local v1           #cert:[B
    :cond_3d
    return-void
.end method

.method declared-synchronized onSaveStates(Landroid/os/Bundle;)V
    .registers 8
    .parameter "outStates"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    const-string v4, "data"

    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 101
    const-string v4, "name"

    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_1e

    .line 103
    const-string v4, "USRPKEY_"

    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 106
    :cond_1e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v1, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v4, :cond_34

    .line 109
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_34
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v4, :cond_3d

    .line 112
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3d
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4a

    .line 115
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_4a
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 118
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_6b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_63} :catch_64

    goto :goto_50

    .line 121
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_64
    move-exception v2

    .line 122
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    :try_start_65
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_6b

    .line 100
    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    :catchall_6b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 120
    .restart local v1       #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6e
    :try_start_6e
    const-string v4, "crts"

    invoke-static {v1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_6b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6e .. :try_end_77} :catch_64

    .line 124
    monitor-exit p0

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 305
    return-void
.end method

.method setPrivateKey([B)V
    .registers 5
    .parameter "bytes"

    .prologue
    .line 254
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 255
    .local v1, keyFactory:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_11} :catch_19

    .line 261
    return-void

    .line 256
    .end local v1           #keyFactory:Ljava/security/KeyFactory;
    :catch_12
    move-exception v0

    .line 257
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 258
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_19
    move-exception v0

    .line 259
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
