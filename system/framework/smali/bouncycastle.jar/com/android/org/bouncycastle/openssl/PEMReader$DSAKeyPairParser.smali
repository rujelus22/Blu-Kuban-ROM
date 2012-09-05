.class Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;
.super Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "provider"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    .line 270
    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .registers 16
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;->readKeyPair(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 279
    .local v7, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_15

    .line 281
    new-instance v10, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v11, "malformed sequence in DSA private key"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_78

    .line 304
    .end local v7           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_13
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    throw v0

    .line 285
    .end local v0           #e:Ljava/io/IOException;
    .restart local v7       #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_15
    const/4 v10, 0x1

    :try_start_16
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 286
    .local v3, p:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 287
    .local v6, q:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 288
    .local v2, g:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 289
    .local v9, y:Lcom/android/org/bouncycastle/asn1/DERInteger;
    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 291
    .local v8, x:Lcom/android/org/bouncycastle/asn1/DERInteger;
    new-instance v4, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v4, v10, v11, v12, v13}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 294
    .local v4, privSpec:Ljava/security/spec/DSAPrivateKeySpec;
    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v5, v10, v11, v12, v13}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 298
    .local v5, pubSpec:Ljava/security/spec/DSAPublicKeySpec;
    const-string v10, "DSA"

    iget-object v11, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 300
    .local v1, fact:Ljava/security/KeyFactory;
    new-instance v10, Ljava/security/KeyPair;

    invoke-virtual {v1, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_77} :catch_13
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_77} :catch_78

    return-object v10

    .line 308
    .end local v1           #fact:Ljava/security/KeyFactory;
    .end local v2           #g:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v3           #p:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v4           #privSpec:Ljava/security/spec/DSAPrivateKeySpec;
    .end local v5           #pubSpec:Ljava/security/spec/DSAPublicKeySpec;
    .end local v6           #q:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v7           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8           #x:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .end local v9           #y:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :catch_78
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "problem creating DSA private key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method
