.class Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;
.super Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "provider"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    .line 365
    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .registers 24
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;->readKeyPair(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v21

    .line 374
    .local v21, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_16

    .line 376
    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v3, "malformed sequence in RSA private key"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_ad

    .line 405
    .end local v21           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_14
    move-exception v11

    .line 407
    .local v11, e:Ljava/io/IOException;
    throw v11

    .line 380
    .end local v11           #e:Ljava/io/IOException;
    .restart local v21       #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_16
    const/4 v2, 0x1

    :try_start_17
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 381
    .local v15, mod:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 382
    .local v19, pubExp:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 383
    .local v18, privExp:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 384
    .local v16, p1:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 385
    .local v17, p2:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 386
    .local v12, exp1:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v2, 0x7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 387
    .local v13, exp2:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 389
    .local v10, crtCoef:Lcom/android/org/bouncycastle/asn1/DERInteger;
    new-instance v20, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 391
    .local v20, pubSpec:Ljava/security/spec/RSAPublicKeySpec;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 398
    .local v1, privSpec:Ljava/security/spec/RSAPrivateCrtKeySpec;
    const-string v2, "RSA"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    .line 401
    .local v14, fact:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/KeyPair;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v14, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_ac} :catch_14
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_ac} :catch_ad

    return-object v2

    .line 409
    .end local v1           #privSpec:Ljava/security/spec/RSAPrivateCrtKeySpec;
    .end local v10           #crtCoef:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v12           #exp1:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v13           #exp2:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v14           #fact:Ljava/security/KeyFactory;
    .end local v15           #mod:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v16           #p1:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v17           #p2:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v18           #privExp:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v19           #pubExp:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v20           #pubSpec:Ljava/security/spec/RSAPublicKeySpec;
    .end local v21           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_ad
    move-exception v11

    .line 411
    .local v11, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem creating RSA private key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
