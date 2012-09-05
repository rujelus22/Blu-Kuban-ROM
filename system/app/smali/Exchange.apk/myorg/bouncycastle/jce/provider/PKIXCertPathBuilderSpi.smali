.class public Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .registers 19
    .parameter "tbvCert"
    .parameter "pkixParams"
    .parameter "tbvPath"

    .prologue
    .line 118
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 119
    const/4 v2, 0x0

    .line 207
    :cond_b
    :goto_b
    return-object v2

    .line 123
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 124
    const/4 v2, 0x0

    goto :goto_b

    .line 127
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2f

    .line 128
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v12

    if-le v11, v12, :cond_2f

    .line 129
    const/4 v2, 0x0

    goto :goto_b

    .line 133
    :cond_2f
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v2, 0x0

    .line 140
    .local v2, builderResult:Ljava/security/cert/CertPathBuilderResult;
    :try_start_37
    const-string v11, "X.509"

    const-string v12, "myBC"

    invoke-static {v11, v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 141
    .local v3, cFact:Ljava/security/cert/CertificateFactory;
    const-string v11, "PKIX"

    const-string v12, "myBC"

    invoke-static {v11, v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_46} :catch_7a

    move-result-object v10

    .line 149
    .local v10, validator:Ljava/security/cert/CertPathValidator;
    :try_start_47
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_54
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_47 .. :try_end_54} :catch_8c

    move-result-object v11

    if-eqz v11, :cond_a3

    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, certPath:Ljava/security/cert/CertPath;
    const/4 v9, 0x0

    .line 156
    .local v9, result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_59
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_83
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_59 .. :try_end_5e} :catch_8c

    move-result-object v4

    .line 163
    :try_start_5f
    move-object/from16 v0, p2

    invoke-virtual {v10, v4, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v9

    .end local v9           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    check-cast v9, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_9a
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5f .. :try_end_67} :catch_8c

    .line 168
    .restart local v9       #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_67
    new-instance v11, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v12

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v13

    invoke-virtual {v9}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-direct {v11, v4, v12, v13, v14}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_78
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_67 .. :try_end_78} :catch_8c

    move-object v2, v11

    goto :goto_b

    .line 142
    .end local v3           #cFact:Ljava/security/cert/CertificateFactory;
    .end local v4           #certPath:Ljava/security/cert/CertPath;
    .end local v9           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v10           #validator:Ljava/security/cert/CertPathValidator;
    :catch_7a
    move-exception v5

    .line 144
    .local v5, e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Exception creating support classes."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 157
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #cFact:Ljava/security/cert/CertificateFactory;
    .restart local v4       #certPath:Ljava/security/cert/CertPath;
    .restart local v9       #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v10       #validator:Ljava/security/cert/CertPathValidator;
    :catch_83
    move-exception v5

    .line 158
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_84
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Certification path could not be constructed from certificate list."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_8c
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_84 .. :try_end_8c} :catch_8c

    .line 201
    .end local v4           #certPath:Ljava/security/cert/CertPath;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_8c
    move-exception v5

    .line 202
    .local v5, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 204
    .end local v5           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_8f
    if-nez v2, :cond_b

    .line 205
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 164
    .restart local v4       #certPath:Ljava/security/cert/CertPath;
    :catch_9a
    move-exception v5

    .line 165
    .local v5, e:Ljava/lang/Exception;
    :try_start_9b
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Certification path could not be validated."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_a3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9b .. :try_end_a3} :catch_8c

    .line 174
    .end local v4           #certPath:Ljava/security/cert/CertPath;
    .end local v5           #e:Ljava/lang/Exception;
    :cond_a3
    :try_start_a3
    invoke-static/range {p1 .. p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_a6
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_a3 .. :try_end_a6} :catch_c0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a3 .. :try_end_a6} :catch_8c

    .line 180
    :try_start_a6
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_ab
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a6 .. :try_end_ab} :catch_8c

    .line 184
    .local v7, issuers:Ljava/util/Collection;
    :try_start_ab
    invoke-static/range {p1 .. p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_b2
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_ab .. :try_end_b2} :catch_c9

    .line 190
    :try_start_b2
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_d2

    .line 191
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No issuer certificate for certificate in certification path found."

    invoke-direct {v11, v12}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 175
    .end local v7           #issuers:Ljava/util/Collection;
    :catch_c0
    move-exception v5

    .line 176
    .local v5, e:Ljava/security/cert/CertificateParsingException;
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No additiontal X.509 stores can be added from certificate locations."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 185
    .end local v5           #e:Ljava/security/cert/CertificateParsingException;
    .restart local v7       #issuers:Ljava/util/Collection;
    :catch_c9
    move-exception v5

    .line 186
    .local v5, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v11, v12, v5}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 194
    .end local v5           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_d2
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 196
    .local v8, it:Ljava/util/Iterator;
    :goto_d6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8f

    if-nez v2, :cond_8f

    .line 197
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 198
    .local v6, issuer:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v6, v0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_eb
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b2 .. :try_end_eb} :catch_8c

    move-result-object v2

    .line 199
    goto :goto_d6
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 42
    instance-of v1, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v1, :cond_3d

    instance-of v1, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v1, :cond_3d

    .line 44
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameters must be an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_3d
    instance-of v1, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v1, :cond_87

    .line 51
    check-cast p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 59
    :goto_43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v2

    .line 65
    instance-of v1, v2, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-nez v1, :cond_91

    .line 66
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TargetConstraints must be an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_87
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    move-object p1, v1

    goto :goto_43

    .line 72
    :cond_91
    :try_start_91
    move-object v0, v2

    check-cast v0, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    move-object v1, v0

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    .line 74
    if-eqz v4, :cond_ac

    .line 75
    check-cast v2, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_ac
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_91 .. :try_end_ac} :catch_ba

    .line 81
    :cond_ac
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 83
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "No certificate found matching targetContraints."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :catch_ba
    move-exception v1

    .line 78
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v3, "Error finding target certificate."

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 86
    :cond_c3
    const/4 v1, 0x0

    .line 89
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    :goto_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    if-nez v1, :cond_db

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 92
    invoke-virtual {p0, v1, p1, v3}, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_c8

    .line 95
    :cond_db
    if-nez v1, :cond_103

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v2, :cond_103

    .line 96
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    instance-of v1, v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v1, :cond_f9

    .line 97
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_f9
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "Possible certificate chain could not be validated."

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_103
    if-nez v1, :cond_111

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v2, :cond_111

    .line 105
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "Unable to find certificate chain."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_111
    return-object v1
.end method
