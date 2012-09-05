.class final Lcom/android/org/bouncycastle/openssl/PEMUtilities;
.super Ljava/lang/Object;
.source "PEMUtilities.java"


# static fields
.field private static final KEYSIZES:Ljava/util/Map;

.field private static final PKCS5_SCHEME_1:Ljava/util/Set;

.field private static final PKCS5_SCHEME_2:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xc0

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B
    .registers 12
    .parameter "encrypt"
    .parameter "provider"
    .parameter "bytes"
    .parameter "password"
    .parameter "dekAlgName"
    .parameter "iv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, prov:Ljava/security/Provider;
    if-eqz p1, :cond_22

    .line 105
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 106
    if-nez v1, :cond_22

    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B
    .registers 23
    .parameter "encrypt"
    .parameter "provider"
    .parameter "bytes"
    .parameter "password"
    .parameter "dekAlgName"
    .parameter "iv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 126
    .local v10, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    const-string v3, "CBC"

    .line 127
    .local v3, blockMode:Ljava/lang/String;
    const-string v9, "PKCS5Padding"

    .line 131
    .local v9, padding:Ljava/lang/String;
    const-string v14, "-CFB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 133
    const-string v3, "CFB"

    .line 134
    const-string v9, "NoPadding"

    .line 136
    :cond_19
    const-string v14, "-ECB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_37

    const-string v14, "DES-EDE"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_37

    const-string v14, "DES-EDE3"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 142
    :cond_37
    const-string v3, "ECB"

    .line 143
    const/4 v10, 0x0

    .line 145
    :cond_3a
    const-string v14, "-OFB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 147
    const-string v3, "OFB"

    .line 148
    const-string v9, "NoPadding"

    .line 153
    :cond_48
    const-string v14, "DES-EDE"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a1

    .line 155
    const-string v2, "DESede"

    .line 158
    .local v2, alg:Ljava/lang/String;
    const-string v14, "DES-EDE3"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9f

    const/4 v5, 0x1

    .line 159
    .local v5, des2:Z
    :goto_5f
    const/16 v14, 0x18

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1, v5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 227
    .end local v5           #des2:Z
    .local v11, sKey:Ljava/security/Key;
    :goto_69
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, transformation:Ljava/lang/String;
    :try_start_8a
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 232
    .local v4, c:Ljavax/crypto/Cipher;
    if-eqz p0, :cond_176

    const/4 v8, 0x1

    .line 234
    .local v8, mode:I
    :goto_93
    if-nez v10, :cond_179

    .line 236
    invoke-virtual {v4, v8, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 242
    :goto_98
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9d} :catch_17e

    move-result-object v14

    return-object v14

    .line 158
    .end local v4           #c:Ljavax/crypto/Cipher;
    .end local v8           #mode:I
    .end local v11           #sKey:Ljava/security/Key;
    .end local v13           #transformation:Ljava/lang/String;
    :cond_9f
    const/4 v5, 0x0

    goto :goto_5f

    .line 161
    .end local v2           #alg:Ljava/lang/String;
    :cond_a1
    const-string v14, "DES-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b8

    .line 163
    const-string v2, "DES"

    .line 164
    .restart local v2       #alg:Ljava/lang/String;
    const/16 v14, 0x8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .restart local v11       #sKey:Ljava/security/Key;
    goto :goto_69

    .line 166
    .end local v2           #alg:Ljava/lang/String;
    .end local v11           #sKey:Ljava/security/Key;
    :cond_b8
    const-string v14, "BF-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 168
    const-string v2, "Blowfish"

    .line 169
    .restart local v2       #alg:Ljava/lang/String;
    const/16 v14, 0x10

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .restart local v11       #sKey:Ljava/security/Key;
    goto :goto_69

    .line 171
    .end local v2           #alg:Ljava/lang/String;
    .end local v11           #sKey:Ljava/security/Key;
    :cond_cf
    const-string v14, "RC2-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_112

    .line 173
    const-string v2, "RC2"

    .line 174
    .restart local v2       #alg:Ljava/lang/String;
    const/16 v7, 0x80

    .line 175
    .local v7, keyBits:I
    const-string v14, "RC2-40-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_fc

    .line 177
    const/16 v7, 0x28

    .line 183
    :cond_e9
    :goto_e9
    div-int/lit8 v14, v7, 0x8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 184
    .restart local v11       #sKey:Ljava/security/Key;
    if-nez v10, :cond_109

    .line 186
    new-instance v10, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local v10           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {v10, v7}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    .restart local v10       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    goto/16 :goto_69

    .line 179
    .end local v11           #sKey:Ljava/security/Key;
    :cond_fc
    const-string v14, "RC2-64-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e9

    .line 181
    const/16 v7, 0x40

    goto :goto_e9

    .line 190
    .restart local v11       #sKey:Ljava/security/Key;
    :cond_109
    new-instance v10, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local v10           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    move-object/from16 v0, p5

    invoke-direct {v10, v7, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .restart local v10       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    goto/16 :goto_69

    .line 193
    .end local v2           #alg:Ljava/lang/String;
    .end local v7           #keyBits:I
    .end local v11           #sKey:Ljava/security/Key;
    :cond_112
    const-string v14, "AES-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16e

    .line 195
    const-string v2, "AES"

    .line 196
    .restart local v2       #alg:Ljava/lang/String;
    move-object/from16 v12, p5

    .line 197
    .local v12, salt:[B
    array-length v14, v12

    const/16 v15, 0x8

    if-le v14, v15, :cond_134

    .line 199
    const/16 v14, 0x8

    new-array v12, v14, [B

    .line 200
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-static {v0, v14, v12, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_134
    const-string v14, "AES-128-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14c

    .line 206
    const/16 v7, 0x80

    .line 220
    .restart local v7       #keyBits:I
    :goto_140
    const-string v14, "AES"

    div-int/lit8 v15, v7, 0x8

    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v12}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 221
    .restart local v11       #sKey:Ljava/security/Key;
    goto/16 :goto_69

    .line 208
    .end local v7           #keyBits:I
    .end local v11           #sKey:Ljava/security/Key;
    :cond_14c
    const-string v14, "AES-192-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_159

    .line 210
    const/16 v7, 0xc0

    .restart local v7       #keyBits:I
    goto :goto_140

    .line 212
    .end local v7           #keyBits:I
    :cond_159
    const-string v14, "AES-256-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_166

    .line 214
    const/16 v7, 0x100

    .restart local v7       #keyBits:I
    goto :goto_140

    .line 218
    .end local v7           #keyBits:I
    :cond_166
    new-instance v14, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string v15, "unknown AES encryption with private key"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 224
    .end local v2           #alg:Ljava/lang/String;
    .end local v12           #salt:[B
    :cond_16e
    new-instance v14, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string v15, "unknown encryption with private key"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 232
    .restart local v2       #alg:Ljava/lang/String;
    .restart local v4       #c:Ljavax/crypto/Cipher;
    .restart local v11       #sKey:Ljava/security/Key;
    .restart local v13       #transformation:Ljava/lang/String;
    :cond_176
    const/4 v8, 0x2

    goto/16 :goto_93

    .line 240
    .restart local v8       #mode:I
    :cond_179
    :try_start_179
    invoke-virtual {v4, v8, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_17c} :catch_17e

    goto/16 :goto_98

    .line 244
    .end local v4           #c:Ljavax/crypto/Cipher;
    .end local v8           #mode:I
    :catch_17e
    move-exception v6

    .line 246
    .local v6, e:Ljava/lang/Exception;
    new-instance v14, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string v15, "exception using cipher - please check password and data."

    invoke-direct {v14, v15, v6}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method static generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 7
    .parameter "algorithm"
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .line 85
    .local v0, generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 90
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private static getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .registers 5
    .parameter "password"
    .parameter "algorithm"
    .parameter "keyLength"
    .parameter "salt"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .registers 11
    .parameter "password"
    .parameter "algorithm"
    .parameter "keyLength"
    .parameter "salt"
    .parameter "des2"

    .prologue
    .line 266
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .line 268
    .local v2, pGen:Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    .line 271
    mul-int/lit8 v3, p2, 0x8

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 272
    .local v1, keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 273
    .local v0, key:[B
    if-eqz p4, :cond_27

    array-length v3, v0

    const/16 v4, 0x18

    if-lt v3, v4, :cond_27

    .line 276
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    :cond_27
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method static getKeySize(Ljava/lang/String;)I
    .registers 4
    .parameter "algorithm"

    .prologue
    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_21
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static isPKCS12(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z
    .registers 3
    .parameter "algOid"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme1(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z
    .registers 2
    .parameter "algOid"

    .prologue
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme2(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z
    .registers 2
    .parameter "algOid"

    .prologue
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
