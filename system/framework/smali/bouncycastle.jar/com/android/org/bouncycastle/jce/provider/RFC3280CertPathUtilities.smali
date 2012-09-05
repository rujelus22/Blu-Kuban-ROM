.class public Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String; = null

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String; = null

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String; = null

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String; = null

.field protected static final CRL_NUMBER:Ljava/lang/String; = null

.field protected static final CRL_SIGN:I = 0x6

.field private static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil; = null

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String; = null

.field protected static final FRESHEST_CRL:Ljava/lang/String; = null

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String; = null

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String; = null

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    .line 379
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 381
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 383
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 385
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 387
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 389
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 391
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 397
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 399
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 401
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 403
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2281
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .registers 32
    .parameter "dp"
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "validDate"
    .parameter "defaultCRLSignCert"
    .parameter "defaultCRLSignKey"
    .parameter "certStatus"
    .parameter "reasonMask"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1741
    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v14, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1742
    .local v14, currentDate:Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1d

    .line 1744
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1755
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v14, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v13

    .line 1756
    .local v13, crls:Ljava/util/Set;
    const/16 v22, 0x0

    .line 1757
    .local v22, validCrlFound:Z
    const/16 v21, 0x0

    .line 1758
    .local v21, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1760
    .local v12, crl_iter:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_144

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_144

    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_144

    .line 1764
    :try_start_43
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 1767
    .local v4, crl:Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v18

    .line 1775
    .local v18, interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p8

    .line 1781
    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v20

    .line 1784
    .local v20, keys:Ljava/util/Set;
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v19

    .line 1786
    .local v19, key:Ljava/security/PublicKey;
    const/4 v15, 0x0

    .line 1788
    .local v15, deltaCRL:Ljava/security/cert/X509CRL;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1791
    move-object/from16 v0, p1

    invoke-static {v14, v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v16

    .line 1794
    .local v16, deltaCRLs:Ljava/util/Set;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v15

    .line 1810
    .end local v16           #deltaCRLs:Ljava/util/Set;
    :cond_82
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a9

    .line 1817
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_a9

    .line 1819
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1876
    .end local v4           #crl:Ljava/security/cert/X509CRL;
    .end local v15           #deltaCRL:Ljava/security/cert/X509CRL;
    .end local v18           #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v19           #key:Ljava/security/PublicKey;
    .end local v20           #keys:Ljava/util/Set;
    :catch_a5
    move-exception v17

    .line 1878
    .local v17, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v21, v17

    .line 1879
    goto :goto_2f

    .line 1823
    .end local v17           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4       #crl:Ljava/security/cert/X509CRL;
    .restart local v15       #deltaCRL:Ljava/security/cert/X509CRL;
    .restart local v18       #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v19       #key:Ljava/security/PublicKey;
    .restart local v20       #keys:Ljava/util/Set;
    :cond_a9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1826
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1829
    move-object/from16 v0, p1

    invoke-static {v15, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1832
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1835
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1838
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_df

    .line 1840
    const/16 v5, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1844
    :cond_df
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1846
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    .line 1847
    .local v10, criticalExtensions:Ljava/util/Set;
    if-eqz v10, :cond_112

    .line 1849
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1850
    .end local v10           #criticalExtensions:Ljava/util/Set;
    .local v11, criticalExtensions:Ljava/util/Set;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1851
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1853
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_111

    .line 1855
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL contains unsupported critical extensions."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_111
    move-object v10, v11

    .line 1859
    .end local v11           #criticalExtensions:Ljava/util/Set;
    .restart local v10       #criticalExtensions:Ljava/util/Set;
    :cond_112
    if-eqz v15, :cond_140

    .line 1861
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    .line 1862
    if-eqz v10, :cond_140

    .line 1864
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1865
    .end local v10           #criticalExtensions:Ljava/util/Set;
    .restart local v11       #criticalExtensions:Ljava/util/Set;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1866
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1867
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13f

    .line 1869
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL contains unsupported critical extension."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_13f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_43 .. :try_end_13f} :catch_a5

    :cond_13f
    move-object v10, v11

    .line 1874
    .end local v11           #criticalExtensions:Ljava/util/Set;
    .restart local v10       #criticalExtensions:Ljava/util/Set;
    :cond_140
    const/16 v22, 0x1

    goto/16 :goto_2f

    .line 1881
    .end local v4           #crl:Ljava/security/cert/X509CRL;
    .end local v10           #criticalExtensions:Ljava/util/Set;
    .end local v15           #deltaCRL:Ljava/security/cert/X509CRL;
    .end local v18           #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v19           #key:Ljava/security/PublicKey;
    .end local v20           #keys:Ljava/util/Set;
    :cond_144
    if-nez v22, :cond_147

    .line 1883
    throw v21

    .line 1885
    :cond_147
    return-void
.end method

.method protected static checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .registers 24
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "validDate"
    .parameter "sign"
    .parameter "workingPublicKey"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1909
    const/4 v15, 0x0

    .line 1910
    .local v15, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .line 1913
    .local v10, crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_2
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_54

    move-result-object v10

    .line 1922
    :try_start_e
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_13
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_13} :catch_5d

    .line 1929
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1930
    .local v7, certStatus:Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1932
    .local v8, reasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    const/16 v17, 0x0

    .line 1934
    .local v17, validCrlFound:Z
    if-eqz v10, :cond_72

    .line 1936
    const/4 v11, 0x0

    .line 1939
    .local v11, dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_22
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_66

    move-result-object v11

    .line 1945
    if-eqz v11, :cond_72

    .line 1947
    const/4 v13, 0x0

    .local v13, i:I
    :goto_29
    array-length v3, v11

    if-ge v13, v3, :cond_72

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_72

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_72

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 1952
    .local v2, paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :try_start_40
    aget-object v1, v11, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_4f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_40 .. :try_end_4f} :catch_6f

    .line 1953
    const/16 v17, 0x1

    .line 1947
    :goto_51
    add-int/lit8 v13, v13, 0x1

    goto :goto_29

    .line 1916
    .end local v2           #paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v7           #certStatus:Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local v8           #reasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v11           #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v13           #i:I
    .end local v17           #validCrlFound:Z
    :catch_54
    move-exception v12

    .line 1918
    .local v12, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1924
    .end local v12           #e:Ljava/lang/Exception;
    :catch_5d
    move-exception v12

    .line 1926
    .local v12, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1941
    .end local v12           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v7       #certStatus:Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v8       #reasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v11       #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v17       #validCrlFound:Z
    :catch_66
    move-exception v12

    .line 1943
    .local v12, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1955
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v2       #paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local v13       #i:I
    :catch_6f
    move-exception v12

    .line 1957
    .local v12, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v15, v12

    goto :goto_51

    .line 1969
    .end local v2           #paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v11           #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v13           #i:I
    :cond_72
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_bf

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_bf

    .line 1978
    const/4 v14, 0x0

    .line 1981
    .local v14, issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_81
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_91} :catch_c6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_81 .. :try_end_91} :catch_cf

    move-result-object v14

    .line 1988
    :try_start_92
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v9, 0x4

    invoke-direct {v6, v9, v14}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1990
    .local v1, dp:Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .restart local v2       #paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    .line 1991
    invoke-static/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_bd
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_92 .. :try_end_bd} :catch_cf

    .line 1993
    const/16 v17, 0x1

    .line 2001
    .end local v1           #dp:Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2           #paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v14           #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_bf
    :goto_bf
    if-nez v17, :cond_da

    .line 2003
    instance-of v3, v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v3, :cond_d2

    .line 2005
    throw v15

    .line 1984
    .restart local v14       #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_c6
    move-exception v12

    .line 1986
    .local v12, e:Ljava/lang/Exception;
    :try_start_c7
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_cf
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c7 .. :try_end_cf} :catch_cf

    .line 1995
    .end local v12           #e:Ljava/lang/Exception;
    :catch_cf
    move-exception v12

    .line 1997
    .local v12, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v15, v12

    goto :goto_bf

    .line 2008
    .end local v12           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v14           #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_d2
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No valid CRL found."

    invoke-direct {v3, v4, v15}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2010
    :cond_da
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_122

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate revocation after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2013
    .local v16, message:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2014
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2016
    .end local v16           #message:Ljava/lang/String;
    :cond_122
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_135

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_135

    .line 2018
    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 2020
    :cond_135
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_145

    .line 2022
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2024
    :cond_145
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 39
    .parameter "certPath"
    .parameter "index"
    .parameter "policyNodes"
    .parameter "validPolicyTree"
    .parameter "policyMapping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 868
    .local v12, certs:Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 869
    .local v11, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    .line 871
    .local v23, n:I
    sub-int v4, v23, p1

    .line 874
    .local v4, i:I
    const/16 v29, 0x0

    .line 877
    .local v29, pm:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_14
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1d
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_14 .. :try_end_1d} :catch_7f

    move-result-object v29

    .line 885
    move-object/from16 v10, p3

    .line 886
    .local v10, _validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v29, :cond_1f1

    .line 888
    move-object/from16 v22, v29

    .line 889
    .local v22, mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 890
    .local v20, m_idp:Ljava/util/Map;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 892
    .local v31, s_idp:Ljava/util/Set;
    const/16 v17, 0x0

    .local v17, j:I
    :goto_30
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_9c

    .line 894
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 895
    .local v21, mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 896
    .local v8, id_p:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    .line 899
    .local v32, sd_p:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 901
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 902
    .local v33, tmp:Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 903
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    :goto_7c
    add-int/lit8 v17, v17, 0x1

    goto :goto_30

    .line 880
    .end local v8           #id_p:Ljava/lang/String;
    .end local v10           #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v17           #j:I
    .end local v20           #m_idp:Ljava/util/Map;
    .end local v21           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v22           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31           #s_idp:Ljava/util/Set;
    .end local v32           #sd_p:Ljava/lang/String;
    .end local v33           #tmp:Ljava/util/Set;
    :catch_7f
    move-exception v14

    .line 882
    .local v14, ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 908
    .end local v14           #ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8       #id_p:Ljava/lang/String;
    .restart local v10       #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17       #j:I
    .restart local v20       #m_idp:Ljava/util/Map;
    .restart local v21       #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v22       #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v31       #s_idp:Ljava/util/Set;
    .restart local v32       #sd_p:Ljava/lang/String;
    :cond_8c
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Set;

    .line 909
    .restart local v33       #tmp:Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 913
    .end local v8           #id_p:Ljava/lang/String;
    .end local v21           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v32           #sd_p:Ljava/lang/String;
    .end local v33           #tmp:Ljava/util/Set;
    :cond_9c
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 914
    .local v16, it_idp:Ljava/util/Iterator;
    :cond_a0
    :goto_a0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 916
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 921
    .restart local v8       #id_p:Ljava/lang/String;
    if-lez p4, :cond_195

    .line 923
    const/4 v15, 0x0

    .line 924
    .local v15, idp_found:Z
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 925
    .local v27, nodes_i:Ljava/util/Iterator;
    :cond_b5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 927
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 928
    .local v24, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 930
    const/4 v15, 0x1

    .line 931
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 936
    .end local v24           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_d8
    if-nez v15, :cond_a0

    .line 938
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 939
    :cond_e0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 941
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 942
    .restart local v24       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 944
    const/4 v7, 0x0

    .line 945
    .local v7, pq:Ljava/util/Set;
    const/16 v30, 0x0

    .line 948
    .local v30, policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_fb
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v30

    .end local v30           #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v30, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_103
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_fb .. :try_end_103} :catch_16e

    .line 956
    .restart local v30       #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 957
    .local v13, e:Ljava/util/Enumeration;
    :cond_107
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 959
    const/16 v28, 0x0

    .line 962
    .local v28, pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_10f
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_116} :catch_17b

    move-result-object v28

    .line 969
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 973
    :try_start_127
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_12e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_127 .. :try_end_12e} :catch_188

    move-result-object v7

    .line 986
    .end local v28           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_12f
    const/4 v9, 0x0

    .line 987
    .local v9, ci:Z
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_140

    .line 989
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 993
    :cond_140
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 994
    .local v6, p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 996
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 998
    .local v2, c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 999
    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a0

    .line 951
    .end local v2           #c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6           #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9           #ci:Z
    .end local v13           #e:Ljava/util/Enumeration;
    .end local v30           #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_16e
    move-exception v13

    .line 953
    .local v13, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate policies extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v13, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 964
    .local v13, e:Ljava/util/Enumeration;
    .restart local v28       #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v30       #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_17b
    move-exception v14

    .line 966
    .local v14, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Policy information could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 976
    .end local v14           #ex:Ljava/lang/Exception;
    :catch_188
    move-exception v14

    .line 979
    .local v14, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy qualifier info set could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1010
    .end local v7           #pq:Ljava/util/Set;
    .end local v13           #e:Ljava/util/Enumeration;
    .end local v14           #ex:Ljava/security/cert/CertPathValidatorException;
    .end local v15           #idp_found:Z
    .end local v24           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27           #nodes_i:Ljava/util/Iterator;
    .end local v28           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v30           #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_195
    if-gtz p4, :cond_a0

    .line 1012
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 1013
    .restart local v27       #nodes_i:Ljava/util/Iterator;
    :cond_19d
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1015
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1016
    .restart local v24       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 1018
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1019
    .restart local v6       #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1020
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    .line 1021
    add-int/lit8 v18, v4, -0x1

    .local v18, k:I
    :goto_1c3
    if-ltz v18, :cond_19d

    .line 1023
    aget-object v26, p2, v18

    .line 1024
    .local v26, nodes:Ljava/util/List;
    const/16 v19, 0x0

    .local v19, l:I
    :goto_1c9
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_1eb

    .line 1026
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1027
    .local v25, node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_1ee

    .line 1029
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    .line 1031
    if-nez v10, :cond_1ee

    .line 1021
    .end local v25           #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1eb
    add-int/lit8 v18, v18, -0x1

    goto :goto_1c3

    .line 1024
    .restart local v25       #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1ee
    add-int/lit8 v19, v19, 0x1

    goto :goto_1c9

    .line 1043
    .end local v6           #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #id_p:Ljava/lang/String;
    .end local v16           #it_idp:Ljava/util/Iterator;
    .end local v17           #j:I
    .end local v18           #k:I
    .end local v19           #l:I
    .end local v20           #m_idp:Ljava/util/Map;
    .end local v22           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v24           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v25           #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v26           #nodes:Ljava/util/List;
    .end local v27           #nodes_i:Ljava/util/Iterator;
    .end local v31           #s_idp:Ljava/util/Set;
    :cond_1f1
    return-object v10
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .registers 15
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1051
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1052
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1057
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 1060
    .local v8, pm:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_c
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_50

    move-result-object v8

    .line 1068
    if-eqz v8, :cond_79

    .line 1070
    move-object v7, v8

    .line 1072
    .local v7, mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_79

    .line 1074
    const/4 v4, 0x0

    .line 1075
    .local v4, issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v9, 0x0

    .line 1078
    .local v9, subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_start_22
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1080
    .local v6, mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    .line 1081
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_59

    move-result-object v9

    .line 1089
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 1092
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1063
    .end local v4           #issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #j:I
    .end local v6           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_50
    move-exception v3

    .line 1065
    .local v3, ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1083
    .end local v3           #ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4       #issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v5       #j:I
    .restart local v7       #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9       #subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_59
    move-exception v2

    .line 1085
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1095
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_62
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 1098
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1072
    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1102
    .end local v4           #issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #j:I
    .end local v6           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_79
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 14
    .parameter "certPath"
    .parameter "index"
    .parameter "nameConstraintValidator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1648
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1652
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 1655
    .local v5, nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_b
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1657
    .local v6, ncSeq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v6, :cond_1c

    .line 1659
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    .end local v5           #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_4c

    .line 1667
    .restart local v5       #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :cond_1c
    if-eqz v5, :cond_5e

    .line 1673
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1674
    .local v7, permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_27

    .line 1678
    :try_start_24
    invoke-virtual {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_55

    .line 1690
    :cond_27
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 1691
    .local v4, excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v4, :cond_5e

    .line 1693
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1696
    .local v2, e:Ljava/util/Enumeration;
    :goto_31
    :try_start_31
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 1698
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 1699
    .local v8, subtree:Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual {p2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_31

    .line 1702
    .end local v8           #subtree:Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_43
    move-exception v3

    .line 1704
    .local v3, ex:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1662
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v5           #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .end local v6           #ncSeq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_4c
    move-exception v2

    .line 1664
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1680
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .restart local v6       #ncSeq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v7       #permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_55
    move-exception v3

    .line 1682
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1709
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v7           #permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_5e
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .registers 6
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"

    .prologue
    .line 2217
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2218
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2222
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2227
    if-eqz p2, :cond_14

    .line 2229
    add-int/lit8 p2, p2, -0x1

    .line 2232
    .end local p2
    :cond_14
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .registers 6
    .parameter "certPath"
    .parameter "index"
    .parameter "policyMapping"

    .prologue
    .line 2240
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2241
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2245
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2250
    if-eqz p2, :cond_14

    .line 2252
    add-int/lit8 p2, p2, -0x1

    .line 2255
    .end local p2
    :cond_14
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .registers 6
    .parameter "certPath"
    .parameter "index"
    .parameter "inhibitAnyPolicy"

    .prologue
    .line 2263
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2264
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2268
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2273
    if-eqz p2, :cond_14

    .line 2275
    add-int/lit8 p2, p2, -0x1

    .line 2278
    .end local p2
    :cond_14
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .registers 12
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1539
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1543
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1546
    .local v4, pc:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_3f

    move-result-object v4

    .line 1557
    if-eqz v4, :cond_51

    .line 1559
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1561
    .local v5, policyConstraints:Ljava/util/Enumeration;
    :cond_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1566
    :try_start_21
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1567
    .local v2, constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_1b

    .line 1569
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3b} :catch_48

    move-result v6

    .line 1570
    .local v6, tmpInt:I
    if-ge v6, p2, :cond_51

    .line 1584
    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    .end local v6           #tmpInt:I
    :goto_3e
    return v6

    .line 1549
    :catch_3f
    move-exception v3

    .line 1551
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1577
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #policyConstraints:Ljava/util/Enumeration;
    :catch_48
    move-exception v3

    .line 1579
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    :cond_51
    move v6, p2

    .line 1584
    goto :goto_3e
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .registers 12
    .parameter "certPath"
    .parameter "index"
    .parameter "policyMapping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1593
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1594
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1598
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1601
    .local v4, pc:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_40

    move-result-object v4

    .line 1612
    if-eqz v4, :cond_52

    .line 1614
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1616
    .local v5, policyConstraints:Ljava/util/Enumeration;
    :cond_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1620
    :try_start_21
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1621
    .local v2, constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1b

    .line 1623
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3c} :catch_49

    move-result v6

    .line 1624
    .local v6, tmpInt:I
    if-ge v6, p2, :cond_52

    .line 1638
    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    .end local v6           #tmpInt:I
    :goto_3f
    return v6

    .line 1604
    :catch_40
    move-exception v3

    .line 1606
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1631
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #policyConstraints:Ljava/util/Enumeration;
    :catch_49
    move-exception v3

    .line 1633
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    :cond_52
    move v6, p2

    .line 1638
    goto :goto_3f
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .registers 10
    .parameter "certPath"
    .parameter "index"
    .parameter "inhibitAnyPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2032
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2033
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2037
    .local v1, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2040
    .local v4, iap:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_start_b
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_22

    move-result-object v4

    .line 2049
    if-eqz v4, :cond_2b

    .line 2051
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2053
    .local v0, _inhibitAnyPolicy:I
    if-ge v0, p2, :cond_2b

    .line 2058
    .end local v0           #_inhibitAnyPolicy:I
    :goto_21
    return v0

    .line 2043
    :catch_22
    move-exception v3

    .line 2045
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2b
    move v0, p2

    .line 2058
    goto :goto_21
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2066
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2067
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2071
    .local v1, cert:Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 2074
    .local v0, bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_25

    move-result-object v0

    .line 2082
    if-eqz v0, :cond_2e

    .line 2084
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_36

    .line 2086
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2077
    :catch_25
    move-exception v3

    .line 2079
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2091
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2e
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2093
    :cond_36
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .parameter "maxPathLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2101
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2102
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2106
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2108
    if-gtz p2, :cond_1b

    .line 2110
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2113
    :cond_1b
    add-int/lit8 p2, p2, -0x1

    .line 2115
    .end local p2
    :cond_1d
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .registers 11
    .parameter "certPath"
    .parameter "index"
    .parameter "maxPathLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 2125
    .local v4, certs:Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2130
    .local v3, cert:Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2133
    .local v2, bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_24

    move-result-object v2

    .line 2141
    if-eqz v2, :cond_2d

    .line 2143
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 2145
    .local v0, _pathLengthConstraint:Ljava/math/BigInteger;
    if-eqz v0, :cond_2d

    .line 2147
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2149
    .local v1, _plc:I
    if-ge v1, p2, :cond_2d

    .line 2155
    .end local v0           #_pathLengthConstraint:Ljava/math/BigInteger;
    .end local v1           #_plc:I
    :goto_23
    return v1

    .line 2136
    :catch_24
    move-exception v5

    .line 2138
    .local v5, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .end local v5           #e:Ljava/lang/Exception;
    :cond_2d
    move v1, p2

    .line 2155
    goto :goto_23
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2163
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2164
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2169
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2171
    .local v0, _usage:[Z
    if-eqz v0, :cond_1e

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_1e

    .line 2173
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2177
    :cond_1e
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .registers 11
    .parameter "certPath"
    .parameter "index"
    .parameter "criticalExtensions"
    .parameter "pathCheckers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2186
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2187
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2193
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2194
    .local v3, tmpIter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2198
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 2200
    :catch_1e
    move-exception v2

    .line 2202
    .local v2, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2205
    .end local v2           #e:Ljava/security/cert/CertPathValidatorException;
    :cond_2d
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 2207
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate has unsupported critical extension."

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2210
    :cond_3c
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .registers 9
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 626
    .local v2, set:Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 628
    const/4 v1, 0x0

    .line 631
    .local v1, freshestCRL:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_c
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_2f

    move-result-object v1

    .line 638
    if-nez v1, :cond_22

    .line 642
    :try_start_18
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_21
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_18 .. :try_end_21} :catch_38

    move-result-object v1

    .line 650
    :cond_22
    if-eqz v1, :cond_2e

    .line 654
    :try_start_24
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_27
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_24 .. :try_end_27} :catch_41

    .line 664
    :try_start_27
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_27 .. :try_end_2e} :catch_4a

    .line 672
    .end local v1           #freshestCRL:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_2e
    return-object v2

    .line 634
    .restart local v1       #freshestCRL:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_2f
    move-exception v0

    .line 636
    .local v0, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 645
    .end local v0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_38
    move-exception v0

    .line 647
    .restart local v0       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 656
    .end local v0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_41
    move-exception v0

    .line 658
    .restart local v0       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 666
    .end local v0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_4a
    move-exception v0

    .line 668
    .restart local v0       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Exception obtaining delta CRLs."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .registers 11
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 682
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 683
    .local v2, deltaSet:Ljava/util/Set;
    new-instance v1, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 684
    .local v1, crlselect:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {v1, p2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 688
    :try_start_e
    invoke-virtual {p3}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_38

    .line 695
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 696
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v4, v1, p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v0

    .line 698
    .local v0, completeSet:Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 703
    :try_start_28
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_28 .. :try_end_2f} :catch_52

    .line 710
    :cond_2f
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    return-object v4

    .line 690
    .end local v0           #completeSet:Ljava/util/Set;
    :catch_38
    move-exception v3

    .line 692
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot extract issuer from CRL."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 705
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #completeSet:Ljava/util/Set;
    :catch_52
    move-exception v3

    .line 707
    .local v3, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 12
    .parameter "dp"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 289
    .local v2, idp:Lcom/android/org/bouncycastle/asn1/DERObject;
    const/4 v3, 0x0

    .line 290
    .local v3, isIndirect:Z
    if-eqz v2, :cond_14

    .line 292
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 294
    const/4 v3, 0x1

    .line 297
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 299
    .local v4, issuerBytes:[B
    const/4 v6, 0x0

    .line 300
    .local v6, matchIssuer:Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_6f

    .line 302
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 303
    .local v1, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2c
    array-length v7, v1

    if-ge v5, v7, :cond_59

    .line 305
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4d

    .line 309
    :try_start_38
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_49} :catch_50

    move-result v7

    if-eqz v7, :cond_4d

    .line 311
    const/4 v6, 0x1

    .line 303
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 314
    :catch_50
    move-exception v0

    .line 316
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 321
    .end local v0           #e:Ljava/io/IOException;
    :cond_59
    if-eqz v6, :cond_65

    if-nez v3, :cond_65

    .line 323
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    :cond_65
    if-nez v6, :cond_7e

    .line 327
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 332
    .end local v1           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5           #j:I
    :cond_6f
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 335
    const/4 v6, 0x1

    .line 338
    :cond_7e
    if-nez v6, :cond_88

    .line 340
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    :cond_88
    return-void
