.class Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedPrivateKeyParser"
.end annotation


# instance fields
.field private asymProvider:Ljava/lang/String;

.field private symProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "symProvider"
    .parameter "asymProvider"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    .line 670
    iput-object p3, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    .line 671
    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .registers 25
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v9

    .line 685
    .local v9, info:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 687
    .local v2, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    if-nez v20, :cond_26

    .line 689
    new-instance v20, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v21, "no PasswordFinder specified"

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_245

    .line 765
    .end local v2           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v9           #info:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :catch_24
    move-exception v7

    .line 767
    .local v7, e:Ljava/io/IOException;
    throw v7

    .line 692
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v9       #info:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :cond_26
    :try_start_26
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_d8

    .line 694
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v15

    .line 695
    .local v15, params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v8

    .line 696
    .local v8, func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v18

    .line 697
    .local v18, scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 699
    .local v6, defParams:Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    .line 700
    .local v10, iterationCount:I
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v17

    .line 702
    .local v17, salt:[B
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, algorithm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1, v10}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 706
    .local v11, key:Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 707
    .local v5, cipher:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 709
    .local v3, algParams:Ljava/security/AlgorithmParameters;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 711
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v5, v0, v11, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 713
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    .line 714
    .local v14, pInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 716
    .local v13, keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 718
    .local v12, keyFact:Ljava/security/KeyFactory;
    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    .line 758
    .end local v3           #algParams:Ljava/security/AlgorithmParameters;
    .end local v6           #defParams:Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    .end local v8           #func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .end local v10           #iterationCount:I
    .end local v11           #key:Ljavax/crypto/SecretKey;
    .end local v15           #params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    .end local v17           #salt:[B
    .end local v18           #scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    :goto_d7
    return-object v20

    .line 720
    .end local v4           #algorithm:Ljava/lang/String;
    .end local v5           #cipher:Ljavax/crypto/Cipher;
    .end local v12           #keyFact:Ljava/security/KeyFactory;
    .end local v13           #keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v14           #pInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_d8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->isPKCS12(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_180

    .line 722
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v15

    .line 723
    .local v15, params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 724
    .restart local v4       #algorithm:Ljava/lang/String;
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 726
    .local v16, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v19

    .line 727
    .local v19, secKeyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 729
    .local v6, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 731
    .restart local v5       #cipher:Ljavax/crypto/Cipher;
    const/16 v20, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 733
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    .line 734
    .restart local v14       #pInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 736
    .restart local v13       #keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 738
    .restart local v12       #keyFact:Ljava/security/KeyFactory;
    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    goto/16 :goto_d7

    .line 740
    .end local v4           #algorithm:Ljava/lang/String;
    .end local v5           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v12           #keyFact:Ljava/security/KeyFactory;
    .end local v13           #keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v14           #pInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v15           #params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v16           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v19           #secKeyFact:Ljavax/crypto/SecretKeyFactory;
    :cond_180
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->isPKCS5Scheme1(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_228

    .line 742
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    move-result-object v15

    .line 743
    .local v15, params:Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 744
    .restart local v4       #algorithm:Ljava/lang/String;
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 746
    .restart local v16       #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v19

    .line 747
    .restart local v19       #secKeyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->getSalt()[B

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 749
    .restart local v6       #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 751
    .restart local v5       #cipher:Ljavax/crypto/Cipher;
    const/16 v20, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 753
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    .line 754
    .restart local v14       #pInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 756
    .restart local v13       #keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 758
    .restart local v12       #keyFact:Ljava/security/KeyFactory;
    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    goto/16 :goto_d7

    .line 762
    .end local v4           #algorithm:Ljava/lang/String;
    .end local v5           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v12           #keyFact:Ljava/security/KeyFactory;
    .end local v13           #keySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v14           #pInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v15           #params:Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;
    .end local v16           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v19           #secKeyFact:Ljavax/crypto/SecretKeyFactory;
    :cond_228
    new-instance v20, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown algorithm: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_245} :catch_24
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_245} :catch_245

    .line 769
    .end local v2           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v9           #info:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :catch_245
    move-exception v7

    .line 771
    .local v7, e:Ljava/lang/Exception;
    new-instance v20, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "problem parsing ENCRYPTED PRIVATE KEY: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20
.end method
