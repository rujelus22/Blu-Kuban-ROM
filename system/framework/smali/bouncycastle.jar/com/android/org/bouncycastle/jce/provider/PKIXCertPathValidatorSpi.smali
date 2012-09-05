.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# static fields
.field private static final PUBLIC_KEY_SHA1_BLACKLIST:[[B

.field private static final SERIAL_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x14

    const/16 v6, 0x10

    const/4 v5, 0x1

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_c2

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_ce

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_da

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v9

    const/4 v2, 0x3

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_e6

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_f2

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_fe

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_10a

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_116

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_122

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_12e

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SERIAL_BLACKLIST:Ljava/util/Set;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v7, [B

    fill-array-data v1, :array_13a

    aput-object v1, v0, v8

    new-array v1, v7, [B

    fill-array-data v1, :array_148

    aput-object v1, v0, v5

    new-array v1, v7, [B

    fill-array-data v1, :array_156

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v7, [B

    fill-array-data v2, :array_164

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    fill-array-data v2, :array_172

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->PUBLIC_KEY_SHA1_BLACKLIST:[[B

    return-void

    .line 47
    :array_c2
    .array-data 0x1
        0x7t
        0x7at
        0x59t
        0xbct
        0xd5t
        0x34t
        0x59t
        0x60t
        0x1ct
        0xa6t
        0x90t
        0x72t
        0x67t
        0xa6t
        0xddt
        0x1ct
    .end array-data

    :array_ce
    .array-data 0x1
        0x4t
        0x7et
        0xcbt
        0xe9t
        0xfct
        0xa5t
        0x5ft
        0x7bt
        0xd0t
        0x9et
        0xaet
        0x36t
        0xe1t
        0xct
        0xaet
        0x1et
    .end array-data

    :array_da
    .array-data 0x1
        0xd8t
        0xf3t
        0x5ft
        0x4et
        0xb7t
        0x87t
        0x2bt
        0x2dt
        0xabt
        0x6t
        0x92t
        0xe3t
        0x15t
        0x38t
        0x2ft
        0xb0t
    .end array-data

    :array_e6
    .array-data 0x1
        0xb0t
        0xb7t
        0x13t
        0x3et
        0xd0t
        0x96t
        0xf9t
        0xb5t
        0x6ft
        0xaet
        0x91t
        0xc8t
        0x74t
        0xbdt
        0x3at
        0xc0t
    .end array-data

    :array_f2
    .array-data 0x1
        0x92t
        0x39t
        0xd5t
        0x34t
        0x8ft
        0x40t
        0xd1t
        0x69t
        0x5at
        0x74t
        0x54t
        0x70t
        0xe1t
        0xf2t
        0x3ft
        0x43t
    .end array-data

    :array_fe
    .array-data 0x1
        0xe9t
        0x2t
        0x8bt
        0x95t
        0x78t
        0xe4t
        0x15t
        0xdct
        0x1at
        0x71t
        0xat
        0x2bt
        0x88t
        0x15t
        0x44t
        0x47t
    .end array-data

    :array_10a
    .array-data 0x1
        0xd7t
        0x55t
        0x8ft
        0xdat
        0xf5t
        0xf1t
        0x10t
        0x5bt
        0xb2t
        0x13t
        0x28t
        0x2bt
        0x70t
        0x77t
        0x29t
        0xa3t
    .end array-data

    :array_116
    .array-data 0x1
        0xf5t
        0xc8t
        0x6at
        0xf3t
        0x61t
        0x62t
        0xf1t
        0x3at
        0x64t
        0xf5t
        0x4ft
        0x6dt
        0xc9t
        0x58t
        0x7ct
        0x6t
    .end array-data

    :array_122
    .array-data 0x1
        0x39t
        0x2at
        0x43t
        0x4ft
        0xet
        0x7t
        0xdft
        0x1ft
        0x8at
        0xa3t
        0x5t
        0xdet
        0x34t
        0xe0t
        0xc2t
        0x29t
    .end array-data

    :array_12e
    .array-data 0x1
        0x3et
        0x75t
        0xcet
        0xd4t
        0x6bt
        0x69t
        0x30t
        0x21t
        0x21t
        0x88t
        0x30t
        0xaet
        0x86t
        0xa8t
        0x2at
        0x71t
    .end array-data

    .line 63
    :array_13a
    .array-data 0x1
        0x41t
        0xft
        0x36t
        0x36t
        0x32t
        0x58t
        0xf3t
        0xbt
        0x34t
        0x7dt
        0x12t
        0xcet
        0x48t
        0x63t
        0xe4t
        0x33t
        0x43t
        0x78t
        0x6t
        0xa8t
    .end array-data

    :array_148
    .array-data 0x1
        0xbat
        0x3et
        0x7bt
        0xd3t
        0x8ct
        0xd7t
        0xe1t
        0xe6t
        0xb9t
        0xcdt
        0x4ct
        0x21t
        0x99t
        0x62t
        0xe5t
        0x9dt
        0x7at
        0x2ft
        0x4et
        0x37t
    .end array-data

    :array_156
    .array-data 0x1
        0xe2t
        0x3bt
        0x8dt
        0x10t
        0x5ft
        0x87t
        0x71t
        0xat
        0x68t
        0xd9t
        0x24t
        0x80t
        0x50t
        0xebt
        0xeft
        0xc6t
        0x27t
        0xbet
        0x4ct
        0xa6t
    .end array-data

    :array_164
    .array-data 0x1
        0x7bt
        0x2et
        0x16t
        0xbct
        0x39t
        0xbct
        0xd7t
        0x2bt
        0x45t
        0x6et
        0x9ft
        0x5t
        0x5dt
        0x1dt
        0xe6t
        0x15t
        0xb7t
        0x49t
        0x45t
        0xdbt
    .end array-data

    :array_172
    .array-data 0x1
        0xe8t
        0xf9t
        0x12t
        0x0t
        0xc6t
        0x5ct
        0xeet
        0x16t
        0xe0t
        0x39t
        0xb9t
        0xf8t
        0x83t
        0x84t
        0x16t
        0x61t
        0x63t
        0x5ft
        0x81t
        0xc5t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private static isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .registers 10
    .parameter "publicKey"

    .prologue
    const/4 v7, 0x0

    .line 86
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 87
    .local v2, encoded:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    .line 88
    .local v1, digest:Lcom/android/org/bouncycastle/crypto/Digest;
    array-length v8, v2

    invoke-interface {v1, v2, v7, v8}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 89
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v5, v8, [B

    .line 90
    .local v5, out:[B
    invoke-interface {v1, v5, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->PUBLIC_KEY_SHA1_BLACKLIST:[[B

    .local v0, arr$:[[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1b
    if-ge v3, v4, :cond_26

    aget-object v6, v0, v3

    .line 93
    .local v6, sha1:[B
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 94
    const/4 v7, 0x1

    .line 97
    .end local v6           #sha1:[B
    :cond_26
    return v7

    .line 92
    .restart local v6       #sha1:[B
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 52
    .parameter "certPath"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 108
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/security/cert/PKIXParameters;

    if-nez v4, :cond_2b

    .line 110
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parameters must be a "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " instance."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_2b
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_43

    move-object/from16 v21, p2

    .line 117
    check-cast v21, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 123
    .end local p2
    .local v21, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :goto_35
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 125
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    .end local v21           #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local p2
    :cond_43
    check-cast p2, Ljava/security/cert/PKIXParameters;

    .end local p2
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v21

    .restart local v21       #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    goto :goto_35

    .line 136
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v29

    .line 137
    .local v29, certs:Ljava/util/List;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v40

    .line 139
    .local v40, n:I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 141
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Certification path is empty."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 145
    :cond_64
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/X509Certificate;

    .line 147
    .local v27, cert:Ljava/security/cert/X509Certificate;
    if-eqz v27, :cond_b9

    .line 148
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v44

    .line 149
    .local v44, serial:Ljava/math/BigInteger;
    if-eqz v44, :cond_b9

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SERIAL_BLACKLIST:Ljava/util/Set;

    move-object/from16 v0, v44

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation of serial 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 152
    .local v39, message:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 154
    .local v32, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 168
    .end local v32           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v39           #message:Ljava/lang/String;
    .end local v44           #serial:Ljava/math/BigInteger;
    :cond_b9
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v22

    .line 176
    .local v22, userInitialPolicySet:Ljava/util/Set;
    :try_start_bd
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_d6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_bd .. :try_end_d6} :catch_e5

    move-result-object v45

    .line 184
    .local v45, trust:Ljava/security/cert/TrustAnchor;
    if-nez v45, :cond_fa

    .line 186
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Trust anchor for certification path not found."

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 179
    .end local v45           #trust:Ljava/security/cert/TrustAnchor;
    :catch_e5
    move-exception v32

    .line 181
    .restart local v32       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 193
    .end local v32           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v45       #trust:Ljava/security/cert/TrustAnchor;
    :cond_fa
    const/4 v9, 0x0

    .line 204
    .local v9, index:I
    add-int/lit8 v4, v40, 0x1

    new-array v0, v4, [Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 205
    .local v18, policyNodes:[Ljava/util/List;
    const/16 v37, 0x0

    .local v37, j:I
    :goto_103
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v37

    if-ge v0, v4, :cond_114

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v18, v37

    .line 205
    add-int/lit8 v37, v37, 0x1

    goto :goto_103

    .line 210
    :cond_114
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 212
    .local v6, policySet:Ljava/util/Set;
    const-string v4, "2.5.29.32.0"

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "2.5.29.32.0"

    .end local v9           #index:I
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 217
    .local v3, validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v41, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 227
    .local v41, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v16, acceptablePolicies:Ljava/util/Set;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 231
    const/16 v34, 0x0

    .line 243
    .local v34, explicitPolicy:I
    :goto_14a
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 245
    const/16 v19, 0x0

    .line 257
    .local v19, inhibitAnyPolicy:I
    :goto_152
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v4

    if-eqz v4, :cond_1a3

    .line 259
    const/16 v43, 0x0

    .line 272
    .local v43, policyMapping:I
    :goto_15a
    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v13

    .line 275
    .local v13, sign:Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_1a6

    .line 277
    :try_start_160
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 278
    .local v12, workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_167
    .catch Ljava/lang/IllegalArgumentException; {:try_start_160 .. :try_end_167} :catch_1b4

    move-result-object v10

    .line 292
    .local v10, workingPublicKey:Ljava/security/PublicKey;
    :goto_168
    const/16 v46, 0x0

    .line 295
    .local v46, workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_16a
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_16d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_16a .. :try_end_16d} :catch_1c2

    move-result-object v46

    .line 302
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v47

    .line 303
    .local v47, workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v48

    .line 308
    .local v48, workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    move/from16 v38, v40

    .line 314
    .local v38, maxPathLength:I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v4

    if-eqz v4, :cond_1d0

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v4}, Lcom/android/org/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d0

    .line 317
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Target certificate in certification path does not match targetConstraints."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 235
    .end local v10           #workingPublicKey:Ljava/security/PublicKey;
    .end local v12           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .end local v13           #sign:Ljava/security/cert/X509Certificate;
    .end local v19           #inhibitAnyPolicy:I
    .end local v34           #explicitPolicy:I
    .end local v38           #maxPathLength:I
    .end local v43           #policyMapping:I
    .end local v46           #workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v47           #workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v48           #workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_19d
    add-int/lit8 v34, v40, 0x1

    .restart local v34       #explicitPolicy:I
    goto :goto_14a

    .line 249
    :cond_1a0
    add-int/lit8 v19, v40, 0x1

    .restart local v19       #inhibitAnyPolicy:I
    goto :goto_152

    .line 263
    :cond_1a3
    add-int/lit8 v43, v40, 0x1

    .restart local v43       #policyMapping:I
    goto :goto_15a

    .line 282
    .restart local v13       #sign:Ljava/security/cert/X509Certificate;
    :cond_1a6
    :try_start_1a6
    new-instance v12, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v12       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a6 .. :try_end_1b2} :catch_1b4

    move-result-object v10

    .restart local v10       #workingPublicKey:Ljava/security/PublicKey;
    goto :goto_168

    .line 286
    .end local v10           #workingPublicKey:Ljava/security/PublicKey;
    .end local v12           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    :catch_1b4
    move-exception v33

    .line 288
    .local v33, ex:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Subject of trust anchor could not be (re)encoded."

    const/4 v7, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 297
    .end local v33           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v10       #workingPublicKey:Ljava/security/PublicKey;
    .restart local v12       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .restart local v46       #workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_1c2
    move-exception v32

    .line 299
    .local v32, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 324
    .end local v32           #e:Ljava/security/cert/CertPathValidatorException;
    .restart local v38       #maxPathLength:I
    .restart local v47       #workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v48       #workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_1d0
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v42

    .line 325
    .local v42, pathCheckers:Ljava/util/List;
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 326
    .local v28, certIter:Ljava/util/Iterator;
    :goto_1d8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e9

    .line 328
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_1d8

    .line 331
    :cond_1e9
    const/16 v27, 0x0

    .line 333
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    .restart local v9       #index:I
    :goto_1f1
    if-ltz v9, :cond_36e

    .line 336
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation of public key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 339
    .restart local v39       #message:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 341
    .local v32, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 349
    .end local v32           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v39           #message:Ljava/lang/String;
    :cond_22a
    sub-int v35, v40, v9

    .line 357
    .local v35, i:I
    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #cert:Ljava/security/cert/X509Certificate;
    check-cast v27, Ljava/security/cert/X509Certificate;

    .line 358
    .restart local v27       #cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v9, v4, :cond_27b

    const/4 v11, 0x1

    .local v11, verificationAlreadyPerformed:Z
    :goto_23d
    move-object/from16 v7, p1

    move-object/from16 v8, v21

    .line 364
    invoke-static/range {v7 .. v13}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    .line 367
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v14, p1

    move v15, v9

    move-object/from16 v17, v3

    .line 369
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 372
    move-object/from16 v0, p1

    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 374
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 380
    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_357

    .line 382
    if-eqz v27, :cond_27d

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27d

    .line 384
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Version 1 certificates can\'t be used as CA ones."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 358
    .end local v11           #verificationAlreadyPerformed:Z
    :cond_27b
    const/4 v11, 0x0

    goto :goto_23d

    .line 388
    .restart local v11       #verificationAlreadyPerformed:Z
    :cond_27d
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 390
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v43

    invoke-static {v0, v9, v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 393
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 396
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 397
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v43

    .line 398
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 403
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 404
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v43

    .line 407
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 410
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 413
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v38

    .line 416
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v38

    .line 419
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 421
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    .line 422
    .local v30, criticalExtensions:Ljava/util/Set;
    if-eqz v30, :cond_35b

    .line 424
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 427
    .end local v30           #criticalExtensions:Ljava/util/Set;
    .local v31, criticalExtensions:Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 428
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 429
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 430
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 431
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 432
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 433
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    .line 444
    .end local v31           #criticalExtensions:Ljava/util/Set;
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    :goto_334
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v42

    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 447
    move-object/from16 v13, v27

    .line 450
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 455
    :try_start_343
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_34a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_343 .. :try_end_34a} :catch_361

    move-result-object v10

    .line 462
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v46

    .line 464
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v47

    .line 466
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v48

    .line 333
    .end local v30           #criticalExtensions:Ljava/util/Set;
    :cond_357
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1f1

    .line 440
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    :cond_35b
    new-instance v30, Ljava/util/HashSet;

    .end local v30           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .restart local v30       #criticalExtensions:Ljava/util/Set;
    goto :goto_334

    .line 457
    :catch_361
    move-exception v32

    .line 459
    .local v32, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Next working key could not be retrieved."

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 474
    .end local v11           #verificationAlreadyPerformed:Z
    .end local v30           #criticalExtensions:Ljava/util/Set;
    .end local v32           #e:Ljava/security/cert/CertPathValidatorException;
    .end local v35           #i:I
    :cond_36e
    move/from16 v0, v34

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v34

    .line 476
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 485
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    .line 487
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    if-eqz v30, :cond_409

    .line 489
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 491
    .end local v30           #criticalExtensions:Ljava/util/Set;
    .restart local v31       #criticalExtensions:Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 492
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 493
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 494
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 495
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 496
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 497
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 498
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 499
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 500
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 501
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    .line 508
    .end local v31           #criticalExtensions:Ljava/util/Set;
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    :goto_3de
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 510
    add-int/lit8 v23, v9, 0x1

    move-object/from16 v20, p1

    move-object/from16 v24, v18

    move-object/from16 v25, v3

    move-object/from16 v26, v16

    invoke-static/range {v20 .. v26}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v36

    .line 513
    .local v36, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v34, :cond_3fb

    if-eqz v36, :cond_40f

    .line 515
    :cond_3fb
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1, v5}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v4

    .line 505
    .end local v36           #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_409
    new-instance v30, Ljava/util/HashSet;

    .end local v30           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .restart local v30       #criticalExtensions:Ljava/util/Set;
    goto :goto_3de

    .line 518
    .restart local v36       #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_40f
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Path processing failed on policy."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method