.end method

.method protected static processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 17
    .parameter "dp"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 101
    const/4 v5, 0x0

    .line 104
    .local v5, idp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_2
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_41

    move-result-object v5

    .line 113
    if-eqz v5, :cond_1db

    .line 115
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_185

    .line 118
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 119
    .local v2, dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v8, names:Ljava/util/List;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_4a

    .line 123
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 124
    .local v4, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_36
    array-length v10, v4

    if-ge v6, v10, :cond_4a

    .line 126
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 107
    .end local v2           #dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6           #j:I
    .end local v8           #names:Ljava/util/List;
    :catch_41
    move-exception v3

    .line 109
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Issuing distribution point extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 129
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v8       #names:Ljava/util/List;
    :cond_4a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_9a

    .line 131
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 134
    .local v9, vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_55
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 137
    .local v3, e:Ljava/util/Enumeration;
    :goto_69
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_82

    .line 139
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_78} :catch_79

    goto :goto_69

    .line 142
    .end local v3           #e:Ljava/util/Enumeration;
    :catch_79
    move-exception v3

    .line 144
    .local v3, e:Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read CRL issuer."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 146
    .local v3, e:Ljava/util/Enumeration;
    :cond_82
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 147
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v9           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_9a
    const/4 v7, 0x0

    .line 152
    .local v7, matches:Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_155

    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 155
    const/4 v4, 0x0

    .line 156
    .restart local v4       #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_b8

    .line 158
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 160
    :cond_b8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_139

    .line 162
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-eqz v10, :cond_f7

    .line 164
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 180
    :goto_cc
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_cd
    array-length v10, v4

    if-ge v6, v10, :cond_139

    .line 182
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 183
    .restart local v3       #e:Ljava/util/Enumeration;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 184
    .restart local v9       #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_e7
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_11e

    .line 186
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_e7

    .line 168
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v6           #j:I
    .end local v9           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_f7
    new-array v4, v12, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 171
    const/4 v11, 0x0

    :try_start_fa
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v12, v4, v11
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_114} :catch_115

    goto :goto_cc

    .line 175
    :catch_115
    move-exception v3

    .line 177
    .local v3, e:Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read certificate issuer."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 188
    .local v3, e:Ljava/util/Enumeration;
    .restart local v6       #j:I
    .restart local v9       #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_11e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 189
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v10, v4, v6

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto :goto_cd

    .line 192
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v6           #j:I
    .end local v9           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_139
    if-eqz v4, :cond_148

    .line 194
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_13c
    array-length v10, v4

    if-ge v6, v10, :cond_148

    .line 196
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_152

    .line 198
    const/4 v7, 0x1

    .line 203
    .end local v6           #j:I
    :cond_148
    if-nez v7, :cond_185

    .line 205
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 194
    .restart local v6       #j:I
    :cond_152
    add-int/lit8 v6, v6, 0x1

    goto :goto_13c

    .line 214
    .end local v4           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6           #j:I
    :cond_155
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-nez v10, :cond_163

    .line 216
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 219
    :cond_163
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 220
    .restart local v4       #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_16c
    array-length v10, v4

    if-ge v6, v10, :cond_178

    .line 222
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_182

    .line 224
    const/4 v7, 0x1

    .line 228
    :cond_178
    if-nez v7, :cond_185

    .line 230
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 220
    :cond_182
    add-int/lit8 v6, v6, 0x1

    goto :goto_16c

    .line 235
    .end local v2           #dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6           #j:I
    .end local v7           #matches:Z
    .end local v8           #names:Ljava/util/List;
    :cond_185
    const/4 v1, 0x0

    .line 238
    .local v1, bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_186
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v10, v0

    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_193} :catch_1ae

    move-result-object v1

    .line 246
    instance-of v10, p1, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_1cd

    .line 249
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v10

    if-eqz v10, :cond_1b7

    if-eqz v1, :cond_1b7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-eqz v10, :cond_1b7

    .line 251
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CA Cert CRL only contains user certificates."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 241
    :catch_1ae
    move-exception v3

    .line 243
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Basic constraints extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 255
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1b7
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v10

    if-eqz v10, :cond_1cd

    if-eqz v1, :cond_1c5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-nez v10, :cond_1cd

    .line 257
    :cond_1c5
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "End CRL only contains CA certificates."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 262
    :cond_1cd
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v10

    if-eqz v10, :cond_1db

    .line 264
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 267
    .end local v1           #bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_1db
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 11
    .parameter "deltaCRL"
    .parameter "completeCRL"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 732
    if-nez p0, :cond_3

    .line 830
    :cond_2
    return-void

    .line 736
    :cond_3
    const/4 v1, 0x0

    .line 739
    .local v1, completeidp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_4
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_2a

    move-result-object v1

    .line 747
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 750
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 752
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 742
    :catch_2a
    move-exception v4

    .line 744
    .local v4, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 756
    .end local v4           #e:Ljava/lang/Exception;
    :cond_33
    const/4 v3, 0x0

    .line 759
    .local v3, deltaidp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_34
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_4e

    move-result-object v3

    .line 768
    const/4 v5, 0x0

    .line 769
    .local v5, match:Z
    if-nez v1, :cond_57

    .line 771
    if-nez v3, :cond_44

    .line 773
    const/4 v5, 0x1

    .line 783
    :cond_44
    :goto_44
    if-nez v5, :cond_5f

    .line 785
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 762
    .end local v5           #match:Z
    :catch_4e
    move-exception v4

    .line 764
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 778
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #match:Z
    :cond_57
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 780
    const/4 v5, 0x1

    goto :goto_44

    .line 790
    :cond_5f
    const/4 v0, 0x0

    .line 793
    .local v0, completeKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_60
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_65
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_60 .. :try_end_65} :catch_77

    move-result-object v0

    .line 802
    const/4 v2, 0x0

    .line 805
    .local v2, deltaKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_67
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_6c
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_67 .. :try_end_6c} :catch_80

    move-result-object v2

    .line 814
    if-nez v0, :cond_89

    .line 816
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 796
    .end local v2           #deltaKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_77
    move-exception v4

    .line 798
    .local v4, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 808
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2       #deltaKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_80
    move-exception v4

    .line 810
    .restart local v4       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 819
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_89
    if-nez v2, :cond_93

    .line 821
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 824
    :cond_93
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 826
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 7
    .parameter "crl"
    .parameter "dp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 352
    .local v1, idp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_38

    move-result-object v1

    .line 360
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 362
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    .line 371
    :goto_37
    return-object v2

    .line 355
    :catch_38
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    .end local v0           #e:Ljava/lang/Exception;
    :cond_41
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_52

    :cond_49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_52

    .line 368
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_37

    .line 371
    :cond_52
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    :goto_5b
    if-nez v1, :cond_73

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    :goto_5f
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_37

    :cond_64
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    move-object v3, v2

    goto :goto_5b

    :cond_73
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    goto :goto_5f
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .registers 28
    .parameter "crl"
    .parameter "cert"
    .parameter "defaultCRLSignCert"
    .parameter "defaultCRLSignKey"
    .parameter "paramsPKIX"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v13, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 450
    .local v13, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    .line 451
    .local v9, issuerPrincipal:[B
    invoke-virtual {v13, v9}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_70

    .line 463
    :try_start_10
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    .line 464
    .local v6, coll:Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 465
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_10 .. :try_end_38} :catch_7d

    .line 472
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 476
    .local v3, cert_it:Ljava/util/Iterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v18, validCerts:Ljava/util/List;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v19, validKeys:Ljava/util/List;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10d

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 487
    .local v16, signingCert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8a

    .line 489
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 453
    .end local v3           #cert_it:Ljava/util/Iterator;
    .end local v6           #coll:Ljava/util/Collection;
    .end local v9           #issuerPrincipal:[B
    .end local v16           #signingCert:Ljava/security/cert/X509Certificate;
    .end local v18           #validCerts:Ljava/util/List;
    .end local v19           #validKeys:Ljava/util/List;
    :catch_70
    move-exception v7

    .line 455
    .local v7, e:Ljava/io/IOException;
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 467
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #issuerPrincipal:[B
    :catch_7d
    move-exception v7

    .line 469
    .local v7, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 495
    .end local v7           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3       #cert_it:Ljava/util/Iterator;
    .restart local v6       #coll:Ljava/util/Collection;
    .restart local v16       #signingCert:Ljava/security/cert/X509Certificate;
    .restart local v18       #validCerts:Ljava/util/List;
    .restart local v19       #validKeys:Ljava/util/List;
    :cond_8a
    :try_start_8a
    const-string v20, "PKIX"

    const-string v21, "BC"

    invoke-static/range {v20 .. v21}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v2

    .line 496
    .local v2, builder:Ljava/security/cert/CertPathBuilder;
    new-instance v14, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v14}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V
    :try_end_97
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_8a .. :try_end_97} :catch_173
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8a .. :try_end_97} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_97} :catch_102

    .line 497
    .end local v13           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local v14, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :try_start_97
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 498
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 499
    .local v17, temp:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 500
    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 511
    .local v12, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_df

    .line 513
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 519
    :goto_be
    invoke-virtual {v2, v12}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 520
    .local v4, certs:Ljava/util/List;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v14

    .line 535
    .end local v14           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto/16 :goto_4b

    .line 517
    .end local v4           #certs:Ljava/util/List;
    .end local v13           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v14       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :cond_df
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_e6
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_97 .. :try_end_e6} :catch_e7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_97 .. :try_end_e6} :catch_170
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_e6} :catch_16d

    goto :goto_be

    .line 523
    .end local v12           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v17           #temp:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_e7
    move-exception v7

    move-object v13, v14

    .line 525
    .end local v2           #builder:Ljava/security/cert/CertPathBuilder;
    .end local v14           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local v7, e:Ljava/security/cert/CertPathBuilderException;
    .restart local v13       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :goto_e9
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Internal error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 527
    .end local v7           #e:Ljava/security/cert/CertPathBuilderException;
    :catch_f5
    move-exception v7

    .line 529
    .local v7, e:Ljava/security/cert/CertPathValidatorException;
    :goto_f6
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 531
    .end local v7           #e:Ljava/security/cert/CertPathValidatorException;
    :catch_102
    move-exception v7

    .line 533
    .local v7, e:Ljava/lang/Exception;
    :goto_103
    new-instance v20, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 537
    .end local v7           #e:Ljava/lang/Exception;
    .end local v16           #signingCert:Ljava/security/cert/X509Certificate;
    :cond_10d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 539
    .local v5, checkKeys:Ljava/util/Set;
    const/4 v11, 0x0

    .line 540
    .local v11, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_114
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_153

    .line 542
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 543
    .local v15, signCert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 545
    .local v10, keyusage:[Z
    if-eqz v10, :cond_147

    array-length v0, v10

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13b

    const/16 v20, 0x6

    aget-boolean v20, v10, v20

    if-nez v20, :cond_147

    .line 547
    :cond_13b
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v11           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const-string v20, "Issuer certificate key usage extension does not permit CRL signing."

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v11       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_144
    add-int/lit8 v8, v8, 0x1

    goto :goto_114

    .line 552
    :cond_147
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 556
    .end local v10           #keyusage:[Z
    .end local v15           #signCert:Ljava/security/cert/X509Certificate;
    :cond_153
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_163

    if-nez v11, :cond_163

    .line 558
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Cannot find a valid issuer certificate."

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 560
    :cond_163
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_16c

    if-eqz v11, :cond_16c

    .line 562
    throw v11

    .line 565
    :cond_16c
    return-object v5

    .line 531
    .end local v5           #checkKeys:Ljava/util/Set;
    .end local v8           #i:I
    .end local v11           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v13           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v2       #builder:Ljava/security/cert/CertPathBuilder;
    .restart local v14       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v16       #signingCert:Ljava/security/cert/X509Certificate;
    :catch_16d
    move-exception v7

    move-object v13, v14

    .end local v14           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_103

    .line 527
    .end local v13           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v14       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :catch_170
    move-exception v7

    move-object v13, v14

    .end local v14           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_f6

    .line 523
    .end local v2           #builder:Ljava/security/cert/CertPathBuilder;
    :catch_173
    move-exception v7

    goto/16 :goto_e9
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .registers 8
    .parameter "crl"
    .parameter "keys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v3, 0x0

    .line 574
    .local v3, lastException:Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 579
    .local v2, key:Ljava/security/PublicKey;
    :try_start_11
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    .line 580
    return-object v2

    .line 582
    :catch_15
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    move-object v3, v0

    .line 586
    goto :goto_5

    .line 587
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #key:Ljava/security/PublicKey;
    :cond_18
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .registers 8
    .parameter "deltacrls"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v3, 0x0

    .line 597
    .local v3, lastException:Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 599
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 602
    .local v0, crl:Ljava/security/cert/X509CRL;
    :try_start_11
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    .line 615
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    :goto_14
    return-object v0

    .line 605
    .restart local v0       #crl:Ljava/security/cert/X509CRL;
    :catch_15
    move-exception v1

    .line 607
    .local v1, e:Ljava/lang/Exception;
    move-object v3, v1

    .line 609
    goto :goto_5

    .line 611
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_18
    if-eqz v3, :cond_22

    .line 613
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 615
    :cond_22
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 6
    .parameter "validDate"
    .parameter "deltacrl"
    .parameter "cert"
    .parameter "certStatus"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 842
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 844
    :cond_b
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 6
    .parameter "validDate"
    .parameter "completecrl"
    .parameter "cert"
    .parameter "certStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 855
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 857
    :cond_b
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .registers 15
    .parameter "certPath"
    .parameter "paramsPKIX"
    .parameter "index"
    .parameter "workingPublicKey"
    .parameter "verificationAlreadyPerformed"
    .parameter "workingIssuerName"
    .parameter "sign"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1460
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1461
    .local v5, certs:Ljava/util/List;
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1465
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_13

    .line 1471
    :try_start_c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_13} :catch_62

    .line 1484
    :cond_13
    :try_start_13
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1a
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_13 .. :try_end_1a} :catch_6b
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_13 .. :try_end_1a} :catch_89
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_13 .. :try_end_1a} :catch_a7

    .line 1503
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1507
    :try_start_20
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_20 .. :try_end_2a} :catch_b0

    .line 1524
    :cond_2a
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 1526
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1474
    :catch_62
    move-exception v7

    .line 1476
    .local v7, e:Ljava/security/GeneralSecurityException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1487
    .end local v7           #e:Ljava/security/GeneralSecurityException;
    :catch_6b
    move-exception v7

    .line 1489
    .local v7, e:Ljava/security/cert/CertificateExpiredException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1491
    .end local v7           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_89
    move-exception v7

    .line 1493
    .local v7, e:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1495
    .end local v7           #e:Ljava/security/cert/CertificateNotYetValidException;
    :catch_a7
    move-exception v7

    .line 1497
    .local v7, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1510
    .end local v7           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_b0
    move-exception v7

    .line 1512
    .restart local v7       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v6, v7

    .line 1513
    .local v6, cause:Ljava/lang/Throwable;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 1515
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1517
    :cond_bc
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1530
    .end local v6           #cause:Ljava/lang/Throwable;
    .end local v7           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_c6
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 24
    .parameter "certPath"
    .parameter "index"
    .parameter "nameConstraintValidator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    .line 1157
    .local v7, certs:Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1158
    .local v6, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    .line 1160
    .local v17, n:I
    sub-int v15, v17, p1

    .line 1164
    .local v15, i:I
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_1c

    move/from16 v0, v17

    if-lt v15, v0, :cond_108

    .line 1166
    :cond_1c
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 1167
    .local v18, principal:Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v18 .. v18}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1172
    .local v4, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_2b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_8c

    move-result-object v8

    .line 1182
    .local v8, dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_33
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1183
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_3d
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_33 .. :try_end_3d} :catch_9d

    .line 1191
    const/4 v5, 0x0

    .line 1194
    .local v5, altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_3e
    sget-object v19, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_ae

    move-result-object v5

    .line 1202
    new-instance v19, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    sget-object v20, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;

    move-result-object v12

    .line 1203
    .local v12, emails:Ljava/util/Vector;
    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .local v9, e:Ljava/util/Enumeration;
    :goto_5b
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_bf

    .line 1205
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1206
    .local v10, email:Ljava/lang/String;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v11, v0, v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1209
    .local v11, emailAsGeneralName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_70
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1210
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_7a
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_70 .. :try_end_7a} :catch_7b

    goto :goto_5b

    .line 1212
    :catch_7b
    move-exception v13

    .line 1214
    .local v13, ex:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1174
    .end local v5           #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v8           #dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #e:Ljava/util/Enumeration;
    .end local v10           #email:Ljava/lang/String;
    .end local v11           #emailAsGeneralName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v12           #emails:Ljava/util/Vector;
    .end local v13           #ex:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    :catch_8c
    move-exception v9

    .line 1176
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1185
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_9d
    move-exception v9

    .line 1187
    .local v9, e:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1197
    .end local v9           #e:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v5       #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_ae
    move-exception v9

    .line 1199
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1218
    .local v9, e:Ljava/util/Enumeration;
    .restart local v12       #emails:Ljava/util/Vector;
    :cond_bf
    if-eqz v5, :cond_108

    .line 1220
    const/4 v14, 0x0

    .line 1223
    .local v14, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_c2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_e6

    move-result-object v14

    .line 1230
    const/16 v16, 0x0

    .local v16, j:I
    :goto_c8
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_108

    .line 1235
    :try_start_d1
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1236
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_e3
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_d1 .. :try_end_e3} :catch_f7

    .line 1230
    add-int/lit8 v16, v16, 0x1

    goto :goto_c8

    .line 1225
    .end local v16           #j:I
    :catch_e6
    move-exception v9

    .line 1227
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1238
    .local v9, e:Ljava/util/Enumeration;
    .restart local v16       #j:I
    :catch_f7
    move-exception v9

    .line 1240
    .local v9, e:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1246
    .end local v4           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5           #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v8           #dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #e:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12           #emails:Ljava/util/Vector;
    .end local v14           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v16           #j:I
    .end local v18           #principal:Ljavax/security/auth/x500/X500Principal;
    :cond_108
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 44
    .parameter "certPath"
    .parameter "index"
    .parameter "acceptablePolicies"
    .parameter "validPolicyTree"
    .parameter "policyNodes"
    .parameter "inhibitAnyPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    .line 1258
    .local v20, certs:Ljava/util/List;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 1259
    .local v18, cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    .line 1261
    .local v29, n:I
    sub-int v5, v29, p1

    .line 1266
    .local v5, i:I
    const/16 v19, 0x0

    .line 1269
    .local v19, certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_16
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_21
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_16 .. :try_end_21} :catch_76

    move-result-object v19

    .line 1277
    if-eqz v19, :cond_1f6

    if-eqz p3, :cond_1f6

    .line 1282
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1283
    .local v23, e:Ljava/util/Enumeration;
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1285
    .local v35, pols:Ljava/util/Set;
    :cond_2f
    :goto_2f
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1287
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1288
    .local v33, pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v34

    .line 1290
    .local v34, pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1292
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1294
    const/16 v36, 0x0

    .line 1297
    .local v36, pq:Ljava/util/Set;
    :try_start_58
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_5f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_58 .. :try_end_5f} :catch_85

    move-result-object v36

    .line 1305
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v28

    .line 1307
    .local v28, match:Z
    if-nez v28, :cond_2f

    .line 1309
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_2f

    .line 1272
    .end local v23           #e:Ljava/util/Enumeration;
    .end local v28           #match:Z
    .end local v33           #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34           #pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v35           #pols:Ljava/util/Set;
    .end local v36           #pq:Ljava/util/Set;
    :catch_76
    move-exception v23

    .line 1274
    .local v23, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1299
    .local v23, e:Ljava/util/Enumeration;
    .restart local v33       #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v34       #pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v35       #pols:Ljava/util/Set;
    .restart local v36       #pq:Ljava/util/Set;
    :catch_85
    move-exception v24

    .line 1301
    .local v24, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1314
    .end local v24           #ex:Ljava/security/cert/CertPathValidatorException;
    .end local v33           #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34           #pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v36           #pq:Ljava/util/Set;
    :cond_94
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a4

    const-string v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 1316
    :cond_a4
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1317
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1340
    :goto_ae
    if-gtz p5, :cond_ba

    move/from16 v0, v29

    if-ge v5, v0, :cond_194

    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_194

    .line 1342
    :cond_ba
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1344
    :cond_be
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_194

    .line 1346
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1348
    .restart local v33       #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 1350
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    .line 1351
    .local v8, _apq:Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    .line 1353
    .local v14, _nodes:Ljava/util/List;
    const/16 v27, 0x0

    .local v27, k:I
    :goto_ea
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_194

    .line 1355
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1357
    .local v7, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1358
    .local v15, _policySetIter:Ljava/util/Iterator;
    :cond_102
    :goto_102
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_190

    .line 1360
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 1363
    .local v16, _tmp:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_164

    move-object/from16 v9, v16

    .line 1365
    check-cast v9, Ljava/lang/String;

    .line 1376
    .end local v16           #_tmp:Ljava/lang/Object;
    .local v9, _policy:Ljava/lang/String;
    :goto_116
    const/4 v13, 0x0

    .line 1377
    .local v13, _found:Z
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    .line 1379
    .local v12, _childrenIter:Ljava/util/Iterator;
    :cond_11b
    :goto_11b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_171

    .line 1381
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1383
    .local v11, _child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 1385
    const/4 v13, 0x1

    goto :goto_11b

    .line 1321
    .end local v7           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #_apq:Ljava/util/Set;
    .end local v9           #_policy:Ljava/lang/String;
    .end local v11           #_child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12           #_childrenIter:Ljava/util/Iterator;
    .end local v13           #_found:Z
    .end local v14           #_nodes:Ljava/util/List;
    .end local v15           #_policySetIter:Ljava/util/Iterator;
    .end local v27           #k:I
    .end local v33           #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_133
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1322
    .local v25, it:Ljava/util/Iterator;
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1324
    .local v37, t1:Ljava/util/Set;
    :cond_13c
    :goto_13c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 1326
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 1328
    .local v32, o:Ljava/lang/Object;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 1330
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13c

    .line 1333
    .end local v32           #o:Ljava/lang/Object;
    :cond_158
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1334
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_ae

    .line 1367
    .end local v25           #it:Ljava/util/Iterator;
    .end local v37           #t1:Ljava/util/Set;
    .restart local v7       #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8       #_apq:Ljava/util/Set;
    .restart local v14       #_nodes:Ljava/util/List;
    .restart local v15       #_policySetIter:Ljava/util/Iterator;
    .restart local v16       #_tmp:Ljava/lang/Object;
    .restart local v27       #k:I
    .restart local v33       #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_164
    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_102

    .line 1369
    check-cast v16, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v16           #_tmp:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_policy:Ljava/lang/String;
    goto :goto_116

    .line 1389
    .restart local v12       #_childrenIter:Ljava/util/Iterator;
    .restart local v13       #_found:Z
    :cond_171
    if-nez v13, :cond_102

    .line 1391
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1392
    .local v6, _newChildExpectedPolicies:Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1394
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1396
    .local v3, _newChild:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1397
    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_102

    .line 1353
    .end local v3           #_newChild:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6           #_newChildExpectedPolicies:Ljava/util/Set;
    .end local v9           #_policy:Ljava/lang/String;
    .end local v12           #_childrenIter:Ljava/util/Iterator;
    .end local v13           #_found:Z
    :cond_190
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_ea

    .line 1406
    .end local v7           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #_apq:Ljava/util/Set;
    .end local v14           #_nodes:Ljava/util/List;
    .end local v15           #_policySetIter:Ljava/util/Iterator;
    .end local v27           #k:I
    .end local v33           #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_194
    move-object/from16 v17, p3

    .line 1410
    .local v17, _validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v26, v5, -0x1

    .local v26, j:I
    :goto_198
    if-ltz v26, :cond_1c8

    .line 1412
    aget-object v31, p4, v26

    .line 1414
    .local v31, nodes:Ljava/util/List;
    const/16 v27, 0x0

    .restart local v27       #k:I
    :goto_19e
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_1c2

    .line 1416
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1417
    .local v30, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_1c5

    .line 1419
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    .line 1421
    if-nez v17, :cond_1c5

    .line 1410
    .end local v30           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1c2
    add-int/lit8 v26, v26, -0x1

    goto :goto_198

    .line 1414
    .restart local v30       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1c5
    add-int/lit8 v27, v27, 0x1

    goto :goto_19e

    .line 1432
    .end local v27           #k:I
    .end local v30           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31           #nodes:Ljava/util/List;
    :cond_1c8
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    .line 1434
    .local v22, criticalExtensionOids:Ljava/util/Set;
    if-eqz v22, :cond_1f8

    .line 1436
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 1438
    .local v21, critical:Z
    aget-object v31, p4, v5

    .line 1439
    .restart local v31       #nodes:Ljava/util/List;
    const/16 v26, 0x0

    :goto_1da
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_1f8

    .line 1441
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1442
    .restart local v30       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1439
    add-int/lit8 v26, v26, 0x1

    goto :goto_1da

    .line 1447
    .end local v17           #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21           #critical:Z
    .end local v22           #criticalExtensionOids:Ljava/util/Set;
    .end local v23           #e:Ljava/util/Enumeration;
    .end local v26           #j:I
    .end local v30           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31           #nodes:Ljava/util/List;
    .end local v35           #pols:Ljava/util/Set;
    :cond_1f6
    const/16 v17, 0x0

    :cond_1f8
    return-object v17
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 9
    .parameter "certPath"
    .parameter "index"
    .parameter "validPolicyTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1128
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1132
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1135
    .local v1, certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_14} :catch_19

    move-result-object v1

    .line 1143
    if-nez v1, :cond_18

    .line 1145
    const/4 p2, 0x0

    .line 1147
    :cond_18
    return-object p2

    .line 1138
    :catch_19
    move-exception v3

    .line 1140
    .local v3, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .registers 7
    .parameter "certPath"
    .parameter "index"
    .parameter "validPolicyTree"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1114
    if-gtz p3, :cond_d

    if-nez p2, :cond_d

    .line 1116
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1119
    :cond_d
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .registers 3
    .parameter "explicitPolicy"
    .parameter "cert"

    .prologue
    .line 2302
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 2304
    add-int/lit8 p0, p0, -0x1

    .line 2306
    :cond_a
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .registers 12
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2315
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2316
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2321
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2324
    .local v4, pc:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_c
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_41

    move-result-object v4

    .line 2331
    if-eqz v4, :cond_40

    .line 2333
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 2335
    .local v5, policyConstraints:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_40

    .line 2337
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2338
    .local v2, constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_54

    goto :goto_1c

    .line 2343
    :pswitch_30
    const/4 v8, 0x0

    :try_start_31
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_4a

    move-result v6

    .line 2351
    .local v6, tmpInt:I
    if-nez v6, :cond_1c

    move p2, v7

    .line 2359
    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    .end local v6           #tmpInt:I
    .end local p2
    :cond_40
    return p2

    .line 2327
    .restart local p2
    :catch_41
    move-exception v3

    .line 2329
    .local v3, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2345
    .end local v3           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2       #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v5       #policyConstraints:Ljava/util/Enumeration;
    :catch_4a
    move-exception v3

    .line 2347
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2338
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .registers 11
    .parameter "certPath"
    .parameter "index"
    .parameter "pathCheckers"
    .parameter "criticalExtensions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2369
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2370
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2372
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2373
    .local v3, tmpIter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2377
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 2379
    :catch_1e
    move-exception v2

    .line 2381
    .local v2, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2386
    .end local v2           #e:Ljava/security/cert/CertPathValidatorException;
    :cond_27
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 2388
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate has unsupported critical extension"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2391
    :cond_36
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 28
    .parameter "certPath"
    .parameter "paramsPKIX"
    .parameter "userInitialPolicySet"
    .parameter "index"
    .parameter "policyNodes"
    .parameter "validPolicyTree"
    .parameter "acceptablePolicies"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2403
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 2412
    .local v15, n:I
    if-nez p5, :cond_26

    .line 2414
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_24

    .line 2416
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2419
    :cond_24
    const/4 v12, 0x0

    .line 2567
    .local v12, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_25
    return-object v12

    .line 2421
    .end local v12           #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_26
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v18

    if-eqz v18, :cond_e2

    .line 2424
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_de

    .line 2426
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4c

    .line 2428
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2433
    :cond_4c
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2435
    .local v10, _validPolicyNodeSet:Ljava/util/Set;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_52
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_92

    .line 2437
    aget-object v8, p4, v13

    .line 2439
    .local v8, _nodeDepth:Ljava/util/List;
    const/4 v14, 0x0

    .local v14, k:I
    :goto_5e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_8f

    .line 2441
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2443
    .local v7, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 2445
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2446
    .local v6, _iter:Ljava/util/Iterator;
    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 2448
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 2439
    .end local v6           #_iter:Ljava/util/Iterator;
    :cond_8c
    add-int/lit8 v14, v14, 0x1

    goto :goto_5e

    .line 2435
    .end local v7           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_8f
    add-int/lit8 v13, v13, 0x1

    goto :goto_52

    .line 2454
    .end local v8           #_nodeDepth:Ljava/util/List;
    .end local v14           #k:I
    :cond_92
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2455
    .local v11, _vpnsIter:Ljava/util/Iterator;
    :cond_96
    :goto_96
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_af

    .line 2457
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2458
    .restart local v7       #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2460
    .local v9, _validPolicy:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_96

    goto :goto_96

    .line 2467
    .end local v7           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9           #_validPolicy:Ljava/lang/String;
    :cond_af
    if-eqz p5, :cond_de

    .line 2469
    add-int/lit8 v13, v15, -0x1

    :goto_b3
    if-ltz v13, :cond_de

    .line 2471
    aget-object v17, p4, v13

    .line 2473
    .local v17, nodes:Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14       #k:I
    :goto_b8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_db

    .line 2475
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2476
    .local v16, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_d8

    .line 2478
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2473
    :cond_d8
    add-int/lit8 v14, v14, 0x1

    goto :goto_b8

    .line 2469
    .end local v16           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_db
    add-int/lit8 v13, v13, -0x1

    goto :goto_b3

    .line 2487
    .end local v10           #_validPolicyNodeSet:Ljava/util/Set;
    .end local v11           #_vpnsIter:Ljava/util/Iterator;
    .end local v13           #j:I
    .end local v14           #k:I
    .end local v17           #nodes:Ljava/util/List;
    :cond_de
    move-object/from16 v12, p5

    .restart local v12       #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_25

    .line 2504
    .end local v12           #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2506
    .restart local v10       #_validPolicyNodeSet:Ljava/util/Set;
    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_e8
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_134

    .line 2508
    aget-object v8, p4, v13

    .line 2510
    .restart local v8       #_nodeDepth:Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14       #k:I
    :goto_f4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_131

    .line 2512
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2514
    .restart local v7       #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12e

    .line 2516
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2517
    .restart local v6       #_iter:Ljava/util/Iterator;
    :cond_112
    :goto_112
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12e

    .line 2519
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2520
    .local v5, _c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_112

    .line 2522
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_112

    .line 2510
    .end local v5           #_c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6           #_iter:Ljava/util/Iterator;
    :cond_12e
    add-int/lit8 v14, v14, 0x1

    goto :goto_f4

    .line 2506
    .end local v7           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_131
    add-int/lit8 v13, v13, 0x1

    goto :goto_e8

    .line 2532
    .end local v8           #_nodeDepth:Ljava/util/List;
    .end local v14           #k:I
    :cond_134
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2533
    .restart local v11       #_vpnsIter:Ljava/util/Iterator;
    :cond_138
    :goto_138
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_159

    .line 2535
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2536
    .restart local v7       #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2538
    .restart local v9       #_validPolicy:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_138

    .line 2540
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_138

    .line 2547
    .end local v7           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9           #_validPolicy:Ljava/lang/String;
    :cond_159
    if-eqz p5, :cond_188

    .line 2549
    add-int/lit8 v13, v15, -0x1

    :goto_15d
    if-ltz v13, :cond_188

    .line 2551
    aget-object v17, p4, v13

    .line 2553
    .restart local v17       #nodes:Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14       #k:I
    :goto_162
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_185

    .line 2555
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2556
    .restart local v16       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_182

    .line 2558
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2553
    :cond_182
    add-int/lit8 v14, v14, 0x1

    goto :goto_162

    .line 2549
    .end local v16           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_185
    add-int/lit8 v13, v13, -0x1

    goto :goto_15d

    .line 2565
    .end local v14           #k:I
    .end local v17           #nodes:Ljava/util/List;
    :cond_188
    move-object/from16 v12, p5

    .restart local v12       #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_25
.end method
