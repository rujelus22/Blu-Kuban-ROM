.class Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;
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
    name = "RSAPublicKeyParser"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "provider"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;->provider:Ljava/lang/String;

    .line 467
    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .registers 13
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 475
    .local v1, ais:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 476
    .local v2, asnObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object v0, v2

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v7, v0

    .line 477
    .local v7, sequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 478
    .local v6, rsaPubStructure:Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 483
    .local v5, keySpec:Ljava/security/spec/RSAPublicKeySpec;
    const-string v8, "RSA"

    iget-object v9, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;->provider:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 485
    .local v4, keyFact:Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_30
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_2e} :catch_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_4e

    move-result-object v8

    return-object v8

    .line 487
    .end local v1           #ais:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #asnObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v4           #keyFact:Ljava/security/KeyFactory;
    .end local v5           #keySpec:Ljava/security/spec/RSAPublicKeySpec;
    .end local v6           #rsaPubStructure:Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    .end local v7           #sequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_30
    move-exception v3

    .line 489
    .local v3, e:Ljava/io/IOException;
    throw v3

    .line 491
    .end local v3           #e:Ljava/io/IOException;
    :catch_32
    move-exception v3

    .line 493
    .local v3, e:Ljava/security/NoSuchProviderException;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t find provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;->provider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 495
    .end local v3           #e:Ljava/security/NoSuchProviderException;
    :catch_4e
    move-exception v3

    .line 497
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem extracting key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method
