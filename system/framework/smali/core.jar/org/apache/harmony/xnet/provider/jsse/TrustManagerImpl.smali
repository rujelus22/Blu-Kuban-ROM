.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 14
    .parameter "keyStore"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v9, 0x0

    .line 87
    .local v9, validatorLocal:Ljava/security/cert/CertPathValidator;
    const/4 v3, 0x0

    .line 88
    .local v3, factoryLocal:Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 89
    .local v4, rootKeyStoreLocal:Ljava/security/KeyStore;
    const/4 v7, 0x0

    .line 90
    .local v7, trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    const/4 v5, 0x0

    .line 91
    .local v5, trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    const/4 v0, 0x0

    .line 92
    .local v0, acceptedIssuersLocal:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 94
    .local v2, errLocal:Ljava/lang/Exception;
    :try_start_a
    const-string v10, "PKIX"

    invoke-static {v10}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v9

    .line 95
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 98
    const-string v10, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 99
    move-object v4, p1

    .line 100
    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_50

    .line 101
    .end local v7           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .local v8, trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    const/4 v0, 0x0

    .line 102
    :try_start_29
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-direct {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_53

    .end local v5           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .local v6, trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    move-object v5, v6

    .end local v6           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .restart local v5       #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    move-object v7, v8

    .line 114
    .end local v8           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .restart local v7       #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    :goto_30
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 115
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 116
    iput-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 117
    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 118
    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    .line 119
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 120
    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 121
    return-void

    .line 104
    :cond_3f
    const/4 v4, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    :try_start_41
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 107
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4e} :catch_50

    .end local v5           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .restart local v6       #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    move-object v5, v6

    .end local v6           #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    .restart local v5       #trustedCertificateIndexLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
    goto :goto_30

    .line 111
    :catch_50
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    :goto_51
    move-object v2, v1

    goto :goto_30

    .line 111
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .restart local v8       #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    :catch_53
    move-exception v1

    move-object v7, v8

    .end local v8           #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .restart local v7       #trustedCertificateStoreLocal:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    goto :goto_51
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 7
    .parameter "ks"

    .prologue
    .line 134
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v4, trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 136
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 138
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_9

    .line 139
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_9

    .line 143
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_21
    move-exception v2

    .line 144
    .local v2, e:Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .end local v2           #e:Ljava/security/KeyStoreException;
    :goto_25
    return-object v5

    .line 142
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_26
    :try_start_26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_26 .. :try_end_32} :catch_21

    goto :goto_25
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 14
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 168
    if-eqz p1, :cond_d

    array-length v6, p1

    if-eqz v6, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_15

    .line 169
    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "null or zero-length parameter"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    :cond_15
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v6, :cond_21

    .line 172
    new-instance v6, Ljava/security/cert/CertificateException;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 175
    :cond_21
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v5, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1, v5}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 177
    .local v3, newChain:[Ljava/security/cert/X509Certificate;
    array-length v6, v3

    if-nez v6, :cond_2e

    .line 206
    :cond_2d
    return-void

    .line 182
    :cond_2e
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 183
    .local v0, certPath:Ljava/security/cert/CertPath;
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 184
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "Trust anchor for certification path not found."

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v7, v8, v9, v0, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 189
    :cond_4d
    :try_start_4d
    new-instance v4, Ljava/security/cert/PKIXParameters;

    invoke-direct {v4, v5}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 190
    .local v4, params:Ljava/security/cert/PKIXParameters;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 191
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v6, v0, v4}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 198
    const/4 v2, 0x1

    .local v2, i:I
    :goto_5c
    array-length v6, v3

    if-ge v2, v6, :cond_2d

    .line 199
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_66
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4d .. :try_end_66} :catch_69
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4d .. :try_end_66} :catch_70

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 201
    .end local v2           #i:I
    .end local v4           #params:Ljava/security/cert/PKIXParameters;
    :catch_69
    move-exception v1

    .line 202
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 203
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_70
    move-exception v1

    .line 204
    .local v1, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;
    .registers 13
    .parameter "chain"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v5, p1

    .line 226
    .local v5, original:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, currIndex:I
    :goto_2
    array-length v8, p1

    if-ge v1, v8, :cond_12

    .line 229
    aget-object v8, p1, v1

    invoke-direct {p0, v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v7

    .line 230
    .local v7, trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v7, :cond_2c

    .line 231
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v1, v1, -0x1

    .line 267
    .end local v7           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_12
    add-int/lit8 v0, v1, 0x1

    .line 268
    .local v0, chainLength:I
    array-length v8, p1

    if-ne v0, v8, :cond_65

    move-object v3, p1

    .line 273
    .local v3, newChain:[Ljava/security/cert/X509Certificate;
    :goto_18
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 274
    add-int/lit8 v8, v0, -0x1

    aget-object v8, v3, v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v7

    .line 275
    .restart local v7       #trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v7, :cond_2b

    .line 276
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v7           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_2b
    return-object v3

    .line 240
    .end local v0           #chainLength:I
    .end local v3           #newChain:[Ljava/security/cert/X509Certificate;
    .restart local v7       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_2c
    const/4 v2, 0x0

    .line 241
    .local v2, foundNext:Z
    add-int/lit8 v4, v1, 0x1

    .local v4, nextIndex:I
    :goto_2f
    array-length v8, p1

    if-ge v4, v8, :cond_5d

    .line 242
    aget-object v8, p1, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    aget-object v9, p1, v4

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 243
    const/4 v2, 0x1

    .line 245
    add-int/lit8 v8, v1, 0x1

    if-eq v4, v8, :cond_5d

    .line 247
    if-ne p1, v5, :cond_51

    .line 248
    invoke-virtual {v5}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 250
    .restart local p1
    :cond_51
    aget-object v6, p1, v4

    .line 251
    .local v6, tempCertificate:Ljava/security/cert/X509Certificate;
    add-int/lit8 v8, v1, 0x1

    aget-object v8, p1, v8

    aput-object v8, p1, v4

    .line 252
    add-int/lit8 v8, v1, 0x1

    aput-object v6, p1, v8

    .line 261
    .end local v6           #tempCertificate:Ljava/security/cert/X509Certificate;
    :cond_5d
    if-eqz v2, :cond_12

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 268
    .end local v2           #foundNext:Z
    .end local v4           #nextIndex:I
    .end local v7           #trustAnchor:Ljava/security/cert/TrustAnchor;
    .restart local v0       #chainLength:I
    :cond_65
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/security/cert/X509Certificate;

    move-object v3, v8

    goto :goto_18
.end method

.method private findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .parameter "lastCert"

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    .line 309
    .local v1, trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_a

    .line 322
    .end local v1           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :goto_9
    return-object v1

    .line 312
    .restart local v1       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_a
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v3, :cond_10

    move-object v1, v2

    .line 313
    goto :goto_9

    .line 318
    :cond_10
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 319
    .local v0, issuer:Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1f

    .line 320
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    goto :goto_9

    :cond_1f
    move-object v1, v2

    .line 322
    goto :goto_9
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 5
    .parameter "cert"

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 289
    .local v0, trustAnchor:Ljava/security/cert/TrustAnchor;
    if-eqz v0, :cond_a

    .line 304
    .end local v0           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :goto_9
    return-object v0

    .line 292
    .restart local v0       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :cond_a
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v2, :cond_10

    move-object v0, v1

    .line 294
    goto :goto_9

    .line 299
    :cond_10
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTrustAnchor(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 302
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    goto :goto_9

    :cond_1f
    move-object v0, v1

    .line 304
    goto :goto_9
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 8
    .parameter "certs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 150
    .local v4, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/security/cert/X509Certificate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 151
    .local v1, cert:Ljava/security/cert/X509Certificate;
    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 153
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_19
    return-object v4
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_c
.end method
