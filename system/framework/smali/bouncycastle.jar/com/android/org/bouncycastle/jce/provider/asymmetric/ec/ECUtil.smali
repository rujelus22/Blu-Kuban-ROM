.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMidTerms([I)[I
    .registers 7
    .parameter "k"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44
    new-array v0, v2, [I

    .line 46
    .local v0, res:[I
    array-length v1, p0

    if-ne v1, v3, :cond_e

    .line 48
    aget v1, p0, v5

    aput v1, v0, v5

    .line 101
    :goto_d
    return-object v0

    .line 52
    :cond_e
    array-length v1, p0

    if-eq v1, v2, :cond_19

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_19
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_41

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_41

    .line 59
    aget v1, p0, v5

    aput v1, v0, v5

    .line 60
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_38

    .line 62
    aget v1, p0, v3

    aput v1, v0, v3

    .line 63
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_d

    .line 67
    :cond_38
    aget v1, p0, v4

    aput v1, v0, v3

    .line 68
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_d

    .line 71
    :cond_41
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_63

    .line 73
    aget v1, p0, v3

    aput v1, v0, v5

    .line 74
    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_5a

    .line 76
    aget v1, p0, v5

    aput v1, v0, v3

    .line 77
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_d

    .line 81
    :cond_5a
    aget v1, p0, v4

    aput v1, v0, v3

    .line 82
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_d

    .line 87
    :cond_63
    aget v1, p0, v4

    aput v1, v0, v5

    .line 88
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_76

    .line 90
    aget v1, p0, v5

    aput v1, v0, v3

    .line 91
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_d

    .line 95
    :cond_76
    aget v1, p0, v3

    aput v1, v0, v3

    .line 96
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_d
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 144
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_34

    move-object v6, p0

    .line 146
    check-cast v6, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    .line 147
    .local v6, k:Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    .line 149
    .local v7, s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v7, :cond_11

    .line 151
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v7

    .line 154
    :cond_11
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v8, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v8

    .line 159
    .end local v6           #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v7           #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_34
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_5c

    move-object v6, p0

    .line 110
    check-cast v6, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    .line 111
    .local v6, k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 113
    .local v8, s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v8, :cond_38

    .line 115
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 117
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    .end local v6           #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    .line 132
    :goto_37
    return-object v0

    .line 123
    .restart local v6       #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    :cond_38
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    goto :goto_37

    .line 128
    .end local v6           #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v8           #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_5c
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_97

    move-object v7, p0

    .line 130
    check-cast v7, Ljava/security/interfaces/ECPublicKey;

    .line 131
    .local v7, pubKey:Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 132
    .restart local v8       #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v9

    goto :goto_37

    .line 137
    .end local v7           #pubKey:Ljava/security/interfaces/ECPublicKey;
    .end local v8           #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_97
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurveName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .parameter "oid"

    .prologue
    .line 215
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 219
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez v0, :cond_10

    .line 222
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_10
    return-object v0
.end method

.method public static getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2
    .parameter "oid"

    .prologue
    .line 192
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 194
    .local v0, params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_10

    .line 196
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 197
    if-nez v0, :cond_10

    .line 199
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 209
    :cond_10
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2
    .parameter "name"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 167
    .local v0, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v0, :cond_10

    .line 169
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 170
    if-nez v0, :cond_10

    .line 172
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 186
    :cond_10
    return-object v0
.end method
