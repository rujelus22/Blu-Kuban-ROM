.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 8
    .parameter "signer"
    .parameter "candidates"

    .prologue
    .line 179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v0, chain:Ljava/util/LinkedList;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 184
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 202
    :goto_22
    return-object v4

    .line 187
    :cond_23
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 189
    .local v2, issuer:Ljava/security/Principal;
    const/4 v1, 0x1

    .line 191
    .local v1, count:I
    :goto_28
    invoke-static {v2, p1}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 192
    .local v3, issuerCert:Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_39

    .line 202
    :cond_2e
    new-array v4, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    check-cast v4, [Ljava/security/cert/X509Certificate;

    goto :goto_22

    .line 195
    :cond_39
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 197
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 200
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_28
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .parameter "issuer"
    .parameter "candidates"

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 207
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 208
    aget-object v1, p1, v0

    .line 211
    :goto_12
    return-object v1

    .line 206
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .registers 31
    .parameter "signature"
    .parameter "signatureBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v5, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v27, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 71
    .local v17, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v25

    .line 72
    .local v25, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v25, :cond_1f

    .line 73
    new-instance v27, Ljava/io/IOException;

    const-string v28, "No SignedData found"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 75
    :cond_1f
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 77
    .local v12, encCerts:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 78
    const/16 v27, 0x0

    .line 175
    :goto_2b
    return-object v27

    .line 80
    :cond_2c
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    .line 81
    .local v6, certs:[Ljava/security/cert/X509Certificate;
    const/4 v14, 0x0

    .line 82
    .local v14, i:I
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_52

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/harmony/security/x509/Certificate;

    .line 83
    .local v11, encCert:Lorg/apache/harmony/security/x509/Certificate;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #i:I
    .local v15, i:I
    new-instance v27, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    aput-object v27, v6, v14

    move v14, v15

    .end local v15           #i:I
    .restart local v14       #i:I
    goto :goto_39

    .line 86
    .end local v11           #encCert:Lorg/apache/harmony/security/x509/Certificate;
    :cond_52
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v24

    .line 88
    .local v24, sigInfos:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_a2

    .line 89
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 95
    .local v23, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 98
    .local v18, issuer:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v26

    .line 101
    .local v26, snum:Ljava/math/BigInteger;
    const/16 v19, 0x0

    .line 102
    .local v19, issuerSertIndex:I
    const/4 v14, 0x0

    :goto_73
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_98

    .line 103
    aget-object v27, v6, v14

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a5

    aget-object v27, v6, v14

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a5

    .line 105
    move/from16 v19, v14

    .line 109
    :cond_98
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v14, v0, :cond_a8

    .line 110
    const/16 v27, 0x0

    goto :goto_2b

    .line 91
    .end local v18           #issuer:Ljavax/security/auth/x500/X500Principal;
    .end local v19           #issuerSertIndex:I
    .end local v23           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v26           #snum:Ljava/math/BigInteger;
    :cond_a2
    const/16 v27, 0x0

    goto :goto_2b

    .line 102
    .restart local v18       #issuer:Ljavax/security/auth/x500/X500Principal;
    .restart local v19       #issuerSertIndex:I
    .restart local v23       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v26       #snum:Ljava/math/BigInteger;
    :cond_a5
    add-int/lit8 v14, v14, 0x1

    goto :goto_73

    .line 113
    :cond_a8
    aget-object v27, v6, v19

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v27

    if-eqz v27, :cond_b8

    .line 114
    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Can not recognize a critical extension"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 118
    :cond_b8
    const/16 v22, 0x0

    .line 119
    .local v22, sig:Ljava/security/Signature;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, da:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, dea:Ljava/lang/String;
    const/4 v3, 0x0

    .line 122
    .local v3, alg:Ljava/lang/String;
    if-eqz v8, :cond_e6

    if-eqz v9, :cond_e6

    .line 123
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "with"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :try_start_e2
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_e5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e2 .. :try_end_e5} :catch_188

    move-result-object v22

    .line 128
    :cond_e6
    :goto_e6
    if-nez v22, :cond_f3

    .line 129
    move-object v3, v8

    .line 130
    if-nez v3, :cond_ef

    .line 131
    const/16 v27, 0x0

    goto/16 :goto_2b

    .line 134
    :cond_ef
    :try_start_ef
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ef .. :try_end_f2} :catch_130

    move-result-object v22

    .line 139
    :cond_f3
    aget-object v27, v6, v19

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 144
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object v4

    .line 146
    .local v4, atr:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 147
    .local v21, sfBytes:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 149
    if-nez v4, :cond_135

    .line 150
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 171
    :cond_11a
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v27

    if-nez v27, :cond_17e

    .line 172
    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Incorrect signature"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 135
    .end local v4           #atr:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v21           #sfBytes:[B
    :catch_130
    move-exception v10

    .line 136
    .local v10, e:Ljava/security/NoSuchAlgorithmException;
    const/16 v27, 0x0

    goto/16 :goto_2b

    .line 152
    .end local v10           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v4       #atr:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .restart local v21       #sfBytes:[B
    :cond_135
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 156
    const/4 v13, 0x0

    .line 157
    .local v13, existingDigest:[B
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_145
    :goto_145
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_162

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 158
    .local v2, a:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v27

    sget-object v28, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static/range {v27 .. v28}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v27

    if-eqz v27, :cond_145

    goto :goto_145

    .line 162
    .end local v2           #a:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    :cond_162
    if-eqz v13, :cond_11a

    .line 163
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v20

    .line 164
    .local v20, md:Ljava/security/MessageDigest;
    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 165
    .local v7, computedDigest:[B
    invoke-static {v13, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-nez v27, :cond_11a

    .line 166
    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Incorrect MD"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 175
    .end local v7           #computedDigest:[B
    .end local v13           #existingDigest:[B
    .end local v20           #md:Ljava/security/MessageDigest;
    :cond_17e
    aget-object v27, v6, v19

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v27

    goto/16 :goto_2b

    .line 126
    .end local v4           #atr:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v21           #sfBytes:[B
    :catch_188
    move-exception v27

    goto/16 :goto_e6
.end method
